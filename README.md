# CFI CTAP Project

## Clinical Trials Acceleration Platform (CTAP)

**Funding Agency**: Canada Foundation for Innovation (CFI)
**Program**: Innovation Fund 2027 (IF2027)
**Total Request**: $11,591,000 CAD (40% CFI + 60% matching)
**PI**: Lawrence Richer, University of Alberta
**Anchor**: Dianne and Irving Kipnes Health Research Institute

---

## Document Architecture

This project follows a **core-to-derived document model**. Understanding this hierarchy is essential for maintaining consistency.

### Sources of Truth (Core Documents)

These are the authoritative sources. All other documents derive from them.

| Source | Location | What It Contains |
|--------|----------|------------------|
| **Local CSV Data** | `_data/*.csv` | Equipment lists, costs, participants, objectives, spaces |
| **MASTER.md** | `MASTER.md` | Strategic arguments, competitive positioning, benefits, EDI |
| **Suite Documents** | `suites/*.md` | Technical specifications for each infrastructure suite |
| **context.yaml** | `config/context.yaml` | Flagship programs, institutional context |

### Derived Documents (Outputs)

These documents are **generated from core documents** and should only be updated when specifically requested. Do not edit these directly unless incorporating manual improvements that should then be propagated back to core documents.

| Document Type | Location | Generated From |
|---------------|----------|----------------|
| **Include Fragments** | `includes/*.md` | MASTER.md sections, CSV data |
| **RTA** | `rta/rta.md` | MASTER.md (condensed), includes |
| **Briefs** | `briefs/*.md` | MASTER.md, includes |
| **Full Application** | `full_app/` | Future: expanded from RTA |

### Document Flow

```
┌─────────────────────────────────────────────────────────────────┐
│              SOURCES OF TRUTH (Edit These)                       │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐           │
│  │ _data/*.csv  │  │  MASTER.md   │  │ suites/*.md  │           │
│  │ (equipment,  │  │ (strategy,   │  │ (technical   │           │
│  │  costs)      │  │  arguments)  │  │  specs)      │           │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘           │
└─────────┼─────────────────┼─────────────────┼───────────────────┘
          │                 │                 │
          ▼                 ▼                 ▼
┌─────────────────────────────────────────────────────────────────┐
│              DERIVED DOCUMENTS (Generate on Request)             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐           │
│  │ includes/*.md│  │   rta/rta.md │  │  briefs/*.md │           │
│  │ (fragments)  │  │ (application)│  │ (summaries)  │           │
│  └──────────────┘  └──────────────┘  └──────────────┘           │
└─────────────────────────────────────────────────────────────────┘
```

### Critical Rules

1. **Local CSV files are the source of truth for equipment and costs** - When equipment is added, modified, or dropped, update `_data/*.csv` files FIRST. Include renovation costs for new facilities (e.g., Vaccine Challenge Unit). Use DuckDB for SQL queries.

2. **MASTER.md is the source of truth for strategic content** - All arguments, positioning, benefits, and EDI content live here at full development (no page limits).

3. **Derived documents are outputs, not sources** - Include files, briefs, and RTA are generated from core documents. Only regenerate when specifically requested.

4. **Manual improvements flow back to core** - If you manually improve a brief or RTA section, propagate those improvements back to MASTER.md and includes so future generations include them.

---

## Suite Architecture

CTAP operates through **5 integrated infrastructure suites**, each addressing a critical capability gap:

| Suite | Name | CFI Request | Focus |
|-------|------|-------------|-------|
| 1 | Clinical Trials Participant & Procedure Infrastructure | $2,904,000 | Physical trial spaces, monitoring, pharmacy, autonomic labs |
| 2 | Living Biorepository | $3,860,000 | Biospecimens, GMP cell therapy, OpenSpecimen |
| 3 | Translational Science Integration | $1,480,000 | Cryo-EM prep, metabolomics, cold-chain |
| 4 | Data Platform, Secure Environments, AI/HPC | $2,805,000 | TRE, OMOP, CRAIDL, GPU compute |
| 5 | Trial Innovation Tools & Wearables | $1,056,000 | eConsent, wearables, device validation |

**Note**: Budget figures from `_data/equipment.csv`. Includes renovation costs for new facilities.

### Suite Interdependencies

```
Suite 4 (Data Platform) ←── Central backbone connecting all suites
    ↑
    ├── Suite 1 (Clinical Trials) → Patient data, trial operations
    ├── Suite 2 (Biorepository) → Specimen-phenotype linkage
    ├── Suite 3 (Translational) → Molecular phenotyping data
    └── Suite 5 (Innovation) → Remote monitoring, wearable data
```

### Detailed Suite Specifications

Full technical specifications for each suite are in `suites/`:

- [suites/suite_1_clinical_trials_infrastructure.md](suites/suite_1_clinical_trials_infrastructure.md)
- [suites/suite_2_living_biorepository.md](suites/suite_2_living_biorepository.md)
- [suites/suite_3_translational_science.md](suites/suite_3_translational_science.md)
- [suites/suite_4_data_platform.md](suites/suite_4_data_platform.md)
- [suites/suite_5_trial_innovation.md](suites/suite_5_trial_innovation.md)

---

## Project Outputs

### Application Documents (Derived)

| Document | Stage | Path | Status |
|----------|-------|------|--------|
| **RTA (Request to Apply)** | Current | `rta/rta.md` | Draft complete |
| **Full CFI Application** | Future | `full_app/full_application.md` | Not started |
| **Budget Narrative** | Future | `budget/budget_narrative.md` | Not started |

### Stakeholder Briefs (Derived)

Targeted summaries for different audiences in `briefs/`:

| Brief | Audience | Path |
|-------|----------|------|
| Executive Brief | Leadership, funders | `briefs/executive_brief.md` |
| CTAP Overview | Technical stakeholders | `briefs/ctap_overview.md` |
| Suite 2 Brief | Core facility directors | `briefs/suite_2_biospecimen.md` |

### Include Fragments (Derived)

Shared content fragments in `includes/` extracted from MASTER.md:

| Fragment | Source | Used By |
|----------|--------|---------|
| `project_overview.md` | MASTER.md §1 | Executive brief, RTA |
| `objectives.md` | `_data/objectives.csv` | All documents |
| `funding_summary.md` | `_data/equipment.csv` (SQL aggregation) | Briefs, RTA |
| `why_now.md` | MASTER.md §2.1 | RTA |
| `why_ualberta.md` | MASTER.md §2.2 | RTA |
| `benefits_summary.md` | MASTER.md §5 | Briefs, RTA |
| `suite_*_description.md` | suites/*.md | RTA, briefs |

### Configuration Files

| File | Purpose |
|------|---------|
| [`config/context.yaml`](config/context.yaml) | Flagship programs, institutional context |
| [`sync/dependency_graph.json`](sync/dependency_graph.json) | Data sources, SQL views, propagation rules |
| `project.mk` | Build configuration |

See [../../.claude/skills/cfi-grant-writer/references/document-architecture.md](../../.claude/skills/cfi-grant-writer/references/document-architecture.md) for full architecture documentation.

---

## Folder Structure

```
cfi-ctap/
├── MASTER.md               # Strategic source of truth (Tier 1)
├── config/                 # Project configuration for CFI skills
│   └── context.yaml        # Flagships, institutional context, suite specifics
│
├── _data/                  # DATA SOURCE OF TRUTH (CSV + DuckDB)
│   ├── equipment.csv       # Infrastructure by suite with costs
│   ├── participants.csv    # Team members, roles, expertise
│   ├── objectives.csv      # Core objectives with metrics
│   ├── spaces.csv          # Physical spaces and renovations
│   ├── budget_items.csv    # Capital + O&M breakdown
│   ├── equipment_objectives.csv  # Equipment-objective relationships
│   ├── participant_objectives.csv # Participant-objective relationships
│   └── _lookups.csv        # Reference data for dropdowns
│
├── rta/                    # Request to Apply (current focus)
│   ├── rta.md              # Main RTA document
│   └── exports/            # Built DOCX files
│
├── full_app/               # Full Application (future)
│   └── full_application.md
│
├── suites/                 # Detailed suite specifications
│   ├── README.md           # Suite organization guide
│   ├── suite_1_*.md        # Clinical trials infrastructure
│   ├── suite_2_*.md        # Biorepository & cell manufacturing
│   ├── suite_3_*.md        # Translational science
│   ├── suite_4_*.md        # Data platform & AI/HPC
│   └── suite_5_*.md        # Trial innovation & wearables
│
├── briefs/                 # Stakeholder concept briefs
│   ├── executive_brief.md
│   ├── suite_*_*.md
│   └── exports/
│
├── includes/              # Shared content (synchronization layer)
│   ├── objectives.md
│   ├── project_overview.md
│   ├── suite_*_description.md
│   ├── why_now.md          # From MASTER §2.1
│   ├── why_ualberta.md     # From MASTER §2.2
│   ├── benefits_summary.md # From MASTER §5
│   ├── funding_summary.md
│   └── team_overview.md
│
├── ideas/                 # Idea capture and tracking
│   ├── ideas_index.json    # Master catalog with statuses
│   └── text/               # Individual idea files
│
├── sync/                  # Document synchronization metadata
│   ├── sync_status.json
│   └── dependency_graph.json  # Data sources, SQL views, rules
│
├── background/             # Reference materials
│   ├── 01_instructions_cfi_2027.pdf
│   ├── CFI-Innovation-Fund-2025-Call-Proposals.pdf
│   ├── UAlberta_AWS_TRE_Assessment.md
│   ├── competitive_analysis_and_exemplars.md
│   └── previous_related_applications/
│
├── budget/                 # Budget materials
│   └── quotes/             # Vendor quotes
│
├── team/                   # Team documentation
│   ├── cvs/
│   └── letters/
│
├── refs/                   # Bibliography
│   └── references.bib      # Zotero auto-export
│
├── data/                   # Data management docs
│   └── csv_structure.md    # CSV schema documentation
│
├── compliance/             # Validation reports
│   ├── rta_compliance_check.md
│   └── budget_alignment_report.md
│
├── infrastructure/         # Space and renovation plans
├── figures/                # Figures
├── tables/                 # Tables
├── collab/                 # Collaborator feedback
├── resubmission/           # Resubmission stage (if needed)
│
├── README.md               # This file
├── project.mk              # Build configuration
└── gdoc_mapping.json       # Google Docs tracking
```

---

## Data Management

### Source of Truth: Local CSV + DuckDB

The project uses **local CSV files** (`_data/*.csv`) as the **single source of truth** for all proposal data, with **DuckDB** as the SQL query engine.

**Benefits:**
- Version controlled with git alongside documents
- SQL query capability for budget analysis and alignment checks
- Works offline, no external dependencies
- Human-readable and editable in any spreadsheet application

**Legacy backup**: Google Sheets (`1toKJmShkKehSk9e8p28Mp4wcAkIM8erWdfgVsauudoI`) archived as of 2026-01-06.

### CSV Data Files

| File | Rows | Purpose |
|------|------|---------|
| `_data/equipment.csv` | 66 | Infrastructure requests by suite with costs |
| `_data/participants.csv` | 39 | Team members, roles, expertise, LOS status |
| `_data/objectives.csv` | 8 | Core objectives with success metrics |
| `_data/spaces.csv` | 9 | Physical spaces and renovation requirements |
| `_data/budget_items.csv` | 82 | Detailed budget breakdown (capital + O&M) |
| `_data/equipment_objectives.csv` | 77 | Equipment-to-objective relationships |
| `_data/participant_objectives.csv` | 45 | Participant-to-objective relationships |
| `_data/_lookups.csv` | 8 | Reference data for dropdowns |

### SQL Views (via DuckDB)

| View | Purpose |
|------|---------|
| `v_funding_summary` | Suite budget totals for `includes/funding_summary.md` |
| `v_alignment_gaps` | Objectives without equipment or participants |
| `v_orphaned_equipment` | Equipment not linked to any objective |
| `v_objective_coverage` | Equipment count per objective |
| `v_renovation_costs` | Renovation costs by suite |

### Data Schema

See `data/csv_structure.md` for complete schema documentation and SQL query examples.

---

## Workflows

### RTA Development Workflow

1. **Draft content** in `rta/rta.md`
2. **Update shared includes** when objectives or descriptions change
3. **Build DOCX**: `make docx PROJECT=cfi-ctap`
4. **Upload to Google Docs**: `make gdoc PROJECT=cfi-ctap`
5. **Review comments**: `/gdoc-comments cfi-ctap rta`
6. **Incorporate feedback** back into markdown

### Full Application Workflow (Future)

1. RTA approved by CFI
2. Create `full_app/full_application.md` from RTA foundation
3. Expand sections per CFI full application requirements
4. Detailed budget narrative in `budget/budget_narrative.md`
5. Gather letters of support, CVs, vendor quotes

### Google Docs Collaboration

```
WRITE FLOW (One-way):
  Markdown → Pandoc → DOCX → rclone → Google Drive → Google Doc
                                            ↓
                            Team adds comments/suggestions
                                            ↓
READ FLOW (Comments only):
  /gdoc-comments → Read comments → Manual markdown update
```

**Important**: Markdown is the source of truth. Never edit Google Docs content directly.

---

## Key Commands

### Slash Commands

| Command | Description |
|---------|-------------|
| `/cfi-section <section> cfi-ctap` | Draft a specific RTA section |
| `/cfi-budget-align cfi-ctap` | Check budget-narrative alignment |
| `/cfi-compliance cfi-ctap` | Run full CFI compliance check |
| `/cfi-suggest <type>` | Generate AI suggestions |
| `/cfi-align [focus]` | Validate proposal alignment |
| `/build-docx cfi-ctap` | Build Word document |
| `/build-gdoc cfi-ctap` | Build and upload to Google Docs |
| `/gdoc-comments cfi-ctap rta` | Retrieve Google Doc comments |
| `/gdoc-status cfi-ctap` | Check sync status |
| `/literature-search <topic>` | Search for supporting evidence |
| `/idea cfi-ctap <text>` | Capture a new idea |
| `/ideas cfi-ctap` | View ideas dashboard |

### Build Commands

```bash
# Build RTA (default document)
make docx PROJECT=cfi-ctap

# Build specific document
make docx PROJECT=cfi-ctap MANUSCRIPT=briefs/executive_brief.md

# Build all documents
make all-docx PROJECT=cfi-ctap

# Build and upload all to Google Docs
make all-gdoc PROJECT=cfi-ctap

# View build configuration
make info PROJECT=cfi-ctap
```

---

## CFI Requirements Reference

### Background Documents

| Document | Location |
|----------|----------|
| CFI IF2027 Instructions | `background/01_instructions_cfi_2027.pdf` |
| CFI IF2025 Call (reference) | `background/CFI-Innovation-Fund-2025-Call-Proposals.pdf` |
| AWS TRE Assessment | `background/UAlberta_AWS_TRE_Assessment.md` |
| Competitive Analysis | `background/competitive_analysis_and_exemplars.md` |

### RTA Section Requirements

| Section | Max Length | Status |
|---------|------------|--------|
| Strategic Alignment | 1-2 paragraphs | Draft |
| Research Plan | 3 pages | Draft |
| Research Team | 1 page | Placeholder |
| EDI | 1-2 paragraphs | Draft |
| Benefits | 1 page | Draft |
| Infrastructure Justification | 3 pages | Draft |
| Sustainability | 2 pages | Draft |
| Budget | Template | Draft |

### Supporting Documents Checklist

- [ ] Letter of Support (with signatures)
- [ ] Equipment Data Table
- [ ] Sketch Layout
- [ ] Vendor Quotes
- [ ] Installation Guides (major equipment)
- [ ] Team CVs

---

## Related Resources

### Claude Code Skills

- `.claude/skills/cfi-grant-writer/` - CFI IF2027 specific guidance
- `.claude/skills/grant-writer/` - General grant writing

### Claude Code Agents

| Agent | Purpose |
|-------|---------|
| `cfi-compliance-checker` | Validates RTA against CFI requirements |
| `cfi-alignment-validator` | Cross-document consistency, flagship coverage |
| `cfi-equipment-advisor` | Equipment recommendations and cost estimates |
| `cfi-research-analyst` | Research objective and infrastructure gap analysis |
| `cfi-budget-analyst` | Budget-narrative alignment verification |
| `cfi-cross-doc-checker` | Multi-document consistency verification |
| `literature-researcher` | Multi-database literature search |

These agents read project configuration from `config/context.yaml` and `sync/dependency_graph.json`.

### Reference Management

- **Zotero Collection**: `Writing Projects/CFI`
- **Auto-export**: `refs/references.bib`
- Use `/literature-search` to find papers, then add DOIs to Zotero

---

## Key Dates

| Milestone | Date |
|-----------|------|
| CFI IF2027 Call Release | Expected 2026 |
| Internal RTA Deadline | TBD |
| CFI RTA Submission | TBD |
| Full Application (if invited) | TBD |
