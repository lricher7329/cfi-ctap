# CFI CTAP Visualization & Image Generation Prompts

> **Generated**: 2026-01-25 using `figure-prompt-writer` skill
> **Proposal Version**: RTA v6 ($8,318,879 CAD)
> **Target**: Nano Banana, DALL-E 3, Midjourney, or professional diagram tools

---

## Overview

The Clinical Trials Acceleration Platform (CTAP) is Canada's first AI-native clinical trials infrastructure, integrating five infrastructure suites around a central data platform. These visualization prompts support the CFI Innovation Fund 2027 application by illustrating complex concepts that differentiate CTAP from competing proposals.

**Strategic Visualization Goals:**

1. Demonstrate integration (not fragmentation) of infrastructure components
2. Highlight AI-first design as architectural principle (not bolt-on)
3. Show Alberta's unique convergence of assets
4. Quantify acceleration and impact
5. Illustrate governance and security as enabling (not constraining)

---

## Visual Style Guidelines

**Color Palette (CTAP Brand):**

```yaml
suites:
  suite_1_clinical: "#2a9d8f"      # Teal - Clinical/Patient
  suite_2_biorepository: "#48cae4" # Light Blue - Cold/Storage
  suite_3_translational: "#9d4edd" # Purple - Science/Discovery
  suite_4_data_platform: "#1e3a5f" # Deep Blue - Data/Digital
  suite_5_innovation: "#e76f51"    # Coral - Innovation/Remote

functional:
  ai_agents: "#e9c46a"             # Gold - AI/Intelligence
  security: "#6f42c1"              # Violet - Security/Governance
  connect_care: "#28a745"          # Green - Health System
  manufacturing: "#fd7e14"         # Orange - Biomanufacturing
  indigenous: "#dc3545"            # Red - Indigenous Health

status:
  success: "#28a745"
  warning: "#ffc107"
  neutral: "#6c757d"
```

**Style Requirements:**

- Professional, technical, suitable for academic infrastructure grant
- Clean rectangular boxes with rounded corners (4-8px radius)
- Directional arrows with subtle shadows
- Sans-serif typography with clear hierarchy
- White or very light gray (#f8f9fa) background
- Landscape 16:9 format, 300 DPI minimum
- No cartoonish elements, excessive gradients, or stock photo aesthetics

---

## Priority Tier 1: Critical Diagrams (5)

### 1. CTAP Five-Suite Infrastructure Ecosystem

**Purpose**: Show how five infrastructure suites integrate around a central AI-enabled data platform—demonstrating CTAP as unified infrastructure, not a collection of equipment purchases.

**Location**: RTA Research Plan (Section 2.3), Executive Summary, Benefits

**Priority**: Tier 1 (Critical)

### Image Generation Prompt

```
Create a professional technical diagram showing a clinical trials platform ecosystem with five integrated infrastructure suites arranged around a central hexagonal hub.

**Layout**: Radial arrangement with central hub and five satellite nodes

**Central Element** (Deep Blue #1e3a5f):
- Large hexagon labeled "Suite 4: Data Platform & Trusted Research Environment (TRE)"
- Interior icons: cloud computing symbol, database cylinder, AI brain network
- Subtext: "$1,988,000 | TRE + CRAIDL deployment"
- Radiating connection lines to all surrounding suites

**Surrounding Suites** (arranged clockwise from top):

1. **Suite 1: Clinical Trials Infrastructure** (Teal #2a9d8f) - Top
   - Icons: hospital bed, medical cross, heart monitor
   - Subtext: "$1,640,000 | CIU + CHIM + Autonomic Lab"
   - Data flow arrow TO center: "Real-time clinical data"

2. **Suite 2: Living Biorepository** (Light Blue #48cae4) - Top-right
   - Icons: test tube, snowflake, DNA helix
   - Subtext: "$2,510,000 | OpenSpecimen + Cold Storage"
   - Data flow arrow TO center: "Specimen-phenotype linkage"

3. **Suite 3: Translational Science** (Purple #9d4edd) - Bottom-right
   - Icons: mri, molecule structure, protein
   - Subtext: "$555,000 | Imaging + Omics Integration"
   - Data flow arrow TO center: "Molecular and Imaging phenotyping"

4. **Suite 5: Trial Innovation** (Coral #e76f51) - Bottom-left
   - Icons: smartwatch, mobile device, satellite
   - Subtext: "$376,000 | Wearables + Decentralized"
   - Data flow arrow TO center: "Device & remote data"

5. **Amii CRAIDL Partnership** (Gold #e9c46a) - Top-left
   - Icons: AI chip, code brackets, lightbulb
   - Subtext: "$650,000 | 8 AI Agents, Amii"
   - Data flow arrow TO center: "AI agent development"

**Outer Ring**: Five flagship program labels positioned between suites with a connecting ring between suites (do not repeat any labels):
- "Novel Cell Therapies" (between Suites 1-2)
- "New HCV Vaccine" (between Suites 2-3)
- "Cardio-Renal-Metabolic" (between Suites 3-5)
- "Pediatric Rare Disease" (between Suites 5-Amii)
- "Applied AI Innovation" (between Amii-1)

**Bottom Banner**:
- "Clinical Trials Accelerator Plaform"
- "Kipnes Health Research Institute - Functional Home"

**Style**: Clean, professional, suitable for CFI Infrastructure Justification. White background. Landscape 16:9.
```

### Additional Notes

- Emphasize bidirectional data flows showing integration
- Consider animation version showing data flowing through system
- Alternative: Concentric rings rather than radial layout

---

### 2. Three-Zone Trusted Research Environment Architecture

**Purpose**: Demonstrate privacy-by-architecture design that enables AI innovation while ensuring compliance with HIA, STRAC, and international standards. Shows reviewers that data governance is engineered into infrastructure, not added as policy.

**Location**: RTA Infrastructure Justification (Section 2.3), Suite 4 technical specification

**Priority**: Tier 1 (Critical)

### Image Generation Prompt

```
Create a professional data architecture diagram showing a three-zone Trusted Research Environment for clinical trials data, with clear security boundaries and data flow controls.

**Layout**: Three horizontal zones separated by security boundaries, left-to-right data flow

**ZONE 1 (Left third, Pink gradient #ffccd5 to #fff0f3)**:
Header: "Zone 1: Identifiable Data" with lock icon
Subheader: "AHS Custodian Control"

Elements (stacked vertically):
- Connect Care EMR icon with "4.4M Albertans" badge
- Provincial registry databases (Cancer, Vital Statistics)
- Consent registry with participant icons
- Identity resolution service

Security badges: "HIA Protected" shield, "Snowflake Integrated" checkmark

Exit arrow: "De-identification Gateway" with transformation icon
Arrow label: "Only de-identified data crosses boundary"

**ZONE 2 (Center third, Gold gradient #fff3cd to #fff9e6)**:
Header: "Zone 2: Controlled Processing" with gear icon
Subheader: "Data Transformation & AI"

Elements (arranged in processing pipeline):
Row 1: De-identification Pipeline | Data Extraction Pipeline
Row 2: Seven hexagonal CRAIDL agent icons arranged horizontally:
- Protocol Agent (document)
- Data Mgmt Agent (database)
- Events Agent (bell)
- Ethics Agent (scales)
- Regulatory Agent (stamp)
- Budget Agent (calculator)
- In Silico Agent (brain)

Human-in-the-loop checkpoint: Person icon with approval checkmark

Compliance badges: "ICH E6(R3)" | "Health Canada" | "NIST CSF 2.0"

Exit arrow: "Governed Release" with airlock icon
Arrow label: "Reviewed outputs only"

**ZONE 3 (Right third, Green gradient #d4edda to #f0fff4)**:
Header: "Zone 3: Research Environment" with beaker icon
Subheader: "Researcher Workspaces"

Elements (arranged as accessible resources):
- Trial Data Lake (S3 bucket icon)
- Data Integration (Omics) (chart icon)
- GPU Compute Cluster (processor icon)
- Researcher Portal (laptop icon)

Output arrows pointing right:
- "Local and Federated Analysis" (chart)
- "No Re-identification" (crossed-out person)
- "VITAL Integration" (network)

**Bottom Banner** (full width):
"Complete Audit Trail - All Access Logged | AWS - Calgary Region"

**Decorative Elements**:
- Dashed lines between zones with padlock icons
- Small shield icons at each boundary crossing
- Zone numbers (1, 2, 3) in circles at top

**Style**: Technical architecture diagram with clear visual hierarchy. Professional colors progressing from "restricted" (warm) to "accessible" (cool). Landscape 16:9.
```

### Additional Notes

- Consider adding small "International Benchmark" comparison table showing CTAP vs. UK Biobank RAP, All of Us, FinnGen
- Zone colors intentionally progress from warm (restricted) to cool (accessible)
- Emphasize human oversight checkpoints

---

### 3. CRAIDL Agent Architecture & Governance Framework

**Purpose**: Illustrate the AI agent framework with explicit human oversight—countering concerns about autonomous AI in clinical trials. Shows CRAIDL as "tireless assistants" under human authority, not automated decision-makers.

**Location**: RTA Research Plan (Section 2.4), Governance, Applied AI Innovation Flagship

**Priority**: Tier 1 (Critical)

### Image Generation Prompt

```
Create a professional diagram showing the CRAIDL (Clinical Research Assistants for Intelligent Design and anaLysis) agent architecture with human oversight controls and staged deployment.

**Layout**: Three-tier vertical structure with human oversight at top, agents in middle, data sources/outputs at bottom

**TOP TIER - Human Oversight Layer** (Purple #6f42c1 banner):
Three governance bodies connected by horizontal line:

1. Clinical Oversight Board (group of people icon)
   - "Protocol Approval"
   - "Safety Decisions"

2. Data Access Committee (shield with checkmark)
   - "Zone Access Control"
   - "Consent Verification"

3. Audit & Compliance Monitor (magnifying glass)
   - "Regulatory Inspection Ready"
   - "Complete Audit Trails"

Governance arrows flowing down with label: "All critical decisions remain under human authority"

**MIDDLE TIER - CRAIDL Agent Framework** (Gold #e9c46a background):
Header: "8 Coordinated AI Agents - Amii Partnership ($650,000)"

Eight hexagonal agent nodes arranged in honeycomb pattern:

Row 1 (3 agents):
1. Protocol Agent (TRL 6) - Document icon - "Trial Design"
2. Data Management Agent (TRL 6) - Database icon - "EDC & Quality"
3. Ethics Agent (TRL 6) - Scales icon - "Consent & REB"

Row 2 (3 agents):
4. Regulatory Agent (TRL 5) - Stamp icon - "Submissions"
5. Events Agent (TRL 4) - Bell icon - "Safety Monitoring"
6. Budget Agent (TRL 4) - Calculator icon - "Contracts"

Row 3 (2 agents):
7. In Silico Agent (TRL 3) - Brain icon - "Digital Twin Feasibility"
8. AI Scribe Integration (TRL 9) - Microphone icon - "Voice-to-Structured"

Each agent shows:
- Zone access badge (color-coded: Zone 2 = gold, Zone 3 = green)
- TRL indicator badge
- Human approval checkpoint where required (person + checkmark)

Center annotation: "Prototype Validated: Protocol, Data Mgmt, Ethics, Regulatory"

**BOTTOM TIER - Data Flow Layer**:

Left side (Inputs) - Dark blue arrows flowing in:
- Connect Care (EMR icon)
- Trial EDC (form icon)
- Lab Systems (test tube)
- Living Biorepository (snowflake)
- Device Data (smartwatch)

Right side (Outputs) - Green arrows flowing out:
- Trial Protocols (document)
- REB Submissions (folder)
- CDISC Packages (package)
- Safety Reports (alert)
- Dashboards (chart)

All arrows pass through center with "Audit Trail" label

**Amii Badge** (bottom right corner):
Amii logo with text: "2.0 FTE Embedded | SDRE Access | Perpetual License"

**Style**: Modern tech diagram with hexagonal nodes suggesting agent coordination. Blue and gold color scheme. Clear TRL gradient from deployed (green) to research (amber). Landscape 16:9.
```

### Additional Notes

- TRL (Technology Readiness Level) badges show staged deployment
- Emphasize AI Scribe as production-validated (TRL 9) to demonstrate capability
- Human oversight icons at every decision point

---

### 4. Living Biorepository: Traditional vs. Living Paradigm

**Purpose**: Differentiate CTAP's biorepository concept from static storage facilities—showing why this represents a fundamental innovation, not just equipment purchases.

**Location**: RTA Infrastructure Justification (Suite 2), Research Plan

**Priority**: Tier 1 (Critical)

### Image Generation Prompt

```
Create a split comparison diagram contrasting traditional biobank approach with CTAP's Living Biorepository concept.

**Layout**: Vertical split with "vs." divider, timeline progression from top to bottom

**LEFT SIDE - "Traditional Biobank"** (Grayscale/muted colors):
Header banner: "Traditional Biobank" with static archive icon

Timeline (vertical, top to bottom):

1. Collection Point (single dot):
   - Calendar icon "Day 0"
   - Clipboard icon "Point-in-time metadata"
   - Person silhouette (gray)

2. Storage Phase (freezer icon, gray):
   - Static specimen in freezer
   - "Disconnected from clinical systems"
   - Broken link icon

3. Retrieval Phase (question mark):
   - "Manual search required"
   - "Outcome linkage: months to years"
   - Hourglass icon

4. Dead End (X mark):
   - "Single use"
   - "Static consent"
   - "No learning"

Metrics box (gray background):
- "Outcome linkage: Manual, retrospective"
- "Consent model: Binary, unchangeable"
- "Reuse potential: Limited"
- "AI integration: None"

**CENTER DIVIDER**:
Lightning bolt or transformation arrow
"vs."
"The CTAP Difference"

**RIGHT SIDE - "Living Biorepository"** (Vibrant colors, Light Blue #48cae4):
Header banner: "Living Biorepository" with pulsing heart/data icon

Timeline (vertical, top to bottom with continuous connections):

1. Collection Point (connected dot):
   - Calendar icon "Day 0"
   - Connect Care logo "Automatic EMR linkage"
   - Person silhouette (colored) with data streams

2. Continuous Enrichment Phase (animated freezer):
   - Specimen with data streams flowing in/out
   - "Real-time EMR updates"
   - "Predictive inventory management"
   - FHIR API connection icon

3. Outcome Annotation (checkmark):
   - "5-10 year automated follow-up"
   - "AI-assisted phenotyping"
   - Clock with arrow icon

4. Learning Ecosystem (circular arrow):
   - "Cross-trial reuse"
   - "Dynamic consent renewal"
   - "Continuous discovery"
   - Infinity symbol

Metrics box (green background):
- "Outcome linkage: Real-time, automated"
- "Consent model: Dynamic, participant-controlled"
- "Reuse potential: Maximized"
- "AI integration: Native"

**BOTTOM COMPARISON TABLE** (full width):

| Capability | Traditional | Living |
|------------|-------------|--------|
| EMR Integration | Batch, annual | Real-time FHIR |
| Outcome Tracking | Manual | Automated |
| Consent | Static | Dynamic |
| AI-Assisted | No | Yes |
| Cross-Trial | Ad-hoc | Governed |

**OpenSpecimen Badge** (bottom right):
"Powered by OpenSpecimen | 21 CFR Part 11 | FHIR R4"

**Style**: Clean infographic with strong visual contrast. Left side deliberately less vibrant to emphasize transformation. Landscape 16:9.
```

### Additional Notes

- The contrast should be immediately apparent at a glance
- Consider showing "data streams" as flowing lines on the Living side
- OpenSpecimen branding reinforces concrete implementation path

---

### 5. Clinical Trial Acceleration: CRAIDL Impact Timeline

**Purpose**: Quantify the acceleration that CRAIDL enables—transforming abstract AI claims into concrete timeline compression that reviewers can evaluate.

**Location**: RTA Research Plan (Objective 1), Benefits

**Priority**: Tier 1 (Critical)

### Image Generation Prompt

```
Create a timeline comparison diagram showing clinical trial startup acceleration with and without CRAIDL AI agents.

**Layout**: Two parallel horizontal timelines with compression indicators

**TOP TIMELINE - "Traditional Pathway"** (Red/Orange gradient, faded):
Header: "Without CRAIDL" with hourglass icon
Total duration bar: "12-18 months typical"

Sequential segments (left to right):
1. Protocol Development - 3 months (document icon)
   - "Manual literature review"
   - "Template searching"
   - Pain point: Stack of papers icon

2. REB Preparation - 2 months (folder icon)
   - "Manual form completion"
   - "Consent drafting"
   - Pain point: Clock icon

3. REB Review - 3 months (gavel icon)
   - "Serial queries"
   - "Multiple revisions"
   - Pain point: Back-and-forth arrows

4. EDC Build - 2 months (database icon)
   - "Manual CRF design"
   - "Validation testing"
   - Pain point: Bug icon

5. Site Activation - 2+ months (building icon)
   - "Sequential approvals"
   - "Training scheduling"
   - Pain point: Queue icon

Bottleneck indicators: Red warning triangles at each transition

**COMPRESSION ARROWS** (center):
Vertical arrows from top timeline to bottom timeline
Labels: "AI Compression" with percentage reductions
- Protocol: "70% faster"
- REB Prep: "85% faster"
- EDC: "80% faster"
- Activation: "50% faster"

**BOTTOM TIMELINE - "CRAIDL-Enabled Pathway"** (Green gradient, vibrant):
Header: "With CRAIDL" with rocket icon
Total duration bar: "4-6 weeks target"

Compressed segments (left to right) with agent icons:
1. AI-Assisted Protocol - 1 week
   - Protocol Agent icon (hexagon)
   - "Automated literature synthesis"
   - "SPIRIT 2025 compliant"

2. Automated REB Docs - 3 days
   - Ethics Agent icon (hexagon)
   - "Pre-filled applications"
   - "Consent generation"

3. Streamlined REB - 2 weeks
   - "AI-ready submissions"
   - "Reduced queries"

4. Auto EDC Generation - 1 week
   - Data Management Agent icon (hexagon)
   - "Protocol-to-CRF automation"
   - "CDASH compliant"

5. Parallel Activation - 1 week
   - Regulatory Agent icon (hexagon)
   - "Concurrent site prep"
   - "Digital training"

**BENCHMARK CALLOUT** (center, prominent):
Gold box with RECOVERY trial logo
"RECOVERY Trial Benchmark: Protocol to First Patient in 9 Days"
"CTAP Target: Democratize This Capability"

**IMPACT METRICS** (right side, vertical stack):
- "6x Faster Startup" (large text)
- "Earlier Patient Access" (patient icon)
- "Pandemic Readiness" (shield icon)
- "40-50% Objective 1 Target" (target icon)

**BOTTOM BANNER**:
"AI augments human expertise—all approvals remain under investigator authority"

**Style**: Gantt chart aesthetic with clear timeline progression. Strong visual compression from top to bottom. Professional grant proposal quality. Landscape 16:9.
```

### Additional Notes

- RECOVERY trial benchmark provides credible reference point
- Compression arrows make the acceleration visually obvious
- Agent icons link to CRAIDL architecture diagram

---

## Priority Tier 2: High-Value Diagrams (5)

### 6. Connect Care Integration: Alberta's Living Laboratory

**Purpose**: Show Connect Care as a unique national asset enabling trial feasibility, recruitment, and long-term follow-up at population scale.

**Location**: Benefits (Canada's Living Laboratory), Suite 4

**Priority**: Tier 2

### Prompt Summary

Provincial EMR (4.4M Albertans) as central hub with three integration pathways:

1. **Bulk Extract** (weekly): Population analytics, trial feasibility, cohort discovery
2. **FHIR API** (real-time): Enrolled participant data, safety monitoring, eSource
3. **Snowflake** (federated): AHS operational analytics, aggregate queries

Data flows to TRE Zones, then to:

- CRAIDL agents for trial design optimization
- Living Biorepository for outcome annotation
- OMOP CDM for federation (VITAL, OHDSI, DHDP)

Key differentiator callout: "No other Canadian province offers this combination of scale, integration, and real-time access."

---

### 7. Discovery-to-Production Corridor: Alberta's Unique Asset Convergence

**Purpose**: Demonstrate Alberta's complete pathway from discovery through manufacturing to clinical validation—showing why CTAP is the "glue" connecting existing investments.

**Location**: Benefits (Economic), Why University of Alberta

**Priority**: Tier 2

### Prompt Summary

Horizontal flow diagram showing end-to-end pathway:

**Discovery** (left):

- PRAIRIE Hub ($109.9M)
- Li Ka Shing Institute (Houghton HCV)
- Cryo-EM Facility ($20M)
- GlycoNet, TMIC, APM

**Manufacturing** (center):

- ACTM (Cell Therapies)
- API/DDIC (Phase I Formulations)
- CMPC ($200M, 70M doses/year)

**Clinical Validation** (right):

- CTAP (CFI $8.3M)
- Challenge Trial Unit
- Connect Care Integration
- CRAIDL Automation

**Key Pathway Ribbon** connecting all:
"MS Cell Therapies: Discovery → ACTM Manufacturing → CTAP Phase I/II"
"HCV Vaccines: Houghton Lab → PRAIRIE Hub → Challenge Unit → CMPC Scale-Up"

Bottom banner: "Alberta: Canada's Only Complete Advanced Therapeutics Corridor"

---

### 8. Federated Learning & Pan-Canadian Network Position

**Purpose**: Show CTAP as Western anchor for national clinical trials infrastructure, connecting to federal investments.

**Location**: Benefits (National Leadership), Network Integration

**Priority**: Tier 2

### Prompt Summary

Network diagram with concentric layers:

**Center**: CTAP (Alberta)

**Layer 1 - Intra-Alberta**:

- AHS (Connect Care)
- U Calgary, U Lethbridge
- CBSR federated sites

**Layer 2 - National Networks**:

- ACT-AEC (Eastern Canada, extending west via CTAP)
- PRAIRIE Hub (Pandemic preparedness)
- RareKids-CAN (Pediatric rare disease)
- CCTG (Cancer trials)
- DHDP ($49M + $108M + $165M)

**Layer 3 - International**:

- OHDSI (100+ sites, OMOP federation)
- Disease-specific consortia

Data flow indicators: "Federated queries only—aggregate results, no patient-level data movement"

Key insight: "CTAP enables participation without data migration—privacy by architecture"

---

### 9. Flagship Programs & CRAIDL Testbed Integration

**Purpose**: Show how five flagship programs serve as living testbeds for CRAIDL development, creating bidirectional value.

**Location**: Research Plan (Section 2.6), Applied AI Innovation

**Priority**: Tier 2

### Prompt Summary

Circular arrangement with CRAIDL development cycle at center:

**Five Flagship Programs** (outer ring, each with disease icon):

1. Applied AI Innovation (PHAIR Lab, AI + Health Hub)
2. Neuro-immunology & MS Cell Therapies (MS Centre, Autonomic Labs)
3. Hepatitis C & Vaccines (Houghton, Challenge Unit)
4. Cardio-Renal-Metabolic (CVC, Connect1d, ADI)
5. Pediatric Rare Disease (Stollery, RareKids-CAN)

**Center Cycle** (CRAIDL Development):
Pilot → Validation → Deployment → National Adoption → Feedback

**Bidirectional Arrows**:

- Flagships → CRAIDL: "Real trial data, domain expertise, validation testbeds"
- CRAIDL → Flagships: "Automated protocols, accelerated startup, AI tools"

Key insight: "Every flagship contributes to CRAIDL validation while benefiting from AI acceleration"

---

### 10. Learning Health System Closed Loop (GEMINI Extension)

**Purpose**: Position CTAP within the learning health system model, extending GEMINI's proof-of-concept from retrospective analytics to prospective trials.

**Location**: Suite 4 (Section 2.6), Why This Approach

**Priority**: Tier 2

### Prompt Summary

Circular diagram showing continuous improvement loop:

**Four Phases** (clockwise):

1. Clinical Data (Connect Care, EDC, Devices)
2. TRE Research (AI/ML, OMOP Analytics)
3. AI Insights (CRAIDL Agents, Digital Twin)
4. Clinical Action (Protocols, Recruitment, Monitoring)

**Outcome Data** arrow closing the loop from Phase 4 back to Phase 1

**GEMINI Benchmark** (callout box):
"GEMINI Chartwatch: 26% reduction in unexpected deaths"
"CTAP Extension: From retrospective QI to prospective trials"

**CTAP Innovation** (highlighted):

- Prospective data capture (21 CFR Part 11)
- Regulatory-grade endpoints (not just quality metrics)
- Multi-modal data (imaging, omics, wearables)

---

## Priority Tier 3: Supporting Diagrams (5)

### 11. Challenge Trial Unit: Non-Airborne CHIM Design

**Prompt Summary**: Facility layout showing BSL-2 containment for blood-borne (HCV) and enteric pathogens. 4 extended-stay isolation rooms, enhanced monitoring, pathogen preparation area, nursing station. Strategic focus callout: "Aligned with Houghton Nobel Prize-winning HCV research—airborne capacity deferred to future funding." Budget: $340,000 (vs. $990,000 airborne-capable).

---

### 12. Autonomic Function Laboratory Configuration

**Prompt Summary**: Research-grade autonomic testing setup: Tilt table (WR Medical), Finapres NOVA continuous BP, QSART system, TCD, NIRS. Dual locations: Adult (Kaye Edmonton Clinic), Pediatric (Stollery 1D). Supports Long COVID/POTS trials, diabetic neuropathy, MS autonomic dysfunction.

---

### 13. BioBank-TRE Integration Architecture

**Prompt Summary**: Technical diagram showing OpenSpecimen integration with three-zone TRE. Zone 1: Participant IDs, sample IDs, consent status. Zone 2: De-identification, linkage engine, FHIR API. Zone 3: De-identified specimen metadata via OMOP queries. Highlights: Dynamic consent workflow, outcome annotation pipeline, Connect Care FHIR integration.

---

### 14. Data Standardization Framework

**Prompt Summary**: Matrix showing data type to standard mapping:

- Trial Data → Health Canada Division 5 → ICH E6(R3) → CDISC (CDASH/SDTM)
- Clinical Data → OMOP CDM → OHDSI federation
- Specimen Data → FHIR R4 → OpenSpecimen API
- Omics Data → FAIR principles → GA4GH standards
- Device Data → ISO 13485 → Suite 5 validation

Bottom: "Local Compliance, International Harmonization"

---

### 15. Sustainability & Cost-Recovery Model

**Prompt Summary**: Stacked area chart over 5-year horizon showing funding transition:

- Year 1-2: CFI dominant (equipment, setup)
- Year 3-4: Mixed (CFI operations + emerging revenue)
- Year 5+: Cost-recovery dominant (industry services, user fees)

Revenue streams: Industry-sponsored trials, AI licensing, biobank services, training programs.
Target: Full operational sustainability by Year 5.

---

## Priority Tier 4: Supplementary Diagrams (5)

### 16. Kipnes Health Research Institute: CTAP's Functional Home

**Prompt Summary**: Organizational diagram showing Kipnes Institute structure: AI + Health Hub (Pannu, Lemermeyer) + Health Research Translation Unit as CTAP governance framework. Connection to College of Health Sciences, Forward with Purpose strategic plan, ATIS provincial priorities.

---

### 17. Implementation Timeline: 36-Month Gantt

**Prompt Summary**: Three-phase Gantt chart:

- Phase 1 (Months 1-12): Foundation—equipment procurement, TRE build-out, CRAIDL Year 1
- Phase 2 (Months 13-24): Integration—Connect Care linkage, flagship pilots, agent deployment
- Phase 3 (Months 25-36): Full Operations—national federation, cost-recovery, AI dissemination

Early wins highlighted at each phase transition.

---

### 18. Indigenous Clinical Trials Partnership Model

**Prompt Summary**: Governance diagram showing ICTU (Indigenous Clinical Trials Unit) integration:

- Community-led research design
- OCAP principles in TRE architecture
- IAM-controlled data access
- Consent materials in Cree, Dene, Blackfoot, Michif
- Community benefit agreements

Explicit targets: 15% Indigenous enrollment, 20% rural participation.

---

### 19. International TRE Benchmarking

**Prompt Summary**: Comparison matrix: CTAP vs. UK Biobank RAP, All of Us, FinnGen, Genomics England across:

- Zone model (CTAP: 3-zone)
- Prospective trials (CTAP: Yes, others: Limited/No)
- Real-time EMR (CTAP: Yes, others: Periodic)
- OMOP CDM (CTAP: Yes)
- AI agents (CTAP: Native)
- Regulatory grade (CTAP: HC Division 5 + ICH E6(R3))

Conclusion: "CTAP meets or exceeds international benchmarks while addressing Canadian regulatory context."

---

### 20. Expected Outcomes Dashboard 2031

**Prompt Summary**: KPI dashboard visualization showing 8 objectives as metric cards:

1. Trial startup: 12+ months → 6 months (40-50% reduction)
2. Recruitment efficiency: 2x improvement
3. First-in-human trials: 5+ including 2 vaccine challenge
4. Biospecimen integration: 70% of trials
5. CRAIDL agents: 8 deployed, 5+ institutions adopting
6. Challenge studies: 3+ CHIM protocols validated
7. National interoperability: 10+ institutional partners
8. HQP trained: 150+ (20% Indigenous/underrepresented)

---

## Implementation Approach

### Recommended: Hybrid AI + Vector Refinement

1. **Generate conceptual layouts** using Nano Banana or DALL-E 3 from prompts above
2. **Recreate in vector tools** (Figma, Lucidchart, Draw.io) for precise control and editability
3. **Maintain consistent style** using color palette and typography defined above
4. **Export multiple formats**: PNG (300 DPI) for documents, SVG for web, PDF for print

### Tool Recommendations by Diagram Type

| Diagram Type                    | Primary Tool        | Backup Tool |
| ------------------------------- | ------------------- | ----------- |
| Architecture (TRE, Integration) | Lucidchart          | Draw.io     |
| Timelines (Gantt, Acceleration) | Mermaid + Figma     | PowerPoint  |
| Comparisons (Before/After)      | Figma               | Canva       |
| Network (Federation)            | Gephi + Illustrator | Lucidchart  |
| Infographics (Dashboard)        | Canva               | Figma       |
| Technical (Data Flow)           | Draw.io             | PlantUML    |

---

## Deliverables Summary

| #     | Diagram                          | Priority | Target Document           | Complexity |
| ----- | -------------------------------- | -------- | ------------------------- | ---------- |
| 1     | Five-Suite Ecosystem             | Tier 1   | Research Plan, Benefits   | High       |
| 2     | Three-Zone TRE                   | Tier 1   | Infrastructure, Suite 4   | High       |
| 3     | CRAIDL Agent Architecture        | Tier 1   | Research Plan, Governance | High       |
| 4     | Living Biorepository Concept     | Tier 1   | Infrastructure, Suite 2   | Medium     |
| 5     | Trial Acceleration Timeline      | Tier 1   | Research Plan, Benefits   | Medium     |
| 6     | Connect Care Integration         | Tier 2   | Benefits, Suite 4         | Medium     |
| 7     | Discovery-to-Production Corridor | Tier 2   | Benefits, Why Alberta     | Medium     |
| 8     | Federated Network Map            | Tier 2   | Benefits, Network         | Medium     |
| 9     | Flagship Programs                | Tier 2   | Research Plan             | Medium     |
| 10    | Learning Health System Loop      | Tier 2   | Suite 4, Approach         | Low        |
| 11-20 | Supporting/Supplementary         | Tier 3-4 | Various                   | Low-Medium |

---

## Output Location

Save generated diagrams to:

```
assets/figures/
├── 01_ctap_ecosystem.png
├── 02_tre_three_zone.png
├── 03_craidl_architecture.png
├── 04_biorepository_living.png
├── 05_trial_acceleration.png
├── 06_connect_care_integration.png
├── 07_discovery_production.png
├── 08_federation_network.png
├── 09_flagship_programs.png
├── 10_learning_health_system.png
└── [supporting diagrams...]
```

Update RTA and suite documents to reference figures using markdown image syntax:

```markdown
![CTAP Five-Suite Ecosystem](assets/figures/01_ctap_ecosystem.png)
```
