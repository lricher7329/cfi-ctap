# CFI CTAP CSV Data Structure

This document describes the structure of the local CSV files in `_data/` that serve as the **single source of truth** for all proposal data.

**Query Engine**: DuckDB
**Schema Version**: 2.1
**Migration Date**: 2026-01-06
**Legacy Backup**: Google Sheets `1toKJmShkKehSk9e8p28Mp4wcAkIM8erWdfgVsauudoI` (archived)

## Key Principles

1. **CSV files are the source of truth** - All data changes happen in `_data/*.csv` files
2. **Version controlled** - Changes are tracked in git alongside documents
3. **SQL queries via DuckDB** - Use SQL for aggregations, joins, and alignment checks
4. **Include renovation costs** - New facilities require rows with `item_category = renovation`
5. **Junction tables for relationships** - Many-to-many relationships via separate CSV files

## Data Files

### 1. equipment.csv (66 rows)

Infrastructure requests by suite with costs.

| Column               | Type     | Description                                     |
| -------------------- | -------- | ----------------------------------------------- |
| id                   | int      | Primary key                                     |
| suite_numhber        | int      | 1-5                                             |
| suite_name           | text     | Suite name (lookup)                             |
| item_name            | text     | Equipment name                                  |
| description          | text     | Detailed description                            |
| model_example        | text     | Specific model/vendor                           |
| quantity             | int      | Number of units                                 |
| unit_cost            | currency | Per-unit cost                                   |
| total_cost           | currency | Calculated: quantity × unit_cost               |
| vendor               | text     | Supplier name                                   |
| quote_status         | text     | needed, requested, received, not_required       |
| quote_file           | text     | Path to quote file                              |
| dimensions           | text     | L × W × H                                     |
| weight_kg            | number   | Weight in kg                                    |
| power_requirements   | text     | Voltage, amps, phase                            |
| special_requirements | text     | Cooling, BSL, etc.                              |
| space_id             | int      | FK to spaces                                    |
| installation_status  | text     | Installation notes                              |
| justification        | text     | Research justification                          |
| status               | text     | confirmed, pending, suggested, flagged, removed |
| flag_reason          | text     | Reason if flagged                               |
| item_category        | text     | equipment, renovation, software, service        |

**Item Category Reference:**

- `equipment` = Physical lab/clinical equipment
- `renovation` = Construction, fit-out, HVAC upgrades
- `software` = Licenses, cloud credits, subscriptions
- `service` = Development, integration, training (one-time)

---

### 2. participants.csv (39 rows)

Team members, roles, expertise, and letter of support status.

| Column                   | Type | Description                                        |
| ------------------------ | ---- | -------------------------------------------------- |
| id                       | int  | Primary key                                        |
| name                     | text | Full name                                          |
| title                    | text | Academic/professional title                        |
| affiliation              | text | Institution name                                   |
| department               | text | Department/pillar                                  |
| email                    | text | Contact email                                      |
| role                     | text | PI, Co-PI, Co-I, Collaborator, HQP, Staff, Advisor |
| expertise_areas          | text | Comma-separated keywords                           |
| equipment_expertise      | text | Equipment they can operate                         |
| science_contribution     | text | How they contribute to objectives                  |
| edi_category             | text | Indigenous, Early Career, etc.                     |
| letter_of_support_status | text | pending, requested, received, not_required         |
| cv_file                  | text | Path or link to CV                                 |
| status                   | text | confirmed, pending, suggested, declined            |
| notes                    | text | Additional notes                                   |
| created_at               | date | Creation date                                      |
| updated_at               | date | Last update date                                   |

---

### 3. objectives.csv (8 rows)

Core research objectives with success metrics.

| Column            | Type | Description                |
| ----------------- | ---- | -------------------------- |
| id                | int  | Primary key                |
| objective_number  | int  | 1-8 (display order)        |
| title             | text | Short title                |
| description       | text | Full description           |
| flagship_program  | text | Associated flagship        |
| expected_outcomes | text | What we'll achieve         |
| success_metrics   | text | How we measure success     |
| target_date       | text | e.g., "By 2031"            |
| status            | text | draft, finalized, achieved |

---

### 4. spaces.csv (9 rows)

Physical spaces and renovation requirements.

| Column             | Type   | Description                        |
| ------------------ | ------ | ---------------------------------- |
| space_id           | int    | Primary key                        |
| space_name         | text   | Descriptive name                   |
| function           | text   | Space function                     |
| building           | text   | Building name                      |
| building_number    | text   | Building ID                        |
| room_numbers       | text   | Room identifiers                   |
| area_sqft          | number | Square feet                        |
| status             | text   | existing, new_required, renovation |
| responsible_pi     | text   | Contact person                     |
| equipment_category | text   | Equipment type housed              |
| notes              | text   | Additional notes                   |

---

### 5. budget_items.csv (82 rows)

Comprehensive budget tracking with capital costs and O&M projections.

| Column         | Type     | Description                                  |
| -------------- | -------- | -------------------------------------------- |
| id             | int      | Primary key                                  |
| category       | text     | equipment, renovation, software, service, om |
| equipment_id   | int      | FK to equipment (blank for O&M)              |
| suite          | int      | Suite number (1-5)                           |
| description    | text     | Item description                             |
| amount         | currency | Cost                                         |
| funding_source | text     | CFI/institutional, institutional             |
| year           | int      | 0 = capital; 1-5 = O&M years                 |
| status         | text     | estimated, quoted, committed, spent          |
| om_rate        | text     | Annual O&M rate (for O&M rows)               |
| notes          | text     | Additional notes                             |

**O&M Rates by Suite:**

| Suite               | Rate | Rationale                          |
| ------------------- | ---- | ---------------------------------- |
| 1 - Clinical Trials | 5%   | Standard clinical equipment        |
| 2 - Biorepository   | 6%   | Cell manufacturing consumables     |
| 3 - Translational   | 7%   | High-end analytical instruments    |
| 4 - Data Platform   | 12%  | Computing infrastructure, licenses |
| 5 - Innovation      | 8%   | Wearables, software                |

---

### 6. equipment_objectives.csv (77 rows)

Junction table linking equipment to objectives.

| Column            | Type | Description                      |
| ----------------- | ---- | -------------------------------- |
| equipment_id      | int  | FK to equipment                  |
| objective_id      | int  | FK to objectives                 |
| usage_description | text | How equipment supports objective |

---

### 7. participant_objectives.csv (45 rows)

Junction table linking participants to objectives.

| Column                   | Type | Description                                  |
| ------------------------ | ---- | -------------------------------------------- |
| participant_id           | int  | FK to participants                           |
| objective_id             | int  | FK to objectives                             |
| role                     | text | lead, co-lead, contributor, advisor, trainee |
| contribution_description | text | Specific contribution                        |

---

### 8. _lookups.csv (8 rows)

Reference data for dropdown validation.

| Column        | Values                                                    |
| ------------- | --------------------------------------------------------- |
| roles         | PI, Co-PI, Co-I, Collaborator, HQP, Staff, Advisor        |
| statuses      | confirmed, pending, suggested, declined, flagged, removed |
| suites        | 1, 2, 3, 4, 5                                             |
| categories    | equipment, renovation, om, service, personnel, other      |
| biosafety     | BSL-1, BSL-2, BSL-3, GMP, Standard                        |
| los_status    | pending, requested, received, not_required                |
| relationships | operator, supervisor, user, trainer, maintainer           |

---

## SQL Views

Defined in `sync/dependency_graph.json` under `sql_views`:

### v_funding_summary

Suite budget totals for `includes/funding_summary.md`:

```sql
SELECT suite_number, suite_name, SUM(total_cost) as cfi_request
FROM equipment
WHERE status = 'confirmed'
GROUP BY suite_number, suite_name
ORDER BY suite_number
```

### v_alignment_gaps

Objectives without equipment or participants:

```sql
SELECT o.*
FROM objectives o
LEFT JOIN equipment_objectives eo ON o.id = eo.objective_id
WHERE eo.equipment_id IS NULL
```

### v_orphaned_equipment

Equipment not linked to any objective:

```sql
SELECT e.*
FROM equipment e
LEFT JOIN equipment_objectives eo ON e.id = eo.equipment_id
WHERE eo.objective_id IS NULL
```

### v_objective_coverage

Equipment count per objective:

```sql
SELECT o.objective_number, o.title, COUNT(eo.equipment_id) as equipment_count
FROM objectives o
LEFT JOIN equipment_objectives eo ON o.id = eo.objective_id
GROUP BY o.id, o.objective_number, o.title
```

### v_renovation_costs

Renovation costs by suite:

```sql
SELECT suite_number, suite_name, SUM(total_cost) as renovation_total
FROM equipment
WHERE item_category = 'renovation'
GROUP BY suite_number, suite_name
```

---

## Common Queries

### Budget by Suite

```sql
SELECT
  suite_number,
  suite_name,
  SUM(total_cost) as total,
  SUM(total_cost) * 0.4 as cfi_request,
  SUM(total_cost) * 0.6 as institutional_match
FROM equipment
WHERE status = 'confirmed'
GROUP BY suite_number, suite_name
ORDER BY suite_number
```

### Equipment by Category

```sql
SELECT
  item_category,
  COUNT(*) as items,
  SUM(total_cost) as total
FROM equipment
WHERE status = 'confirmed'
GROUP BY item_category
```

### Participant Roles

```sql
SELECT
  role,
  COUNT(*) as count
FROM participants
WHERE status = 'confirmed'
GROUP BY role
ORDER BY count DESC
```

### LOS Status Summary

```sql
SELECT
  letter_of_support_status,
  COUNT(*) as count
FROM participants
WHERE status = 'confirmed'
GROUP BY letter_of_support_status
```

### Objectives with Equipment Coverage

```sql
SELECT
  o.objective_number,
  o.title,
  COUNT(DISTINCT eo.equipment_id) as equipment_count,
  COUNT(DISTINCT po.participant_id) as participant_count
FROM objectives o
LEFT JOIN equipment_objectives eo ON o.id = eo.objective_id
LEFT JOIN participant_objectives po ON o.id = po.objective_id
GROUP BY o.id, o.objective_number, o.title
ORDER BY o.objective_number
```

---

## Editing CSV Files

### In VS Code

CSV files can be edited directly in VS Code. Use the "Rainbow CSV" extension for column highlighting.

### In Excel/Numbers

Open CSV files in Excel or Numbers for spreadsheet editing. Save as CSV (UTF-8) when done.

### Via DuckDB CLI

```bash
# Start DuckDB CLI
duckdb

# Read and query
SELECT * FROM read_csv_auto('_data/equipment.csv') LIMIT 5;

# Update (creates new CSV)
COPY (
  SELECT * FROM read_csv_auto('_data/equipment.csv')
  WHERE status != 'removed'
) TO '_data/equipment.csv' (HEADER);
```

---

## Migration Notes

- **Migrated from**: Google Sheets `CFI_CTAP_Data`
- **Migration date**: 2026-01-06
- **Sheet ID (archived)**: `1toKJmShkKehSk9e8p28Mp4wcAkIM8erWdfgVsauudoI`
- **Participant_Equipment tab**: Not migrated (empty in source)

The Google Sheet remains available as a backup but is no longer the source of truth.
