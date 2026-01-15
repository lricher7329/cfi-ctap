# AI Image Generation Prompt: CTAP Infrastructure Overview Diagram

## Style Guidelines

Clean, professional infographic style suitable for a Canadian federal grant application. Use a modern, minimalist design with clear visual hierarchy. Color palette should be institutional/academic (blues, teals, grays) with accent colors for different functional domains. No decorative elements—every visual element should convey information.

## Overall Layout

Pentagon or circular hub-and-spoke architecture with CTAP/CRAIDL at the center, surrounded by five interconnected infrastructure suites, with external ecosystem partners on the periphery. Show data/specimen flows with directional arrows.

---

## Central Hub: CRAIDL AI Operations

**Position:** Center of diagram

**Visual:** Circular hub labeled "CRAIDL" (Clinical Research Assistants for Intelligent Design and anaLysis) with subtitle "AI-Enabled Operations Hub"

**Key elements inside hub (8 AI agents):**

- In Silico Assessment Agent
- Protocol Agent
- Data Management Agent
- Events Agent
- Ethics Agent
- Regulatory Agent
- Budget & Contracts Agent
- Imaging/Radiomics Agent

**Notation:** "8 AI agents developed with Amii"

---

## Five Infrastructure Suites (Inner Ring)

Arrange as five segments around central hub, connected by bidirectional arrows:

### Suite 1 - Clinical Trials Participant & Procedure Infrastructure

- **Color:** Deep blue
- **Icon:** Clinical/medical symbol (infusion chair or stethoscope)
- **Budget:** $2,390,000
- **Sub-elements:**
  - Adult CIU (UAH MacKenzie Centre) - 8-bed Phase I-IV, Level 2 containment
  - Pediatric CIU (Stollery Oilers Clinic) - Phase I pediatric (1 of 2 in Canada)
  - Vaccine Challenge Trial Unit - 4 negative-pressure isolation rooms (CHIM capability)
  - Pediatric Rare Disease Unit - RareKids-CAN Western anchor
  - Point-of-care laboratory - STAT safety labs
  - IP Pharmacy - USP 797/800, automated dispensing

### Suite 2 - Living Biorepository & Cell Manufacturing

- **Color:** Teal/green
- **Icon:** Biospecimen/sample vial or freezer symbol
- **Budget:** $3,860,000
- **Sub-elements:**
  - 20× -80°C chest freezers with CO2 backup
  - 3× LN2 vapor-phase dewars (150,000+ sample capacity)
  - Automated sample handling (Tecan Freedom Evo 200)
  - OpenSpecimen LIMS - FHIR R4 integration, 21 CFR Part 11 compliant
  - Connect Care real-time EMR linkage
  - ACTM integration (GMP cell manufacturing)
- **Key concept:** "Living" biorepository with dynamic outcome annotation

### Suite 3 - Translational Science Integration

- **Color:** Purple
- **Icon:** DNA helix or molecular structure
- **Budget:** $1,480,000
- **Sub-elements (Three Pillars):**
  - Protocol Integration Services - SOPs, consent language, collection kits
  - Quality Bridge Infrastructure - Pre-analytical QC, cold-chain logistics
  - Data Return Pipeline - ETL pipelines, OMOP molecular extensions
- **Partner Facilities (connected external nodes):**
  - ACE Core (single-cell, spatial transcriptomics)
  - Alberta Cryo-EM ($20M facility)
  - GlycoNet (glycomics)
  - TMIC Metabolomics (50K samples/year)
  - Alberta Proteomics

### Suite 4 - Data Platform, Secure Environments, AI/HPC

- **Color:** Orange/amber
- **Icon:** Database/cloud/AI chip symbol
- **Budget:** $2,805,000
- **Sub-elements:**
  - Three-Zone Trusted Research Environment (TRE)
    - Zone 1: Identifiable (AHS extracts, consent registry)
    - Zone 2: Controlled (de-identification, OMOP/CDISC transformation)
    - Zone 3: Research (trial data lake, OMOP analytics)
  - OMOP Common Data Model - OHDSI federation (100+ sites)
  - Connect Care FHIR API integration (4.4M patients)
  - REDCap connectivity
  - AI Scribe integration (Dr. Ross Mitchell's "Jenkins")

### Suite 5 - Trial Innovation Tools & Wearables

- **Color:** Coral/pink or light blue
- **Icon:** Smartwatch/wearable device or mobile phone
- **Budget:** $1,056,000
- **Sub-elements:**
  - eConsent platform - 10+ languages including Cree, Blackfoot, Dene, Michif
  - 40 tablets, 20 kiosks, 20 study smartphones
  - Wearable devices - ECG patches, CGMs, BP monitors, actigraphy
  - 20 telehealth kits for rural/Indigenous sites
  - Indigenous Clinical Trials Unit (ICTU) integration
  - OCAP-compliant data governance

---

## External Ecosystem Partners (Outer Ring)

Position around the five suites, connected by arrows showing relationships:

### Discovery Ecosystem (Top)

- **Li Ka Shing Institute of Virology**
  - Sub-label: "Dr. Michael Houghton (Nobel 2020)"
  - Sub-label: "Hepatitis C vaccine program"
- **MS Centre**
  - Sub-label: "29 affiliates"
  - Sub-label: "Dr. Voronova (CHARM, CFI IF 2025)"
- **Stollery Children's Hospital / WCHRI**
  - Sub-label: "Translational Genomics Hub"
  - Sub-label: "RareKids-CAN"

### Biomanufacturing Capacity (Left)

- **Critical Medicines Production Centre**
  - Sub-label: "$200M investment"
  - Sub-label: "70M doses/year by 2026"
- **PRAIRIE Hub**
  - Sub-label: "$109.9M pandemic preparedness"
- **Alberta Cell Therapy Manufacturing (ACTM)**
  - Sub-label: "GMP cell production"
  - Sub-label: "CAR-T program (Dr. Michael Chiu)"
- **Applied Pharmaceutical Innovation (API)**

### Provincial Health System (Right)

- **Connect Care** - large node
  - Sub-label: "Province-wide Epic EMR"
  - Sub-label: "682 sites, 4.4M Albertans"
  - Sub-label: "FHIR API access"
- **Alberta Health Services**

### AI/Compute Infrastructure (Bottom)

- **Amii** (Alberta Machine Intelligence Institute)
  - Sub-label: "10+ CIFAR AI Chairs in health/life sciences"
  - Sub-label: "Pioneers of modern reinforcement learning"
- **AWS Calgary Region**
  - Sub-label: "Secure cloud infrastructure"
  - Sub-label: "STRAC/NSGRP compliant"

---

## Data Flow Arrows

Show these key flows with labeled directional arrows:

1. **Discovery-to-Trials flow** (green arrows):
   - Li Ka Shing → Suite 1 Challenge Trial Unit
   - MS Centre → Suite 2 Cell Manufacturing → Suite 1 CIU

2. **Specimen flow** (blue arrows):
   - Suite 1 Clinical Sites → Suite 2 Living Biorepository → Suite 3 Omics Facilities
   - Suite 2 → ACTM (cell therapy pathway)

3. **Data flow** (orange arrows):
   - Connect Care → Suite 4 TRE (Zone 1 → Zone 2 → Zone 3)
   - Suite 4 → CRAIDL AI Agents (bidirectional)
   - Suite 4 → OHDSI/VITAL networks (federated queries)

4. **Participant engagement flow** (coral arrows):
   - Suite 5 eConsent → Suite 4 CRAIDL Ethics Agent
   - Suite 5 Wearables → Suite 4 Data Platform
   - Suite 5 Telehealth → Rural/Indigenous communities

5. **Translational loop** (purple arrows):
   - Suite 3 → Partner facilities (sample flow)
   - Partner facilities → Suite 4 (data return pipeline)

---

## Key Metrics Callouts

Include these statistics as small annotations:

- **$11.6M CFI Request** (40% CFI + 60% matching)
- "Canada's first AI-native clinical trials platform"
- "8 AI agents automating complete trial lifecycle"
- "5-10 year automated outcome annotation"
- "Canada's first academic human challenge trial facility"
- "1 of 2 Canadian pediatric Phase I sites"
- "10+ Indigenous languages supported"

---

## Flagship Programs Bar

Optional horizontal bar showing four flagship programs:

| Program | Leadership | Primary Suites |
|---------|------------|----------------|
| Neuro-immunology & MS Cell Therapies | MS Centre, ACTM, Dr. Voronova | Suite 2, Suite 3 |
| Hepatitis C & Vaccine Trials | Dr. Houghton (Nobel 2020), Li Ka Shing | Suite 1, Suite 2 |
| Cardio-Renal-Metabolic Population Health | Canadian VIGOUR Centre, Connect1d Canada | Suite 4, Suite 5 |
| Pediatric Rare Disease (RareKids-CAN) | Stollery, WCHRI | Suite 1, Suite 3 |

---

## Legend/Key

Small legend in corner showing:

- Arrow types (data flow, specimen flow, participant engagement, translational)
- Color coding for each of five suites
- Partner vs. CTAP-owned infrastructure distinction

---

## Technical Notes for AI Generator

- Resolution: High-res suitable for print (300 DPI minimum)
- Aspect ratio: 16:9 or 4:3 landscape for presentation use
- Text must be legible at reduced size (minimum 8pt equivalent)
- Avoid 3D effects, gradients, or shadows—flat design preferred
- All connections should be clearly traceable
- Ensure accessibility: sufficient contrast, colorblind-friendly palette
- Leave space for CFI logo placement (top-right corner)
- University of Alberta branding colors if possible (green/gold accents)
- Consider UAlberta official colors: Green (#007C41), Gold (#FFDB05)

---

## Key Visual Message

The diagram should communicate CTAP's core value proposition: **five tightly integrated infrastructure suites surrounding an AI-enabled operations hub (CRAIDL), connected to Alberta's unique ecosystem of discovery infrastructure, biomanufacturing capacity, provincial health system, and AI/compute expertise**—creating Canada's first AI-native clinical trials platform where data, biospecimens, and operational knowledge continuously cycle back to accelerate discoveries.
