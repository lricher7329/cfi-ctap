# CFI CTAP Google Sheets Structure

This document describes the structure for the collaborative Google Sheet `CFI_CTAP_Data`.

**This is the single source of truth for all equipment, costs, participants, and spaces.**

## Key Principles

1. **All cost changes must be made in Google Sheets first** - Never update costs in markdown documents directly
2. **Include renovation costs** - New facilities (e.g., Vaccine Challenge Unit, Pediatric Rare Disease Unit) require renovation line items in the Equipment sheet with `Item_Category = renovation`
3. **Track spaces separately** - The Spaces sheet captures renovation requirements and Letter of Support status
4. **Derived documents pull from here** - The `includes/funding_summary.md` and budget sections in briefs/RTA are generated from this data

## Creating the Sheet

1. Go to [Google Sheets](https://sheets.google.com)
2. Create a new blank spreadsheet
3. Rename it to `CFI_CTAP_Data`
4. Create the tabs listed below

## Sheet Tabs

### 1. Participants

| Column | Header | Data Validation | Notes |
|--------|--------|-----------------|-------|
| A | ID | Auto-increment | Start at 1 |
| B | Name | Required | Full name |
| C | Title | Text | Academic/professional title |
| D | Role | Dropdown: PI, Co-PI, Co-I, Collaborator, HQP, Staff, Advisor | Required |
| E | Affiliation | Text | Institution name |
| F | Department | Text | Department/pillar |
| G | Email | Email format | Optional |
| H | Expertise_Areas | Text | Comma-separated keywords |
| I | Equipment_Expertise | Text | Equipment they can operate |
| J | Science_Contribution | Text | How they contribute to objectives |
| K | EDI_Category | Text | Indigenous, Early Career, etc. |
| L | LOS_Status | Dropdown: pending, requested, received, not_required | Default: pending |
| M | CV_File | Text | Path or link to CV |
| N | Status | Dropdown: confirmed, pending, suggested, declined | Default: confirmed |
| O | Notes | Text | Additional notes |
| P | Created | Date | Auto-fill on creation |
| Q | Updated | Date | Auto-update on edit |

---

### 2. Equipment

| Column | Header | Data Validation | Notes |
|--------|--------|-----------------|-------|
| A | ID | Auto-increment | Start at 1 |
| B | Suite_Number | Dropdown: 1, 2, 3, 4, 5 | Required |
| C | Suite_Name | Lookup from Suite_Number | Auto-fill based on B |
| D | Item_Name | Required | Equipment name |
| E | Description | Text | Detailed description |
| F | Model_Example | Text | Specific model/vendor |
| G | Quantity | Number >= 1 | Default: 1 |
| H | Unit_Cost | Currency | Per-unit cost |
| I | Total_Cost | Formula: =G*H | Auto-calculate |
| J | Vendor | Text | Supplier name |
| K | Quote_Status | Dropdown: needed, requested, received, not_required | Default: needed |
| L | Dimensions | Text | L x W x H |
| M | Weight_kg | Number | Weight in kg |
| N | Power_Requirements | Text | Voltage, amps, phase |
| O | Special_Requirements | Text | Cooling, BSL, etc. |
| P | Space_ID | Number | Reference to Spaces.ID |
| Q | Justification | Text | Research justification |
| R | Status | Dropdown: confirmed, pending, suggested, flagged, removed | Default: confirmed |
| S | Notes | Text | Additional notes |
| T | Created | Date | Auto-fill |
| U | Updated | Date | Auto-update |
| V | Item_Category | Dropdown: equipment, renovation, software, service | Categorizes item type for budget reporting |

**Item Category Reference:**
- `equipment` = Physical lab/clinical equipment
- `renovation` = Construction, fit-out, HVAC upgrades
- `software` = Licenses, cloud credits, subscriptions
- `service` = Development, integration, training (one-time)

**Suite Names Reference:**
- 1 = Clinical Trials Participant & Procedure Infrastructure
- 2 = Biospecimen & Cell Manufacturing
- 3 = Translational Science Integration
- 4 = Data Platform, Secure Environments, AI/HPC
- 5 = Trial Innovation Tools & Wearables

---

### 3. Spaces

| Column | Header | Data Validation | Notes |
|--------|--------|-----------------|-------|
| A | ID | Auto-increment | Start at 1 |
| B | Building | Required | Building name |
| C | Room_Number | Text | Room identifier |
| D | Room_Name | Text | Descriptive name |
| E | Floor | Text | Floor level |
| F | Floor_Area_sqm | Number | Square meters |
| G | Available_Power | Text | Power capacity |
| H | HVAC_Notes | Text | Cooling/ventilation |
| I | Biosafety_Level | Dropdown: BSL-1, BSL-2, BSL-3, GMP, Standard | |
| J | Renovation_Required | Checkbox | TRUE/FALSE |
| K | Renovation_Description | Text | What needs to be done |
| L | Renovation_Cost | Currency | Estimated cost |
| M | Space_Planner | Text | Contact person |
| N | Faculty_Dean | Text | For LOS |
| O | LOS_Status | Dropdown: pending, requested, received | Default: pending |
| P | LOS_File | Text | Link to signed LOS |
| Q | Status | Dropdown: confirmed, pending, suggested, unavailable | Default: pending |
| R | Notes | Text | Additional notes |
| S | Created | Date | Auto-fill |

---

### 4. Objectives

| Column | Header | Data Validation | Notes |
|--------|--------|-----------------|-------|
| A | ID | Auto-increment | 1-7 |
| B | Objective_Number | Number 1-7 | Required, unique |
| C | Title | Required | Short title |
| D | Description | Text | Full description |
| E | Flagship_Program | Text | Which flagship |
| F | Expected_Outcomes | Text | What we'll achieve |
| G | Success_Metrics | Text | How we measure success |
| H | Target_Date | Text | e.g., "By 2031" |
| I | Status | Dropdown: draft, finalized, achieved | Default: draft |

---

### 5. Budget_Items

Comprehensive budget tracking with capital costs and O&M projections.

| Column | Header | Data Validation | Notes |
|--------|--------|-----------------|-------|
| A | ID | Auto-increment | Start at 1 |
| B | Category | Dropdown: equipment, renovation, software, service, om | Required |
| C | Equipment_ID | Number | Reference to Equipment.ID (blank for O&M) |
| D | Suite | Number 1-5 | Suite number |
| E | Description | Text | Item description |
| F | Amount | Currency | Cost |
| G | Funding_Source | Dropdown: CFI/institutional, institutional | Capital = CFI/institutional (40/60 split); O&M = institutional |
| H | Year | Number | 0 = capital; 1-5 = O&M years |
| I | Status | Dropdown: estimated, quoted, committed, spent | Default: estimated |
| J | O&M_Rate | Percentage | Annual O&M rate (for O&M rows) |
| K | Notes | Text | Additional notes |

**Current Data (82 rows):**
- 57 capital items (from Equipment sheet, categorized)
- 25 O&M projections (5 suites × 5 years)

**O&M Rates by Suite:**
| Suite | Rate | Rationale |
|-------|------|-----------|
| 1 - Clinical Trials | 5% | Standard clinical equipment |
| 2 - Biorepository | 6% | Cell manufacturing consumables |
| 3 - Translational | 7% | High-end analytical instruments |
| 4 - Data Platform | 12% | Computing infrastructure, licenses |
| 5 - Innovation | 8% | Wearables, software |

**Budget Summary:**
- Total Capital: ~$11.16M
- Total O&M (5 years): ~$4.23M
- CFI Request (40%): ~$4.46M
- Institutional Match (60% + O&M): ~$10.93M

---

### 6. Participant_Equipment (Relationship)

| Column | Header | Notes |
|--------|--------|-------|
| A | Participant_ID | Reference to Participants.ID |
| B | Equipment_ID | Reference to Equipment.ID |
| C | Relationship | Dropdown: operator, supervisor, user, trainer, maintainer |

---

### 7. Participant_Objectives (Relationship)

| Column | Header | Notes |
|--------|--------|-------|
| A | Participant_ID | Reference to Participants.ID |
| B | Objective_ID | Reference to Objectives.ID |
| C | Role | Dropdown: lead, co-lead, contributor, advisor, trainee |
| D | Contribution_Description | Text |

---

### 8. Equipment_Objectives (Relationship)

| Column | Header | Notes |
|--------|--------|-------|
| A | Equipment_ID | Reference to Equipment.ID |
| B | Objective_ID | Reference to Objectives.ID |
| C | Usage_Description | Text |

---

### 9. AI_Suggestions

| Column | Header | Data Validation | Notes |
|--------|--------|-----------------|-------|
| A | ID | Auto-increment | Start at 1 |
| B | Type | Dropdown: equipment, participant, expertise_gap, cost_estimate, space, alignment | |
| C | Target_Table | Text | Which table this affects |
| D | Target_ID | Number | ID in target table |
| E | Suggestion | Text | The recommendation |
| F | Rationale | Text | Why suggested |
| G | Source | Dropdown: web_search, world_knowledge, analysis, user | |
| H | Confidence | Dropdown: high, medium, low | |
| I | Estimated_Cost | Currency | If applicable |
| J | Status | Dropdown: pending, accepted, rejected, reviewed | Default: pending |
| K | Reviewed_By | Text | Who reviewed |
| L | Reviewed_At | DateTime | When reviewed |
| M | Action_Taken | Text | What was done |
| N | Created | Date | Auto-fill |

---

### 10. _Lookups (Reference Data)

Create columns for each lookup list:

| A: Roles | B: Statuses | C: Suites | D: Categories | E: Biosafety | F: LOS_Status | G: Relationships |
|----------|-------------|-----------|---------------|--------------|---------------|------------------|
| PI | confirmed | 1 | equipment | BSL-1 | pending | operator |
| Co-PI | pending | 2 | renovation | BSL-2 | requested | supervisor |
| Co-I | suggested | 3 | om | BSL-3 | received | user |
| Collaborator | declined | 4 | service | GMP | not_required | trainer |
| HQP | flagged | 5 | personnel | Standard | | maintainer |
| Staff | removed | | other | | | |
| Advisor | | | | | | |

---

### 11. Suite-Specific Views (Recommended)

Create filtered views for easier suite-by-suite planning:

| Sheet Name | Filter Criteria | Purpose |
|------------|-----------------|---------|
| `Suite_1_Clinical_Trials` | Equipment where suite_number=1 | Clinical trials infrastructure budget & items |
| `Suite_2_Biorepository` | Equipment where suite_number=2 | Biorepository & cell manufacturing |
| `Suite_3_Translational` | Equipment where suite_number=3 | Translational science equipment |
| `Suite_4_Data_Platform` | Equipment where suite_number=4 | Data platform, AI/HPC equipment |
| `Suite_5_Innovation` | Equipment where suite_number=5 | Trial innovation & wearables |

**Creating Suite Sheets:**

1. Create a new sheet named `Suite_1_Clinical_Trials`
2. Add header row: `ID | Item Name | Model/Vendor | Qty | Unit Cost | Total Cost`
3. Use FILTER or QUERY formula to pull from Equipment:
   ```
   =QUERY(Equipment!A:U, "SELECT A, D, F, G, H, I WHERE B = 1 AND T = 'confirmed'", 1)
   ```
4. Add budget subtotal at top using SUMIFS
5. Repeat for Suites 2-5

These sheets provide quick reference for suite-specific planning and budget tracking.

---

### 12. _Dashboard (Summary View)

Create a dashboard with these formulas:

```
=== BUDGET SUMMARY ===
Equipment Total:    =SUMIF(Equipment!R:R, "confirmed", Equipment!I:I)
CFI Request (40%):  =B2*0.4
Matching (60%):     =B2*0.6

=== BY SUITE ===
Suite 1:  =SUMIFS(Equipment!I:I, Equipment!B:B, 1, Equipment!R:R, "confirmed")
Suite 2:  =SUMIFS(Equipment!I:I, Equipment!B:B, 2, Equipment!R:R, "confirmed")
Suite 3:  =SUMIFS(Equipment!I:I, Equipment!B:B, 3, Equipment!R:R, "confirmed")
Suite 4:  =SUMIFS(Equipment!I:I, Equipment!B:B, 4, Equipment!R:R, "confirmed")
Suite 5:  =SUMIFS(Equipment!I:I, Equipment!B:B, 5, Equipment!R:R, "confirmed")

=== TEAM ===
Total Participants: =COUNTA(Participants!B:B)-1
PIs:               =COUNTIF(Participants!D:D, "PI")
Co-PIs:            =COUNTIF(Participants!D:D, "Co-PI")
Co-Is:             =COUNTIF(Participants!D:D, "Co-I")

=== STATUS ===
Confirmed Equipment:  =COUNTIF(Equipment!R:R, "confirmed")
Pending Equipment:    =COUNTIF(Equipment!R:R, "pending")
Suggested Equipment:  =COUNTIF(Equipment!R:R, "suggested")

=== LOS STATUS ===
Participant LOS Pending:  =COUNTIF(Participants!L:L, "pending")
Participant LOS Received: =COUNTIF(Participants!L:L, "received")
Space LOS Pending:        =COUNTIF(Spaces!O:O, "pending")
Space LOS Received:       =COUNTIF(Spaces!O:O, "received")

=== ALIGNMENT GAPS ===
Objectives without Equipment: =7-COUNTUNIQUE(Equipment_Objectives!B:B)
Equipment without Justification: =COUNTBLANK(Equipment!Q:Q)
Pending AI Suggestions: =COUNTIF(AI_Suggestions!J:J, "pending")
```

---

## Conditional Formatting Rules

Apply to each core data sheet:

1. **Status = 'pending' or 'suggested'**
   - Background: Light red (#FFCDD2)
   - Apply to: Status column

2. **LOS_Status = 'pending'**
   - Background: Light yellow (#FFF9C4)
   - Apply to: LOS_Status column

3. **Status = 'confirmed'**
   - Background: Light green (#C8E6C9)
   - Apply to: Status column

4. **Total_Cost > $500,000**
   - Background: Light blue (#BBDEFB)
   - Apply to: Total_Cost column in Equipment

---

## Data Validation Setup

For each dropdown field:
1. Select the column (e.g., D:D for Role in Participants)
2. Data → Data validation
3. Criteria: List from a range
4. Range: `_Lookups!A:A` (or appropriate column)
5. Check "Show dropdown list in cell"
6. Check "Reject input" for strict validation

---

## Sharing Settings

1. Click "Share" button
2. Add team members with "Editor" access
3. Add service account email (from credentials.json) with "Editor" access for Claude integration

---

## After Creating the Sheet

1. Enter data directly in Google Sheets or use Google Sheets MCP via Claude Code
2. Share the Sheet ID with Claude for MCP configuration
3. Test read/write with Google Sheets MCP tools
