# CFI CTAP Data Files

Local CSV files serving as the source of truth for the CFI-CTAP project. Query using DuckDB via the grant-data MCP server.

## Tables

| Table | Description |
|-------|-------------|
| `equipment.csv` | Equipment items with costs, quantities, vendors |
| `objectives.csv` | Research objectives |
| `participants.csv` | Team members and collaborators |
| `spaces.csv` | Physical spaces and facilities |
| `budget_items.csv` | O&M and other budget line items |
| `equipment_objectives.csv` | Junction: equipment-objective mapping |
| `participant_objectives.csv` | Junction: participant-objective mapping |
| `participant_equipment.csv` | Junction: participant-equipment mapping |
| `equipment_files.csv` | Junction: equipment-file mapping (quotes, diagrams, plans) |

## Computed Fields

### equipment.total_cost

**IMPORTANT:** The `total_cost` column in `equipment.csv` is computed dynamically from:

```
total_cost = quantity * unit_cost
```

When querying via the DuckDB MCP server, this calculation is performed automatically. The stored `total_cost` value in the CSV is for reference only and may become stale if `quantity` or `unit_cost` are edited.

**When editing equipment.csv:**
- Update `quantity` or `unit_cost` as needed
- The `total_cost` column will be recomputed on next query
- No need to manually calculate or update `total_cost`

## SQL Views

See `views.sql` for pre-built queries supporting:
- Funding summaries by suite
- Alignment checks (orphaned equipment, objectives without equipment)
- Renovation analysis
- O&M projections
- Team analysis
- Space utilization
- Quote status tracking
- Compliance checks

## Usage

### Via Python

```python
from grant_data_duckdb import ProjectData

project = ProjectData('/path/to/projects/cfi-ctap')

# Query with computed totals
result = project.query('''
    SELECT suite_name, SUM(total_cost) as total
    FROM equipment
    WHERE status = 'confirmed'
    GROUP BY suite_name
''')
```

### Via MCP Server

The grant-data MCP server provides tools for:
- `query` - Run SQL against CSV files
- `list_tables` - Show available tables
- `describe_table` - Show column schema
- `add_row`, `update_rows`, `delete_rows` - Modify data

## Data Integrity

Junction tables maintain relationships:
- Every equipment item SHOULD link to at least one objective
- Every objective SHOULD have supporting equipment and participants
- Run `/cfi-align` to check for gaps

## File Tracking

The `equipment_files.csv` junction table links equipment items to supporting documents.

### File Types

| file_type | Description | Directory |
|-----------|-------------|-----------|
| `quote` | Vendor quotations | `files/quotes/` |
| `space_diagram` | Floor plans, room layouts | `files/spaces/` |
| `renovation_plan` | Construction/renovation documents | `files/renovations/` |

### Schema

```csv
equipment_id,file_type,file_path,vendor,date_received,notes
9,quote,quotes/bioreactor_cytiva_2024.pdf,Cytiva,2024-11-15,Initial quote
9,quote,quotes/bioreactor_miltenyi_2024.pdf,Miltenyi,2024-11-20,Competitive quote
9,space_diagram,spaces/suite2_cleanroom_layout.pdf,,2024-10-01,Architect v2
```

### Adding Files

1. Save the file to the appropriate `files/` subdirectory
2. Add a row to `equipment_files.csv` linking the equipment_id to the file

### SQL Views for Files

- `v_equipment_files` - All files linked to equipment
- `v_quote_files` - Quote files for items >$50K
- `v_space_files` - Space diagrams and renovation plans
- `v_file_coverage` - Equipment with/without required files
- `v_missing_files` - Items needing quotes or other files

### Example Query

```sql
-- Find equipment items >$50K without quotes
SELECT e.item_name, e.total_cost
FROM equipment e
LEFT JOIN equipment_files ef ON e.id = ef.equipment_id AND ef.file_type = 'quote'
WHERE e.status = 'confirmed'
  AND e.total_cost > 50000
  AND ef.equipment_id IS NULL
ORDER BY e.total_cost DESC
```
