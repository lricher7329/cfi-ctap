# CFI CTAP Project - Claude Code Instructions

## Current Status

**Version**: RTA v6 (2026-01-25)
**Stage**: RTA Submitted — Preparing for Full Application
**Total Budget**: $8,318,879 CAD

---

## Document Hierarchy

### 1. Core Documents (Sources of Truth for Development)

Edit these files when developing content:

| Category | Path | Purpose |
|----------|------|---------|
| **MASTER.md** | `core/MASTER.md` | Strategic arguments, benefits, EDI, competitive positioning |
| **Suite 1** | `core/suites/suite_1_clinical_trials_infrastructure.md` | Clinical trials infrastructure |
| **Suite 1a** | `core/suites/suite_1a_challenge_trial_unit.md` | CHIM facility (non-airborne) |
| **Suite 2** | `core/suites/suite_2_living_biorepository.md` | Biospecimen management |
| **Suite 3** | `core/suites/suite_3_translational_science.md` | Lab integration |
| **Suite 4** | `core/suites/suite_4_data_platform.md` | TRE, CRAIDL, Amii partnership |
| **Suite 5** | `core/suites/suite_5_remote_decentralized_trials.md` | Remote trial tools |

### 2. Core Data (Source of Truth for Budget/Equipment)

| File | Path | Purpose |
|------|------|---------|
| Budget Items | `core/data/budget_items.csv` | O&M and budget line items |
| Equipment | `core/data/equipment.csv` | Equipment, costs, vendors |
| Participants | `core/data/participants.csv` | Team members and collaborators |
| Spaces | `core/data/spaces.csv` | Physical facilities and rooms |
| Objectives | `core/data/objectives.csv` | Research objectives |
| Views | `core/data/views.sql` | Pre-built SQL queries |

### 3. RTA Submission Documents (Google Workspace = Ground Truth)

**Google Docs/Sheets are the submitted ground truth for the RTA.**

| Document | Google Doc/Sheet ID | Markdown Mirror |
|----------|---------------------|-----------------|
| Research Plan | `1iuEJfiDXvEGg8wC_iEVdJJ-mLTuHryA1ePOECu7aJ_c` | `derived/rta/research-plan.md` |
| Infrastructure | `1bE3fYvLPeIBBN1Dpn2Wu8kF4IOiKg5dMySLk24_i_mU` | `derived/rta/infrastructure.md` |
| Benefits | `1fLuliO3XLwZ15VP-_0DyTodJtCvRpaiUDO-RodPx11U` | `derived/rta/benefits.md` |
| Sustainability | `1nu4g1UwBguojD_Behz4K41GE-9riSIdMtm8r_RPVv3w` | `derived/rta/sustainability.md` |
| Research Team | `1s2Utsa0F0crQWM3MPE59TyOFkIS7x3CDOSQ79mQ3pNw` | `derived/rta/research-team.md` |
| Equipment Data | `1ITVovyok7si8dIRz07Vi9J3R0IoWjP6-3ueqgA5Xnko` | `derived/rta/equipment-data.md` |
| Budget | `1IQwHSe_SD0P3FtgoygfZW_4MEctD8MkUQed_kHu7Pbg` | `derived/rta/budget.md` |

### 4. Derived RTA Documents

Markdown mirrors of Google Docs for easy editing and version control:

| File | Purpose |
|------|---------|
| `derived/rta/rta.md` | Index document with strategic alignment, objectives, budget summary |
| `derived/rta/research-plan.md` | Research plan mirror |
| `derived/rta/infrastructure.md` | Infrastructure justification mirror |
| `derived/rta/benefits.md` | Benefits mirror |
| `derived/rta/sustainability.md` | Sustainability mirror |
| `derived/rta/research-team.md` | Research team mirror |
| `derived/rta/equipment-data.md` | Equipment data mirror |
| `derived/rta/budget.md` | Budget summary mirror |
| `derived/rta/exports/` | DOCX, XLSX exports |

### 5. Archive (Superseded Documents)

| Folder | Contents |
|--------|----------|
| `archive/rta-versions/` | Old RTA versions (v2-v6) |
| `archive/briefs/` | Old stakeholder briefs |
| `archive/includes/` | Old include fragments |

---

## Workflow

### For RTA (Submitted)

**Google Docs/Sheets are ground truth.** Markdown mirrors are for reference and future editing.

1. To update content: Edit Google Doc → Pull to markdown mirror
2. For major revisions: Edit markdown → Push to Google Doc

### For Full Application (Future)

1. Start from core documents (MASTER.md, suites, data CSVs)
2. Generate full application documents from core
3. Maintain Google Workspace as submission ground truth

---

## Google Workspace File Naming

Files follow: `Richer_<Document-Type>_YYYY-MM-DD`

When updating content, rename file to reflect current date.

---

## Budget Summary

| Suite | Name | Budget |
|-------|------|--------|
| 1 | Clinical Trials Infrastructure | $1,640,000 |
| 1a | - Challenge Trial Unit (non-airborne) | $340,000 |
| 2 | Living Biorepository | $2,510,000 |
| 3 | Translational Integration Hub | $555,000 |
| 4 | Data Platform & AI/HPC | $1,988,000 |
| 4B | - Amii CRAIDL Partnership | $650,000 |
| 5 | Trial Innovation Tools | $376,000 |
| **Total** | | **$8,318,879** |

---

## Key Technical Specifications

### Challenge Trial Unit (Suite 1a) - Non-Airborne Design

- **Pathogens**: HCV (blood-borne), enteric pathogens
- **Containment**: BSL-2 standard
- **Budget**: $340,000

### Amii CRAIDL Partnership (Suite 4B)

- **FTE Allocation**: 2.0 FTE Amii staff + 1.0 FTE graduate students
- **Acceleration**: 6-9 months per CRAIDL agent
- **Budget**: $650,000

---

## Common Tasks

### Sync Google Doc to Markdown

```bash
# Use MCP tool to fetch Google Doc content
mcp__google-workspace__get_document_content <doc_id>
# Then update corresponding derived/rta/*.md file
```

### Adding Equipment

1. Add row to `core/data/equipment.csv`
2. Update relevant suite in `core/suites/`
3. Update Google Sheet (Equipment Data)
4. Update markdown mirror if needed

### Preparing for Full Application

1. Review and update core documents (MASTER.md, suites)
2. Ensure core/data CSVs are current
3. Generate full application documents from core
4. Create new Google Docs for full application submission
