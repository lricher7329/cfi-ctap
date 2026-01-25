# CFI CTAP Visualization & Image Generation Prompt Plan

## Overview

Create image generation prompts for critical diagrams and visualizations to support the CFI CTAP proposal, RTA, and stakeholder briefs. These prompts are designed for use with image generation models (DALL-E, Midjourney, or similar) or as specifications for professional diagram tools.

---

## Visual Style Guidelines

Based on existing `aws_tre_diagram.png`:
- **Color palette**: Purple (headers), magenta/pink (inputs), green (processing), blue (systems), gold (outputs)
- **Style**: Clean rectangular boxes with rounded corners, connecting arrows, organized zones
- **Format**: Landscape orientation, professional/technical aesthetic
- **Typography**: Sans-serif, clear hierarchy
- **Target**: Grant proposal quality - professional, not cartoonish

---

## Priority Tier 1: Critical Diagrams (5)

### 1. Five-Suite Infrastructure Ecosystem Map

**Purpose**: Show how five suites integrate into unified CTAP platform
**Location**: RTA Section 2.3, Executive Brief

**Image Generation Prompt**:
```
Create a professional technical diagram showing a clinical trials platform ecosystem with five integrated infrastructure suites arranged around a central hub.

Central element: Large hexagon labeled "Suite 4: Data Platform & AI/HPC" in deep blue, containing icons for cloud computing, database, and AI brain.

Four surrounding elements connected to center with bidirectional arrows:
- Top-left: "Suite 1: Clinical Trials Infrastructure" (teal) with medical cross and patient bed icons
- Top-right: "Suite 2: Living Biorepository" (green) with test tube and snowflake icons
- Bottom-left: "Suite 3: Translational Science" (purple) with microscope and molecule icons
- Bottom-right: "Suite 5: Trial Innovation" (orange) with mobile device and wearable icons

Data flow arrows showing:
- Suite 1 → Suite 4: "Real-time clinical data"
- Suite 2 → Suite 4: "Specimen-phenotype linkage"
- Suite 3 → Suite 4: "Molecular phenotyping"
- Suite 5 → Suite 4: "Device & remote data"

Outer ring: Five flagship program labels (MS Cell Therapies, HCV Vaccines, Cardio-Renal-Metabolic, Pediatric Rare Disease, CRAIDL Development)

Style: Clean, professional, suitable for academic grant proposal. White background, subtle grid pattern. Landscape orientation 16:9.
```

---

### 2. Three-Zone Trusted Research Environment (TRE)

**Purpose**: Show data isolation, de-identification, and security architecture
**Location**: RTA Section 2.3, Suite 4, Briefs

**Image Generation Prompt**:
```
Create a professional data architecture diagram showing a three-zone Trusted Research Environment for clinical trials data.

Three distinct horizontal zones separated by security boundaries (dashed lines with lock icons):

ZONE 1 (Left, Red/Pink gradient): "Identifiable Data Zone"
- Label: "AHS Custodian Control"
- Elements: Connect Care EMR icon, patient registry database, hospital systems
- Security badge: "FOIP Protected"
- Arrow flowing right through "De-identification Gateway"

ZONE 2 (Center, Yellow/Gold gradient): "Controlled Processing Zone"
- Label: "Data Transformation & AI"
- Elements: OMOP conversion engine, CDISC transformation, de-identification pipeline
- Seven AI agent icons in a row labeled "CRAIDL Agents"
- Compliance badges: "21 CFR Part 11", "NIST CSF 2.0"
- Human-in-the-loop checkpoint symbol

ZONE 3 (Right, Green gradient): "Research Environment"
- Label: "Researcher Workspaces"
- Elements: Data lake, analytics tools, GPU compute cluster, visualization dashboards
- Output arrows: "Aggregate Results Only", "No Re-identification"

Bottom banner: "Complete Audit Trail - All Access Logged"

Style: Technical architecture diagram, clean lines, professional colors. Include numbered callout points for legend. Landscape 16:9.
```

---

### 3. CRAIDL Agent Architecture & Governance

**Purpose**: Illustrate AI agent framework with human oversight
**Location**: RTA Section 2.4, Governance sections

**Image Generation Prompt**:
```
Create a professional diagram showing an AI agent governance framework for clinical trials, with seven specialized agents (four validated via prototype) and human oversight controls.

Top section - "Human Oversight Layer":
- Clinical Oversight Board icon (group of people)
- Data Access Committee icon
- Audit & Compliance Monitor icon
- Connected by governance arrows

Middle section - "CRAIDL Agent Framework" (six hexagonal agent nodes arranged in a honeycomb):
1. Protocol Agent (document icon) - "Trial Design & Documentation"
2. Data Management Agent (database icon) - "Quality & Transformation"
3. Events Agent (alert bell icon) - "Safety Monitoring"
4. Ethics Agent (scales icon) - "Consent & Compliance"
5. Regulatory Agent (stamp icon) - "Submission Support"
6. Budget & Contracts Agent (calculator icon) - "Financial Management"

Each agent shows:
- Zone access level (color-coded: Zone 1/2/3)
- Human approval checkpoint symbol where required

Bottom section - "Data Sources & Outputs":
- Left: Connect Care, EDC, Lab Systems, Biorepository flowing in
- Right: Trial documents, reports, dashboards flowing out

Arrows showing data flow with "Audit Trail" labels

Style: Modern tech diagram, hexagonal nodes, clean professional look. Blue and purple color scheme. Landscape 16:9.
```

---

### 4. Living Biorepository: Traditional vs. Living Concept

**Purpose**: Differentiate CTAP's paradigm shift from standard biobanks
**Location**: RTA Section 2.3, Suite 2

**Image Generation Prompt**:
```
Create a comparison diagram showing traditional biobank vs. Living Biorepository concepts, split vertically.

LEFT SIDE - "Traditional Biobank" (grayscale/muted colors):
- Timeline showing single collection point
- Static specimen in freezer icon
- Manual metadata entry (clipboard)
- "Point-in-time snapshot" label
- Disconnected from clinical systems
- Outcome linkage: "Manual, years later"
- Dead end arrow

RIGHT SIDE - "Living Biorepository" (vibrant colors):
- Continuous timeline with multiple touchpoints
- Animated specimen with data streams flowing
- Automatic EMR linkage (Connect Care logo)
- "Continuous enrichment" label
- Real-time outcome annotation
- Predictive inventory management
- Dynamic consent renewal
- Cross-trial specimen reuse arrows
- "Learning ecosystem" circular arrow

Center divider: Lightning bolt or transformation arrow

Bottom comparison metrics:
- Traditional: "Months to link outcomes" vs Living: "Real-time annotation"
- Traditional: "Single use" vs Living: "Multi-study reuse"
- Traditional: "Static consent" vs Living: "Dynamic consent"

Style: Clean infographic style, strong visual contrast between old/new. Landscape 16:9.
```

---

### 5. Clinical Trial Acceleration Timeline

**Purpose**: Quantify trial startup improvement with CRAIDL
**Location**: RTA Section 2.4, Objective 1

**Image Generation Prompt**:
```
Create a timeline comparison diagram showing clinical trial startup acceleration.

Two parallel horizontal timelines:

TOP TIMELINE - "Traditional Pathway" (red/orange, faded):
- Total: "12-18 months"
- Segments: Protocol Development (3mo) → REB Submission (2mo) → REB Review (3mo) → EDC Build (2mo) → Site Activation (2mo) → First Patient (ongoing)
- Pain point icons at each transition (hourglass, paperwork stack)

BOTTOM TIMELINE - "CRAIDL-Enabled Pathway" (green, vibrant):
- Total: "4-6 weeks" (highlighted)
- Compressed segments with AI agent icons:
  - Protocol Agent: "AI-assisted protocol" (1 week)
  - Ethics Agent: "Automated REB docs" (3 days)
  - Rapid REB review (2 weeks)
  - Data Management Agent: "Auto EDC generation" (1 week)
  - Regulatory Agent: "Parallel activation" (1 week)
- Acceleration arrows showing compression

Center callout box: "RECOVERY Trial Benchmark: 9 days to activation"

Right side: Impact metrics
- "6x faster startup"
- "Earlier patient access"
- "Pandemic readiness"

Style: Gantt chart aesthetic, clear timeline progression. Professional grant proposal quality. Landscape 16:9.
```

---

## Priority Tier 2: High-Value Diagrams (5)

### 6. Connect Care Integration Ecosystem

**Prompt Summary**: Provincial EMR (4.4M patients) at center, showing Zone 1 extraction pathways (bulk, FHIR API, real-time), data flows to TRE, integration with Living Biorepository, federation to national networks (VITAL, OHDSI, PRAIRIE Hub).

### 7. Sample-to-Science Translational Workflow

**Prompt Summary**: End-to-end specimen journey: Patient consent → Collection (Suite 1) → BioBank processing (Suite 2) → Aliquoting → Molecular pathways (Suite 3: omics, cryo-EM, glycomics) → TRE integration (Suite 4) → Outcome linkage → Feedback to trial design.

### 8. Federated Learning & Pan-Canadian Network

**Prompt Summary**: Network diagram showing CTAP as Western anchor. Layers: Intra-Alberta (AHS, U Calgary, U Lethbridge), National (PRAIRIE Hub, RareKids-CAN, ACT-AEC, CCTG), Pan-Canadian DHDP (97 partners), International OHDSI (100+ sites). Federated queries, aggregate results only.

### 9. Governance & Committee Structure

**Prompt Summary**: Organizational chart: CTAP Steering Committee at center → Data Access Committee, Operations Committee, CRAIDL Development Committee, EDI & Indigenous Advisory Council, Scientific Advisory Board. Reporting lines, decision domains.

### 10. Flagship Programs & CRAIDL Testbed Integration

**Prompt Summary**: Five flagship program nodes (MS, HCV, Cardio-Renal-Metabolic, Pediatric Rare Disease, CRAIDL AI) connected to CRAIDL agent development pathway. Shows iterative refinement: Pilot → Validation → Deployment → National Adoption.

---

## Priority Tier 3: Supporting Diagrams (5)

### 11. Vaccine Challenge Trial Unit Layout
**Summary**: Containment facility floor plan showing 4 isolation rooms, negative pressure, HEPA, nursing station, pathogen prep area.

### 12. Pediatric Rare Disease Unit Integration
**Summary**: Stollery CIU infrastructure, 15-year follow-up stations, RareKids-CAN network linkage.

### 13. Device Validation Pathway (iSMART → Suite 5)
**Summary**: Stage progression: Preclinical (iSMART) → Early Feasibility → Pivotal Validation → Real-World Performance. Active devices in pipeline.

### 14. Data Standardization Framework
**Summary**: Data type to standard mapping: Trial → 21 CFR Part 11 → CDISC; Clinical → OMOP; Specimen → FHIR; Omics → FAIR.

### 15. Sustainability & Cost-Recovery Model
**Summary**: Stacked area chart showing CFI funding declining, cost-recovery increasing over 5 years to full sustainability.

---

## Priority Tier 4: Supplementary Diagrams (5)

### 16. Alberta's Unique Asset Convergence
**Summary**: Infographic showing AI (Amii) + Health Data (Connect Care) + Discovery (Cryo-EM, Omics) + Manufacturing (ACTM) + Trials (CVC) converging on CTAP.

### 17. Implementation Timeline to Full Operations
**Summary**: 36-month Gantt: Phase 1 Foundation → Phase 2 Integration → Phase 3 Full Operations. Early wins highlighted.

### 18. Risk Mitigation Heat Map
**Summary**: Risk matrix with operational, technical, strategic risks color-coded by likelihood/impact with mitigation strategies.

### 19. International Benchmarking Comparison
**Summary**: CTAP vs UK Biobank RAP, All of Us, FinnGen, Genomics England across dimensions: TRE, AI, Federation, Regulatory.

### 20. Expected Outcomes Dashboard 2031
**Summary**: Dashboard visualization: Trial startup reduction, recruitment efficiency, Indigenous participation, HQP trained, CRAIDL adoption metrics.

---

## Implementation Approach

### Option A: AI Image Generation
Use prompts above with DALL-E 3, Midjourney, or similar for initial drafts, then refine in vector tool.

### Option B: Professional Diagram Tools
Use prompts as specifications for:
- **Lucidchart** or **Draw.io** for architecture diagrams
- **Figma** or **Canva** for infographics
- **Mermaid** or **PlantUML** for programmatic diagrams

### Option C: Hybrid Approach (Recommended)
1. Generate conceptual layouts with AI
2. Recreate in vector tools for precise control
3. Maintain consistent style guide across all diagrams

---

## Deliverables

| Diagram | Priority | Target Document | Estimated Complexity |
|---------|----------|-----------------|---------------------|
| Five-Suite Ecosystem | Tier 1 | RTA, Executive Brief | High |
| Three-Zone TRE | Tier 1 | RTA, Suite 4 | High |
| CRAIDL Agent Architecture | Tier 1 | RTA, Governance | High |
| Living Biorepository Concept | Tier 1 | RTA, Suite 2 | Medium |
| Trial Acceleration Timeline | Tier 1 | RTA Objective 1 | Medium |
| Connect Care Integration | Tier 2 | Suite 4 | Medium |
| Sample-to-Science Workflow | Tier 2 | Suite 2, 3 | Medium |
| Federated Network Map | Tier 2 | RTA, Briefs | Medium |
| Governance Structure | Tier 2 | RTA Section 7 | Low |
| Flagship Programs | Tier 2 | RTA Section 2.6 | Medium |

---

## Output Location

Save generated diagrams to this folder:
```
projects/cfi-ctap/figures/
├── ecosystem_five_suite.png
├── tre_three_zone.png
├── craidl_agent_architecture.png
├── biorepository_living_concept.png
├── trial_acceleration_timeline.png
└── [additional diagrams...]
```

Update RTA and briefs to reference figures using markdown image syntax.
