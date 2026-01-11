# Plan: CFI CTAP Document Architecture - Master Coordinating Document

## Summary

Create a master "coordinating" document that serves as the central source of truth for the CFI CTAP proposal, containing all core arguments, competitive positioning, and strategic framing. This document will function as the "main module" from which RTA, full application, and stakeholder briefs inherit.

## Context

### Competition Requirements (CFI Innovation Fund 2027)

**Three Fundamental Objectives (ALL proposals assessed against):**
1. Enable internationally competitive research/technology development
2. Enhance institutional capacity
3. Generate benefits for Canada

**Key Assessment Criteria:**
- Quality of Research/Technology Development (most heavily weighted)
- Capacity for Innovation (common failure point - often under-developed)
- Potential Benefits to Canada
- EDI and Team Strength
- Feasibility and Maturity
- Integration and Cohesion

**Critical Insight:** Reviewers read **criterion-by-criterion**, not as narrative. Internal alignment and discipline in structure are essential.

### Current Document Structure

```
projects/cfi-ctap/
├── rta/rta.md                          # Current primary document (RTA stage)
├── suites/                             # Detailed technical specifications (5 files)
├── briefs/                             # Stakeholder briefs (6 files)
├── includes/                          # Shared content snippets (8 files)
├── sync/                              # Sync status tracking
├── competition_instructions/           # CFI guidelines
├── background/                         # Supporting research
├── ideas/                             # Ideas capture
└── data/CFI_CTAP_Data (Google Sheets)  # Budget, participants, equipment
```

**Current Flow:**
- Suites → Includes → RTA + Briefs
- Google Sheets → Includes → RTA + Briefs
- RTA is current "master" but mixes strategic content with application-specific formatting

## Recommendation: Create Master Coordinating Document

### Rationale

The current RTA serves as both the application document AND the source of strategic content. This creates problems:

1. **RTA constraints limit strategic depth**: RTA has page limits (12-13 pages total narrative)
2. **Full application will need expanded content**: More detail than RTA allows
3. **Arguments scattered across documents**: "Why now," "Why UAlberta" live in RTA but also need to inform briefs

**Solution:** Create a master coordinating document that:
- Contains ALL strategic arguments at full development
- Serves as the "module" from which RTA extracts constrained sections
- Provides basis for full application expansion
- Ensures consistency across all stakeholder materials

### Proposed Architecture

```
projects/cfi-ctap/
├── MASTER.md                    # NEW: Master coordinating document
│   ├── 1. Competitive Opportunity & Research Problem
│   ├── 2. Strategic Arguments (Why Now, Why UAlberta, Why This Team)
│   ├── 3. Core Objectives (canonical, from Sheets)
│   ├── 4. Infrastructure Model (five domains)
│   ├── 5. Benefits to Canada (full development)
│   ├── 6. Capacity for Innovation (full development)
│   ├── 7. EDI Integration (full development)
│   ├── 8. Feasibility & Risk (full development)
│   └── 9. Cross-Document Alignment Matrix
│
├── rta/rta.md                   # EXTRACT: Constrained RTA (current)
├── full_app/full_application.md # EXTRACT: Full application (future)
├── briefs/                      # EXTRACT: Stakeholder briefs (current)
├── suites/                      # TECHNICAL DEPTH: Detailed specifications
├── includes/                   # SYNC LAYER: Shared snippets
└── data/CFI_CTAP_Data           # DATA LAYER: Budget, participants, equipment
```

## Implementation Steps

### Step 1: Create MASTER.md Skeleton

Create the master document with all section headers:

```markdown
# Clinical Trials Acceleration Platform (CTAP) - Master Document

## Purpose
This document contains the complete strategic foundation for the CFI CTAP proposal.
Application documents (RTA, Full Application) and briefs extract from this master.

## 1. The Competitive Opportunity
### 1.1 Research Problem
### 1.2 Competitive Landscape
### 1.3 Market Gap

## 2. Strategic Arguments
### 2.1 Why Now
### 2.2 Why University of Alberta
### 2.3 Why This Team
### 2.4 Why This Approach

## 3. Core Objectives (Canonical)
[7 objectives synchronized from Google Sheets]

## 4. Infrastructure Model
### 4.1 Five Integrated Domains
### 4.2 Domain Descriptions (Full)
### 4.3 Integration Points
### 4.4 Flagship Programs

## 5. Benefits to Canada (Full Development)
### 5.1 Health and Social Benefits
### 5.2 Economic and Innovation Benefits
### 5.3 Knowledge Mobilization

## 6. Capacity for Innovation (Full Development)
### 6.1 HQP Training
### 6.2 Collaboration and Access
### 6.3 Management and Governance
### 6.4 Sustainability Model

## 7. EDI Integration (Full Development)

## 8. Feasibility and Risk

## 9. Cross-Document Alignment Matrix
```

**File to create:** `projects/cfi-ctap/MASTER.md`

### Step 2: Populate from Existing Content

Extract strategic content from RTA into MASTER.md:
- RTA §2.2 (Why Now, Why UAlberta) → MASTER §2
- RTA §2.5 (Objectives) → MASTER §3
- RTA §2.3 (Infrastructure Model) → MASTER §4
- RTA §5 (Benefits) → MASTER §5
- RTA §7 (Sustainability) → MASTER §6
- RTA §4 (EDI) → MASTER §7

**File to modify:** `projects/cfi-ctap/MASTER.md`

### Step 3: Expand Strategic Arguments

Develop fully the "Why Now" and "Why UAlberta" arguments:
- Add supporting evidence from background research
- Include competitive landscape analysis
- Develop full market gap narrative

### Step 4: Create Alignment Matrix

Build cross-document alignment matrix:

| Section | RTA Location | Full App Location | Brief Location | Include File |
|---------|--------------|-------------------|----------------|--------------|
| Strategic Alignment | §1 | §1 | Exec §1 | project_overview.md |
| Why Now | §2.2 | §2.2 | Exec §2 | why_now.md (new) |
| Why UAlberta | §2.2 | §2.2 | Exec §2 | why_ualberta.md (new) |
| Objectives | §2.5 | §2.5 | All briefs | objectives.md |

### Step 5: Update Include System

Create new includes from MASTER:
- `includes/why_now.md` - Strategic timing arguments
- `includes/why_ualberta.md` - Institutional advantages
- `includes/benefits_summary.md` - Key benefits

**Files to create:**
- `projects/cfi-ctap/includes/why_now.md`
- `projects/cfi-ctap/includes/why_ualberta.md`
- `projects/cfi-ctap/includes/benefits_summary.md`

### Step 6: Update Dependency Graph

Add MASTER.md as source in dependency tracking.

**Files to modify:**
- `projects/cfi-ctap/sync/dependency_graph.json`
- `projects/cfi-ctap/sync/sync_status.json`

## Files to Create/Modify

| File | Action |
|------|--------|
| `projects/cfi-ctap/MASTER.md` | Create new master document |
| `projects/cfi-ctap/includes/why_now.md` | Create new include |
| `projects/cfi-ctap/includes/why_ualberta.md` | Create new include |
| `projects/cfi-ctap/includes/benefits_summary.md` | Create new include |
| `projects/cfi-ctap/sync/dependency_graph.json` | Update dependencies |

## Expected Outcome

| Document | Role | Source |
|----------|------|--------|
| **MASTER.md** | Single source of truth for strategy | Primary authoring |
| **RTA** | CFI application (constrained) | Extracts from MASTER |
| **Full Application** | CFI application (expanded) | Extracts from MASTER |
| **Briefs** | Stakeholder communication | Extracts from MASTER |
| **Suites** | Technical specifications | Original authoring |
| **Includes** | Synchronization layer | Extracts from MASTER or Suites |
| **Google Sheets** | Data (budget, participants) | Original authoring |

## Benefits

1. **Single source for strategic arguments** - No duplication, no drift
2. **Easy full application preparation** - Expand from MASTER, not rewrite RTA
3. **Consistent stakeholder messaging** - All briefs inherit same core arguments
4. **Alignment verification** - Matrix shows where each element appears
5. **Review efficiency** - Can review strategy in one place before distribution

## User Preferences (Confirmed)

- **Location**: Project root (`projects/cfi-ctap/MASTER.md`)
- **RTA Relationship**: Keep separate; manual sync when updating strategic sections
- **New Includes**: Yes - create `why_now.md`, `why_ualberta.md`, `benefits_summary.md`

## Detailed Implementation Plan

### Phase 1: Create MASTER.md (Primary Task)

1. Create `projects/cfi-ctap/MASTER.md` with complete structure
2. Extract content from `rta/rta.md` into appropriate MASTER sections:
   - RTA §1 (Strategic Alignment) → MASTER §1.1
   - RTA §2.2 (Opportunity) → MASTER §1
   - RTA §2.4 (Why Now, Why UAlberta) → MASTER §2.1, §2.2
   - RTA §2.5 (Objectives) → MASTER §3
   - RTA §2.3 (Infrastructure Model) → MASTER §4
   - RTA §2.6 (Flagship Programs) → MASTER §4.4
   - RTA §5 (Benefits) → MASTER §5
   - RTA §6 (Sustainability excerpt) → MASTER §6.4
   - RTA §7 (Governance) → MASTER §6.3
   - RTA §4 (EDI) → MASTER §7
   - RTA §8.7 (Risks) → MASTER §8
3. Expand strategic arguments with full development (remove RTA page constraints)
4. Add competitive landscape analysis drawing from background documents

### Phase 2: Create New Includes

1. Create `includes/why_now.md` - Extract from MASTER §2.1
2. Create `includes/why_ualberta.md` - Extract from MASTER §2.2
3. Create `includes/benefits_summary.md` - Extract from MASTER §5 (condensed)

### Phase 3: Create Alignment Matrix

Build cross-reference matrix in MASTER §9:

| Strategic Element | MASTER Section | RTA Section | Full App | Exec Brief | Suite Briefs | Include File |
|-------------------|----------------|-------------|----------|------------|--------------|--------------|
| Competitive Opportunity | §1 | §2.1-2.2 | TBD | §2 | - | - |
| Why Now | §2.1 | §2.4 (condensed) | TBD | §3 | - | why_now.md |
| Why UAlberta | §2.2 | §2.4 (condensed) | TBD | §3 | - | why_ualberta.md |
| Why This Team | §2.3 | §3 | TBD | §4 | - | team_overview.md |
| Core Objectives | §3 | §2.5 | TBD | All | All | objectives.md |
| Five Domains | §4.1-4.3 | §2.3 | TBD | §5 | Each suite | suite_*_description.md |
| Flagship Programs | §4.4 | §2.6 | TBD | - | Relevant | - |
| Benefits | §5 | §5 | TBD | §6 | - | benefits_summary.md |
| Capacity/Sustainability | §6 | §7 | TBD | §7 | - | - |
| EDI | §7 | §4 | TBD | §8 | - | - |
| Feasibility/Risk | §8 | §8.7 | TBD | - | - | - |

### Phase 4: Update Dependency Graph

Update `sync/dependency_graph.json` to reflect:
- MASTER.md as new source document
- New includes depending on MASTER
- Briefs depending on new includes

## Critical Files

| File | Action |
|------|--------|
| `projects/cfi-ctap/MASTER.md` | **CREATE** - Main coordinating document |
| `projects/cfi-ctap/includes/why_now.md` | **CREATE** - Strategic timing |
| `projects/cfi-ctap/includes/why_ualberta.md` | **CREATE** - Institutional advantages |
| `projects/cfi-ctap/includes/benefits_summary.md` | **CREATE** - Key benefits |
| `projects/cfi-ctap/sync/dependency_graph.json` | **MODIFY** - Add MASTER dependencies |
| `projects/cfi-ctap/sync/sync_status.json` | **MODIFY** - Add MASTER tracking |

## Source Documents to Reference

| Document | Content to Extract |
|----------|-------------------|
| `rta/rta.md` | Current strategic content, objectives, domains |
| `competition_instructions/cfi_evaluation_criteria.md` | Assessment criteria alignment |
| `competition_instructions/cfi_proposal_outline.md` | Required structure |
| `ideas/text/*.md` | Research findings for background expansion |
| Google Sheets (Objectives tab) | Canonical objectives |

## Success Criteria

1. MASTER.md contains all strategic arguments at full development
2. New includes enable consistent messaging across briefs
3. Alignment matrix provides clear cross-reference for all documents
4. RTA remains unchanged (separate sync, no refactoring)
5. Dependency graph updated to track MASTER as source
