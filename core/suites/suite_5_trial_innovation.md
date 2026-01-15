# Suite 5: Trial Innovation Tools & Wearables

## Concise Technical Specification

**Budget: $1,305,000 CAD**

**Version:** 1.3
**Date:** January 2026

---

## Executive Summary

Suite 5 enables decentralized, patient-centric clinical trials through modern eConsent platforms, wearable devices, telehealth infrastructure, and participant engagement tools. This suite is critical for equity objectives—reaching Indigenous communities, rural populations, and participants who cannot travel to urban academic centres.

**Pediatric Rare Disease Innovation:** Suite 5 addresses a fundamental gap in clinical trials infrastructure by implementing caregiver-first design for pediatric rare disease trials (Section 13). Where standard platforms assume adult self-management, CTAP provides family-centric operations including multi-caregiver access, pediatric eConsent/assent orchestration, home procedures logistics, and AI-augmented small-N trial designs. Integration with CRAIDL's In Silico Assessment Agent enables synthetic control arms for rare diseases where placebo controls are ethically problematic.

---

## 1. Infrastructure Components

### 1.1 eConsent and Digital Recruitment Platform

| Component                    | Specification           | Purpose                        | Cost     |
| ---------------------------- | ----------------------- | ------------------------------ | -------- |
| Enterprise eConsent platform | 5-year license          | Electronic consent, re-consent | $250,000 |
| Patient portal integration   | Connect Care compatible | Participant access             | $50,000  |
| Digital recruitment module   | AI-assisted matching    | Trial-participant matching     | $100,000 |
| Multilingual support         | 10+ languages           | Equity access                  | Included |

**CRAIDL Integration:** Ethics Agent generates consent forms directly into eConsent platform.

**AI Scribe Consent Integration:** Dr. Ross Mitchell's AI Scribe ("Jenkins")—developed with Amii and deployed across 10 Alberta emergency departments—extends CTAP's consent capabilities through voice-first documentation. During consent conversations, AI Scribe generates real-time transcripts documenting participant questions, comprehension markers, and the complete consent dialogue. This creates a regulatory-compliant audit trail while improving the consent experience—"patients report better face-to-face interactions and eye contact, instead of looking at computer screens." The open-source AI Scribe platform enables CTAP customization for multilingual consent support and culturally appropriate Indigenous community engagement.

**Data Architecture:** AI Scribe data flows to Suite 4's TRE via the Jenkins API (see Suite 4, Section 1.3), enabling voice-to-structured data transformation for trial visit documentation, consent audit trails, and natural language adverse event capture.

### 1.2 Mobile Devices and Kiosks

| Equipment           | Quantity   | Purpose                          | Cost             |
| ------------------- | ---------- | -------------------------------- | ---------------- |
| Tablets for consent | 40         | In-clinic eConsent               | $40,000          |
| Clinic kiosks       | 20         | Self-service check-in, ePRO      | $100,000         |
| Study smartphones   | 20         | Decentralized trial participants | $20,000          |
| Mobile data plans   | 80 devices | Connectivity                     | $40,000 (5-year) |

### 1.3 Wearable Devices

| Device Type                 | Quantity         | Purpose                    | Cost     |
| --------------------------- | ---------------- | -------------------------- | -------- |
| ECG patches                 | 100              | Cardiac safety monitoring  | $150,000 |
| Blood pressure monitors     | 100              | Remote BP tracking         | $50,000  |
| Actigraphy devices          | 50               | Sleep, activity monitoring | $75,000  |
| Continuous glucose monitors | (trial-specific) | Diabetes trials            | $50,000  |

**Data Flow:** Wearable data flows to Suite 4 via secure APIs, integrated with EDC.

### 1.4 Telehealth and Remote Monitoring

| Component                  | Quantity           | Purpose                | Cost     |
| -------------------------- | ------------------ | ---------------------- | -------- |
| Telehealth kits            | 20                 | Rural/Indigenous sites | $100,000 |
| Remote monitoring platform | 1                  | Central oversight      | $50,000  |
| Secure video platform      | Enterprise license | Virtual visits         | $25,000  |

**AI Scribe for Decentralized Trials:** AI Scribe integration enables automatic documentation of telehealth trial visits, capturing structured clinical data from remote consultations without manual transcription. For decentralized and hybrid trials reaching rural and Indigenous communities, this eliminates the documentation burden that often limits remote participation. AI Scribe's local data processing (all data stays within Alberta) addresses data sovereignty requirements for Indigenous community engagement.

### 1.5 Dashboards and Oversight Tools

| Component                  | Specification      | Purpose                  | Cost                |
| -------------------------- | ------------------ | ------------------------ | ------------------- |
| Trial oversight dashboard  | Real-time metrics  | Study management         | $50,000             |
| Participant engagement app | iOS/Android        | Communication, reminders | $80,000             |
| CRAIDL output interface    | Custom development | AI agent visualization   | Included in Suite 4 |

### 1.6 Digital Health Device Validation Program

CTAP positions Suite 5 as the **clinical validation hub** for UAlberta's digital health innovation ecosystem—providing regulatory-grade trial infrastructure for devices and platforms developed by UAlberta researchers. In partnership with **iSMART** (the only GLP-compliant preclinical facility in Western Canada) and the **Digital Health Unit** (NACTRC/CTO), CTAP delivers the validation pathway from feasibility through Health Canada approval.

**CTAP's Role:** Suite 5 provides trial operations infrastructure (validation protocols, data integration, regulatory support) for digital health innovations. Platform development and technical infrastructure remain with device developers and their respective funding sources. This complementary model avoids duplication while ensuring UAlberta innovations have a clear pathway to clinical validation.

| Component                    | Specification             | Purpose                         | Cost               |
| ---------------------------- | ------------------------- | ------------------------------- | ------------------ |
| Device data integration APIs | Custom development        | Ingest data from novel devices  | $75,000            |
| Validation protocol library  | SOPs, templates           | Standardized validation designs | $25,000            |
| Sensor development equipment | Network analyzer, testing | Support Gupta/Light labs        | $50,000            |
| Reference device pool        | CGM, BP monitors          | Comparison standards            | $25,000            |
| **Subtotal**           |                           |                                 | **$175,000** |

#### Device Validation Pathway (with iSMART)

| Stage                              | Facility            | Capability                               |
| ---------------------------------- | ------------------- | ---------------------------------------- |
| 1. Preclinical Testing             | iSMART GLP Facility | OECD GLP / FDA 21 CFR Part 58 compliance |
| 2. Early Feasibility (N=10-30)     | Suite 5 + iSMART    | Motion tracking, EMG, VR validation      |
| 3. Pivotal Validation (N=50-200)   | Suite 1 + Suite 5   | Multi-site, regulatory-ready             |
| 4. Real-World Performance (N=200+) | Suite 4 + Suite 5   | Decentralized, post-market               |

#### Active Device Pipeline

The following UAlberta-developed devices and platforms represent the initial validation pipeline. CTAP provides trial infrastructure; platform development is funded through researchers' respective grants and programs.

| Device/Platform               | Developer                                  | Stage                                                | CTAP Validation Role |
| ----------------------------- | ------------------------------------------ | ---------------------------------------------------- | -------------------- |
| AI Scribe ("Jenkins")         | Dr. Ross Mitchell / Amii                   | **Deployed** (10 Alberta EDs, 6,700+ sessions) | Data integration, trial documentation |
| Chronic disease apps*         | Dr. Puneeta Tandon                         | RCT-validated                                        | Decentralized trial deployment |
| Microwave glucose sensor      | Dr. Peter Light / Dr. Masoud Baghelani     | Proof-of-concept                                     | Early feasibility trials |
| Diabetic wound sensor         | Dr. Manisha Gupta                          | Development                                          | Validation protocol design |
| Neuropathy sensor             | Dr. Manisha Gupta                          | Development                                          | Validation protocol design |
| 3MDR VR PTSD therapy          | HiMARC / Dr. Brémault-Phillips             | Clinical trials                                      | Multi-site coordination |
| Smart-e-Pants / SOCC          | iSMART / Dr. Vivian Mushahwar              | Clinical validation                                  | Pivotal trial support |
| Wearable respiratory monitors | Digital Health Unit / Dr. Giovanni Ferrara | Pilot studies                                        | Data integration, remote monitoring |

*Platform development for chronic disease management apps (Heal-Me, EMPOWER) is led by Dr. Tandon through separate funding. CTAP provides validation infrastructure and decentralized trial operations support.

**iSMART Equipment Access:** iSMART provides access to specialized validation equipment including Vicon/OptiTrack motion capture, Trigno EMG systems, Valve Index VR, and Indego Exoskeleton with FES for rehabilitation device trials.

---

## 2. Objectives Supported

| Objective             | Suite 5 Contribution                            |
| --------------------- | ----------------------------------------------- |
| **Objective 2** | 15% Indigenous, 20% rural participation targets |
| **Objective 3** | RareKids-CAN pediatric rare disease infrastructure (Section 13) |
| **Objective 5** | CRAIDL Ethics Agent → eConsent integration; In Silico Assessment → synthetic controls |
| **Objective 7** | HQP training in decentralized trial methods, pediatric trial operations |

---

## 3. Equity-Focused Design

Suite 5 operationalizes CTAP's commitment to equity through intentional design for historically underserved populations. This aligns with the University of Alberta's Access, Community, and Belonging (ACB) framework and CIHR's Strategy for Patient-Oriented Research (SPOR).

### 3.1 Indigenous Community Engagement and ICTU Integration

Suite 5 tools are developed in consultation with UACT's **Indigenous Clinical Trials Unit (ICTU)**—Canada's first Indigenous-designed clinical trials infrastructure—ensuring self-determination in health research innovation.

| Element                          | Approach                                                                          |
| -------------------------------- | --------------------------------------------------------------------------------- |
| **ICTU Consultation**      | All Suite 5 tools reviewed with ICTU before deployment                            |
| **Co-design**              | Community input on consent processes, recruitment materials, interfaces           |
| **Language Access**        | Indigenous language options: Cree (Plains/Woods), Blackfoot, Dene, Michif         |
| **Data sovereignty**       | OCAP principles enforced via IAM roles; Indigenous Data Steward approval required |
| **Cultural safety**        | Indigenous health navigators supporting participant recruitment and retention     |
| **Community benefit**      | Research results returned to communities first                                    |
| **AI Scribe Localization** | Voice recognition customization for Indigenous language speakers                  |

**OCAP Enforcement:**
The eConsent platform and Participant Engagement Portal enforce OCAP principles technically:

- Indigenous participant data tagged at collection
- Access controls require Indigenous Data Steward approval
- Data custody determined by community preference
- Community-level consent options for collective data use

### 3.2 Rural and Remote Access

| Element                    | Approach                                                                        |
| -------------------------- | ------------------------------------------------------------------------------- |
| Telehealth kits            | Enable remote participation without travel to Edmonton                          |
| Mobile connectivity        | Cellular data plans for devices in areas with limited infrastructure            |
| Local partnerships         | Rural clinic collaboration (satellite sites in Peace Country, Northern Alberta) |
| Travel support             | Covered where in-person visits required                                         |
| Decentralized trial design | AI Scribe enables trial documentation from any location                         |
| Asynchronous communication | Participant portal allows engagement outside business hours                     |

### 3.3 Accessibility

| Element                           | Approach                                                           |
| --------------------------------- | ------------------------------------------------------------------ |
| **eConsent formats**        | Audio, video, large text, screen reader compatible                 |
| **Reading level**           | Plain language at Grade 6-8 reading level                          |
| **Device accessibility**    | Voice control, screen readers, high contrast modes                 |
| **Multiple languages**      | 10+ languages including French, Spanish, Arabic, Mandarin, Tagalog |
| **Cognitive accessibility** | Simplified workflows, progress indicators, break options           |
| **Physical accessibility**  | Kiosk height adjustable; tablet stands for limited mobility        |

### 3.4 Patient-Oriented Design and Co-Design Methodology

Suite 5 embodies SPOR principles through patient partnership in tool development:

| Element                              | Approach                                                         |
| ------------------------------------ | ---------------------------------------------------------------- |
| **Patient partners in design** | Patient representatives on eConsent platform selection committee |
| **Usability testing**          | Testing with diverse participant groups before deployment        |
| **Disability community input** | Accessibility testing with disability advocates                  |
| **Plain language review**      | All materials reviewed by patient partners for comprehension     |
| **Iterative feedback**         | Continuous improvement based on participant experience           |
| **Compensated participation**  | Patient partners receive honoraria for design input              |

**Community Advisory Board Integration:**
Each flagship program's CAB provides input on Suite 5 tool deployment:

- MS CAB reviews eConsent for cell therapy trials
- Rare Disease Family Advisory reviews pediatric consent processes
- Indigenous Health Advisory reviews cultural safety of all tools

---

## 4. Participant Engagement Portal

The Participant Engagement Portal differentiates CTAP through **active participant partnership**, transforming research participants from passive sample donors to engaged partners in their health research journey. This approach builds on CBSR's 20+ years of biobanking experience—managing over 1 million samples from 26,676 participants across 78 studies—while addressing participant expectations for transparency and agency that emerged during COVID-19 surveillance collaborations.

### 4.1 Core Capabilities

| Feature                          | Description                                                              |
| -------------------------------- | ------------------------------------------------------------------------ |
| **Trial Matching**         | AI-assisted notification of relevant trials based on health profile      |
| **Dynamic Consent**        | Update preferences in real-time; granular control over data/sample use   |
| **Transparency Dashboard** | See how samples and data are used across studies                         |
| **Return of Results**      | Receive individual and aggregate findings (per consent preferences)      |
| **Community Outcomes**     | Aggregate research impact reports showing contribution to discoveries    |

### 4.2 Trial Matching Engine

The AI-assisted trial matching system connects participants with relevant research opportunities while respecting preferences and consent scope:

| Component                       | Specification                                                            |
| ------------------------------- | ------------------------------------------------------------------------ |
| **Eligibility Screening**       | Automated pre-screening against protocol criteria via Connect Care data  |
| **Preference Filtering**        | Match only to studies within participant-specified interests             |
| **Notification System**         | Multi-channel alerts (email, SMS, app) with participant-controlled frequency |
| **Opt-In Architecture**         | Participants initiate contact; researchers cannot directly recruit       |
| **Language Support**            | Notifications in participant's preferred language (10+ languages)        |

**Privacy-Preserving Design:** The matching engine operates within Suite 4's Zone 1 (identifiable) environment. Researchers receive only aggregate counts of potentially eligible participants; individual identities are disclosed only after participant opt-in.

### 4.3 Dynamic Consent Management

Building on CBSR's governance framework (Biobank Users Group, Data and Sample Stewardship Committee), the portal implements a four-tier consent model that balances participant autonomy with research utility:

| Consent Tier                 | Description                                    | Reuse Scope           | Management                |
| ---------------------------- | ---------------------------------------------- | --------------------- | ------------------------- |
| **Broad**                    | "Future research in health and disease"        | Wide reuse permitted  | Annual reminder           |
| **Disease-specific**         | "Research on [condition]"                      | Same disease area     | New study notification    |
| **Study-specific**           | "This study only"                              | No reuse              | Study closure notice      |
| **Dynamic**                  | Participant-controlled preferences             | As specified          | Real-time updates         |

**Consent Workflow Features:**

| Feature                         | Implementation                                                           |
| ------------------------------- | ------------------------------------------------------------------------ |
| **Preference Dashboard**        | Visual interface showing all active consents, uses, and requests         |
| **Withdrawal Management**       | Clear process for partial or complete withdrawal at any time             |
| **Re-consent Requests**         | Automated requests for new studies outside original consent scope        |
| **Consent History**             | Immutable audit trail of all consent decisions (21 CFR Part 11 compliant)|
| **Proxy Consent**               | Family/caregiver access for pediatric and cognitive impairment situations|

### 4.4 Transparency Dashboard

The transparency dashboard addresses participant concerns identified in CBSR's 48,340 collection events: participants want to see how their contribution matters. The dashboard provides visibility without compromising research integrity or participant privacy:

| View                            | Content                                                                  |
| ------------------------------- | ------------------------------------------------------------------------ |
| **My Samples**                  | Number, types, storage locations, and use history                        |
| **My Data**                     | Categories of data collected and linked (EMR, genomics, imaging)         |
| **Active Studies**              | Studies currently using my samples/data, with lay descriptions           |
| **Research Impact**             | Publications, discoveries, and treatments linked to my contribution      |
| **Community Contribution**      | Aggregate statistics on biorepository holdings and research outputs      |

**Living Biorepository Integration:** The transparency dashboard connects directly to OpenSpecimen's participant-facing module (Suite 2), enabling real-time visibility into sample status, storage conditions, and utilization history. This bidirectional integration supports the Living Biorepository's "consent-aware sample routing" capability.

### 4.5 Return of Results Framework

Return of results addresses participant expectations while managing clinical and ethical complexity:

| Result Type                     | Handling                                                                 |
| ------------------------------- | ------------------------------------------------------------------------ |
| **Aggregate Research**          | Annual summary of studies and publications available to all participants |
| **Individual Non-Clinical**     | Ancestry, non-pathogenic variants (per consent)                          |
| **Individual Clinical**         | Pathogenic findings routed through clinical pathway with genetic counselling |
| **Incidental Findings**         | Managed per protocol-specific incidental findings policy                 |

**TCPS2 Compliance:** Return of results processes adhere to TCPS2 Article 3.4 guidelines on disclosure of research results to participants, with appropriate genetic counselling infrastructure for clinically actionable findings.

### 4.6 Indigenous Participant Features

In partnership with ICTU (Indigenous Clinical Trials Unit), the portal implements OCAP-compliant features for Indigenous participants:

| Feature                         | Implementation                                                           |
| ------------------------------- | ------------------------------------------------------------------------ |
| **Community Consent**           | Option for community-level consent alongside individual consent          |
| **Data Steward Routing**        | All access requests routed to designated Indigenous Data Steward         |
| **Community Results First**     | Research results shared with communities before broader publication      |
| **Cultural Protocols**          | Respect for ceremonies, spiritual considerations in sample handling      |
| **Language Support**            | Cree (Plains/Woods), Blackfoot, Dene, Michif interface options           |

---

## 5. Researcher Discovery Portal

The Researcher Discovery Portal transforms CTAP's biospecimen and data holdings into an accessible, query-able resource for investigators across Canada. This capability addresses a critical gap identified in CBSR's operations: despite holding over 1 million samples across 78 studies, researchers outside the immediate network often remain unaware of available resources.

### 5.1 Discovery Without Disclosure

The portal operates on a "discover without disclose" principle—researchers can identify that specimens meeting their criteria exist without accessing identifiable information:

| Layer                           | Visibility                                                               |
| ------------------------------- | ------------------------------------------------------------------------ |
| **Public Catalog**              | High-level descriptions of collections, diseases, sample types           |
| **Authenticated Browse**        | Aggregate counts by demographics, diagnoses, sample characteristics      |
| **Feasibility Queries**         | Refined counts with specific inclusion/exclusion criteria                |
| **Access Request**              | Formal application initiated only after feasibility confirmed            |

### 5.2 Query Capabilities

Researchers query available specimens through an interface integrated with Suite 4's OMOP common data model:

| Query Type                      | Description                                                              |
| ------------------------------- | ------------------------------------------------------------------------ |
| **Clinical Phenotype**          | ICD-10 diagnoses, procedures, medications (from Connect Care linkage)    |
| **Sample Characteristics**      | Type, volume, collection date, processing method, freeze-thaw cycles     |
| **Consent Scope**               | Broad vs. disease-specific vs. study-specific                            |
| **Outcome Annotation**          | 5-10 year outcomes (mortality, disease progression, treatment response)  |
| **Linked Data**                 | Availability of genomics, imaging, metabolomics from partner facilities  |
| **Trial Origin**                | Specimens from completed CTAP-supported trials vs. population collections|

**Living Biorepository Advantage:** Unlike traditional biobank queries limited to point-in-time collection metadata, the Living Biorepository enables outcome-based queries. Researchers can identify "all samples from patients who subsequently developed [condition]" or "samples from treatment responders vs. non-responders"—capabilities impossible with static biobank systems.

### 5.3 Access Request Workflow

| Step                            | Process                                                                  |
| ------------------------------- | ------------------------------------------------------------------------ |
| **1. Browse**                   | Summary-level descriptions of specimen holdings (public)                 |
| **2. Query**                    | Filter by disease, sample type, outcomes, consent scope (authenticated)  |
| **3. Feasibility**              | System returns aggregate counts meeting criteria; no individual data     |
| **4. Request**                  | Submit access application with scientific justification, budget, timeline|
| **5. Review**                   | Data Access Committee evaluation (see Section 5.4)                       |
| **6. Agreement**                | Execution of material transfer agreement or data use agreement           |
| **7. Release**                  | Approved samples prepared for shipment; data access provisioned          |

### 5.4 Governance Integration

Access requests route through CTAP's tiered governance structure, building on CBSR's established frameworks:

| Committee                       | Role                                                                     |
| ------------------------------- | ------------------------------------------------------------------------ |
| **Data Access Committee**       | Scientific and ethical review of all requests                            |
| **Biobank Users Group (BUG)**   | Operational approval; sample availability and feasibility                |
| **Data and Sample Stewardship Committee (DSSC)** | Policy oversight; consent scope interpretation           |
| **Indigenous Data Steward**     | Required approval for any request involving Indigenous samples/data      |
| **Ethics (REB)**                | Secondary use approval per institutional requirements                    |

**Turnaround Targets:** Standard requests: 30 business days. Expedited (same PI, related question): 10 business days. Indigenous community consultation: timeline determined by community.

### 5.5 Cross-Institutional Access

The Researcher Discovery Portal supports federated queries across CTAP partner institutions and national networks:

| Network                         | Integration                                                              |
| ------------------------------- | ------------------------------------------------------------------------ |
| **CTAP Satellite Sites**        | Real-time inventory visibility across all CTAP-connected biorepositories |
| **CTRNet**                      | Canadian Tissue Repository Network federated search                      |
| **PRAIRIE Hub Partners**        | Pandemic preparedness specimen sharing agreements                        |
| **SPOR Network**                | Patient-oriented research specimen access pathways                       |

### 5.6 Industry Access

Industry-sponsored research follows enhanced governance requirements:

| Requirement                     | Rationale                                                                |
| ------------------------------- | ------------------------------------------------------------------------ |
| **Explicit Commercial Consent** | Participants must have consented to commercial use                       |
| **Canadian Benefit**            | Preference for research benefiting Canadian health system                |
| **Publication Rights**          | Academic freedom protected; no suppression of results                    |
| **IP Clarity**                  | Clear intellectual property agreements before sample release             |
| **Fair Pricing**                | Industry rates support sustainability; academic rates subsidized         |

---

## 6. Integration Points

- **Suite 2:** Consent status flows to Living Biorepository for sample release; Researcher Discovery Portal queries OpenSpecimen inventory; transparency dashboard pulls sample utilization data
- **Suite 4:** eConsent data captured in EDC; CRAIDL Ethics Agent integration; participant matching uses Zone 1 identifiable data; researcher queries use Zone 3 de-identified OMOP data
- **Wearables → Suite 4:** Continuous data streams to TRE Zone 3

---

## 7. Budget Summary

| Category                         | Amount               |
| -------------------------------- | -------------------- |
| eConsent platform                | $400,000             |
| Mobile devices and kiosks        | $200,000             |
| Wearable devices                 | $325,000             |
| Telehealth infrastructure        | $175,000             |
| Dashboards and apps              | $130,000             |
| Digital Health Device Validation | $175,000             |
| **Total**                  | **$1,305,000** |

---

## 8. Key Personnel

| Role                            | Responsibility         |
| ------------------------------- | ---------------------- |
| Patient Engagement Lead         | Participant experience |
| Indigenous Engagement Lead      | Community partnerships |
| Digital Health Coordinator      | Platform management    |
| Decentralized Trials Specialist | Remote monitoring      |

---

## 9. Implementation Timeline

| Phase              | Timeline     | Milestones                         |
| ------------------ | ------------ | ---------------------------------- |
| Platform selection | Months 1-4   | eConsent vendor selection          |
| Configuration      | Months 5-10  | Platform setup, CRAIDL integration |
| Device deployment  | Months 8-14  | Wearables, kiosks, telehealth kits |
| Pilot trials       | Months 14-20 | Test with flagship programs        |
| Full deployment    | Month 20+    | Routine operations                 |

---

## 10. Privacy and Security

| Consideration    | Approach                         |
| ---------------- | -------------------------------- |
| Data encryption  | End-to-end for all transmissions |
| Device security  | MDM, remote wipe capability      |
| Consent tracking | Immutable audit trail            |
| Wearable data    | Pseudonymized before analysis    |
| Indigenous data  | OCAP-compliant handling          |

---

## 11. Flagship Program Support

| Program                          | Suite 5 Tools                                   |
| -------------------------------- | ----------------------------------------------- |
| **Chronic Complications of Infection** | **Autonomic wearables, remote monitoring, decentralized trial operations, ePRO fatigue/cognition instruments (Section 11.1)** |
| Precision Population Health      | Decentralized recruitment, Indigenous co-design |
| Pediatric Rare Disease           | Family-friendly eConsent, remote monitoring     |
| Cardio-Renal-Metabolic           | BP/glucose wearables, telehealth follow-up, **Connect1D Canada integration** |
| **Pediatric Rare Disease**       | **Caregiver Operations Hub, eConsent/Assent Orchestrator, Home Procedures Module, ObsRO outcomes, synthetic control arms (Section 13)** |
| Cardio-Renal-Metabolic           | BP/glucose wearables, telehealth follow-up      |
| Digital Health Device Validation | Device validation pathway, iSMART partnership   |

### 11.1 Chronic Complications of Infection Program

Suite 5 provides decentralized trial infrastructure for the **Chronic Complications of Infection** flagship program, which addresses Long COVID, post-viral fatigue syndromes, and neuroinflammatory conditions arising from infectious triggers.

**Exemplar Trial:** Dr. Lawrence Richer's Phase 2/3 multi-site trial "[Taurine Supplementation in Long COVID](https://www.clinicaltrials.gov/study/NCT06721949)" (NCT06721949, n=300, CIHR-funded $3M) demonstrates the infrastructure requirements for this program: decentralized recruitment across Edmonton, Toronto, Montreal, and Sherbrooke; remote neurocognitive assessments; wearable monitoring for fatigue and activity levels; and integration with autonomic function testing (Suite 1, Section 1.0.5).

#### Integrated Physiological Assessment Suite

The Chronic Complications of Infection program leverages an **integrated suite of physiological measures** spanning autonomic, cardiovascular, cerebrovascular, and neurocognitive domains. This multi-system approach is essential for translational research—linking mechanistic biomarkers to clinical endpoints and enabling precision phenotyping of complex post-infectious syndromes.

**Translational Research Architecture:**

The integration of Suite 1's Autonomic Function Laboratories with Suite 5's wearable and remote monitoring creates a bidirectional translational pipeline:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│           INTEGRATED PHYSIOLOGICAL ASSESSMENT: BENCH TO BEDSIDE             │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  IN-CLINIC (Suite 1)                        REMOTE (Suite 5)                │
│  Deep Phenotyping                           Continuous Monitoring           │
│  ┌─────────────────────────┐               ┌─────────────────────────┐     │
│  │ Autonomic Function:     │               │ Wearable Physiology:    │     │
│  │ • Tilt table (POTS dx)  │◄────────────▶│ • ECG patches (HRV)     │     │
│  │ • Finapres (baroreflex) │  Calibration │ • Ambulatory BP         │     │
│  │ • QSART (small fiber)   │  & Validation│ • Actigraphy (activity) │     │
│  └─────────────────────────┘               └─────────────────────────┘     │
│              │                                        │                     │
│              ▼                                        ▼                     │
│  ┌─────────────────────────┐               ┌─────────────────────────┐     │
│  │ Cerebrovascular:        │               │ Neurocognitive (ePRO):  │     │
│  │ • TCD (flow velocity)   │◄────────────▶│ • PROMIS fatigue        │     │
│  │ • NIRS (oxygenation)    │  Correlation │ • MoCA (cognition)      │     │
│  │ • Autoregulation        │  Analysis    │ • PEM questionnaires    │     │
│  └─────────────────────────┘               └─────────────────────────┘     │
│                                                                              │
│  ┌──────────────────────────────────────────────────────────────────────┐  │
│  │                    Suite 4: Data Integration Hub                      │  │
│  │  • Time-series harmonization across modalities                        │  │
│  │  • ML-derived composite autonomic dysfunction score                   │  │
│  │  • Correlation of wearable signals with gold-standard lab measures    │  │
│  │  • Biomarker discovery: physiology ↔ omics integration               │  │
│  └──────────────────────────────────────────────────────────────────────┘  │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

**Physiological Domain Integration:**

| Domain | In-Clinic Assessment (Suite 1) | Remote Monitoring (Suite 5) | Translational Link |
|--------|-------------------------------|----------------------------|-------------------|
| **Cardiovascular** | Finapres beat-to-beat BP, tilt table | BP wearables, ECG patches | Baroreflex sensitivity validation → home orthostatic tracking |
| **Autonomic** | QSART, HRV during Valsalva | Continuous HRV, nocturnal HR | Postganglionic function → daily autonomic variability |
| **Cerebrovascular** | TCD flow velocity, NIRS oxygenation | Cognitive ePRO batteries | Cerebral autoregulation → brain fog correlation |
| **Sudomotor** | QSART sweat response | Symptom diaries, thermal comfort | Small fiber neuropathy staging → neuropathy progression |
| **Fatigue/Cognition** | Formal neuropsychological testing | PROMIS fatigue, MoCA, PEM | Objective function → patient-reported outcomes |

**AI-Enabled Physiological Signal Analysis:**

Suite 4's CRAIDL framework processes integrated physiological data to derive composite endpoints:

| Analysis | Input Signals | Output | Clinical Application |
|----------|---------------|--------|---------------------|
| **Composite Autonomic Dysfunction Score** | HRV, BP variability, QSART, tilt response | Single severity metric | Treatment response tracking |
| **Cerebral Autoregulation Index** | TCD + BP time series | Dynamic autoregulation curve | Brain fog phenotyping |
| **Post-Exertional Malaise Detector** | Actigraphy + HRV + ePRO | Activity-symptom correlation | PEM episode identification |
| **Wearable-Lab Calibration** | Paired in-clinic + home recordings | Device-specific correction factors | Remote endpoint validation |

**Living Biorepository Integration (Suite 2):**

Physiological assessments are linked to biospecimen collection for mechanistic studies:

| Physiological State | Biospecimen | Translational Research |
|---------------------|-------------|----------------------|
| During tilt (orthostatic stress) | Catecholamine panel | Sympathetic activation biomarkers |
| Pre/post QSART | Inflammatory cytokines | Neuroinflammation correlation |
| Fasting metabolic | Taurine, amino acid panel | Metabolic derangement in Long COVID |
| Cognitive battery | cfDNA, neurofilament light | Neurodegeneration markers |

#### MS Health Research Data Platform Foundation

The Chronic Complications of Infection program builds on the **MS Health Research Data Platform**—an existing collaboration between UAlberta neurology, AHS, and AWS that forms the operational foundation of Suite 4's TRE architecture. This platform, already deployed in AWS Cloud, demonstrates the technical feasibility of CTAP's three-zone TRE model.

**NLP-Enabled Outcomes Extraction:** The MS platform's AI capabilities extend to extract structured outcomes from unstructured clinical documentation:

| Outcome | Source Document | Extraction Method |
|---------|-----------------|-------------------|
| **EDSS (Expanded Disability Status Scale)** | Neurology clinic notes | NLP entity extraction with clinical validation |
| **Functional outcomes** | Rehabilitation assessments, nursing notes | Structured field mapping + free-text extraction |
| **MS medications** | Pharmacy records, clinic letters | Drug name recognition with dosing context |
| **MRI changes** | Radiology reports | NLP extraction of lesion counts, locations, activity |

**AI Scribe Integration:** For prospective trials, AI Scribe captures EDSS assessments and functional outcomes during clinic visits, generating structured data directly from the neurologist-patient conversation—eliminating manual abstraction while maintaining audit trails.

**Cross-Suite Data Flows:**

```
┌─────────────────────────────────────────────────────────────────────────────┐
│              CHRONIC COMPLICATIONS OF INFECTION DATA FLOWS                    │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  Suite 1: Autonomic Labs              Suite 5: Decentralized Operations     │
│  ┌──────────────────────────┐        ┌──────────────────────────┐          │
│  │ Tilt table, QSART,       │        │ Wearables, ePRO,         │          │
│  │ TCD/NIRS testing         │───────▶│ remote monitoring        │          │
│  │ (in-clinic phenotyping)  │        │ (between-visit tracking) │          │
│  └──────────────────────────┘        └──────────────────────────┘          │
│              │                                   │                          │
│              ▼                                   ▼                          │
│  ┌──────────────────────────────────────────────────────────────┐          │
│  │                      Suite 4: TRE                              │          │
│  │  • MS Health Research Data Platform (operational foundation)   │          │
│  │  • NLP extraction: EDSS, functional outcomes, MRI changes      │          │
│  │  • OMOP CDM: standardized Long COVID phenotypes                │          │
│  │  • CRAIDL: AI-enabled trial analytics                          │          │
│  └──────────────────────────────────────────────────────────────┘          │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 12. Connect1D Canada: Cardio-Renal-Metabolic Flagship Partnership

### 12.1 Strategic Overview

**Connect1D Canada** represents a transformative partnership that positions CTAP as the national hub for Type 1 Diabetes (T1D) clinical trials innovation. As Canada's premier patient-driven T1D registry—connecting over 6,000 Canadians living with T1D to research opportunities—Connect1D will be **hosted within CTAP's Trusted Research Environment (TRE)**, establishing Alberta as the data home for pan-Canadian diabetes research.

This integration directly supports CTAP's **Cardio-Renal-Metabolic (CRM) Program**, recognizing that T1D is fundamentally a cardio-renal-metabolic condition: cardiovascular disease remains the leading cause of death in T1D, diabetic kidney disease affects 30-40% of patients, and metabolic dysregulation drives complications across organ systems.

**Leadership:**
- **Dr. Peter Senior** (Scientific Co-Lead, Connect1D Canada; Director, Alberta Diabetes Institute; Charles A. Allard Chair in Diabetes Research)
- **Kate Farnsworth** (Patient Co-Lead, Connect1D Canada)
- **Dr. Justin Ezekowitz** (Canadian VIGOUR Centre; cardiovascular trials expertise)
- **Alberta Diabetes Institute Clinical Research Unit** (Phase II-III trial capabilities)

### 12.2 Connect1D TRE Integration Architecture

Connect1D Canada will be hosted within Suite 4's three-zone TRE, enabling unprecedented integration between patient-reported data, continuous glucose monitoring (CGM) streams, and Alberta's Connect Care electronic health records.

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                    CONNECT1D DATA ECOSYSTEM IN CTAP TRE                      │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  ┌──────────────────┐    ┌──────────────────┐    ┌──────────────────┐       │
│  │   Connect1D      │    │   CGM Wearable   │    │   Connect Care   │       │
│  │   Registry       │    │   Data Streams   │    │   EHR Linkage    │       │
│  │   (Patient PROs) │    │   (Dexcom, Libre)│    │   (4.4M Albertans)│      │
│  └────────┬─────────┘    └────────┬─────────┘    └────────┬─────────┘       │
│           │                       │                       │                  │
│           └───────────────────────┼───────────────────────┘                  │
│                                   ▼                                          │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │                    ZONE 1: Identifiable (Custodian Control)          │    │
│  │   • Consent verification    • Identity resolution                    │    │
│  │   • Alberta participant linkage to Connect Care                      │    │
│  └─────────────────────────────────┬───────────────────────────────────┘    │
│                                    ▼                                         │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │                    ZONE 2: Controlled Processing                     │    │
│  │   • OMOP CDM transformation    • CGM data standardization            │    │
│  │   • Glycemic variability metrics    • Cardiorenal phenotyping        │    │
│  └─────────────────────────────────┬───────────────────────────────────┘    │
│                                    ▼                                         │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │                    ZONE 3: Research Environment                      │    │
│  │   • AI-powered trial matching    • Federated T1D Exchange queries    │    │
│  │   • CRM outcome analytics    • CGM-phenotype correlation             │    │
│  └─────────────────────────────────────────────────────────────────────┘    │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 12.3 Cardio-Renal-Metabolic Research Capabilities

The Connect1D-CTAP integration enables a comprehensive CRM research platform:

| Capability | Description | Suite Integration |
|------------|-------------|-------------------|
| **Glycemic-Cardiovascular Correlation** | Link CGM time-in-range to cardiovascular outcomes via Connect Care | Suite 4 TRE Zone 2/3 |
| **Diabetic Kidney Disease Cohorts** | Identify DKD progression using eGFR trajectories + glycemic patterns | Suite 4 OMOP CDM |
| **Decentralized CGM Trials** | Remote CGM monitoring with telehealth follow-up for national reach | Suite 5 wearables + telehealth |
| **AI-Assisted Recruitment** | CRAIDL matching engine identifies eligible T1D participants | Suite 4 CRAIDL agents |
| **Biomarker Discovery** | Link biospecimens to CGM patterns and CRM outcomes | Suite 2 Living Biorepository |
| **Novel Device Validation** | Testbed for Light/Baghelani microwave glucose sensor | Suite 5 Device Validation |

### 12.4 T1D Exchange Partnership & International Federation

Connect1D Canada's partnership with the **T1D Exchange** (US-based, 100,000+ participants) positions CTAP for international federated research:

| Network | Participants | CTAP Integration |
|---------|-------------|------------------|
| Connect1D Canada | 6,000+ Canadians with T1D | **Primary host in TRE** |
| T1D Exchange (USA) | 100,000+ Americans with T1D | Federated OMOP queries |
| Diabetes Action Canada | Pan-Canadian SPOR network | Research coordination |
| CanScreen T1D | T1D screening consortium | Prevention trial pathway |

**Federated Query Capability:** Researchers can execute privacy-preserving queries across Connect1D and T1D Exchange populations without data leaving respective jurisdictions—enabling North American-scale T1D research while maintaining Canadian data sovereignty.

### 12.5 Suite 5 Tools for Connect1D Trials

| Tool | Connect1D Application |
|------|----------------------|
| **eConsent Platform** | Streamlined enrollment with dynamic consent for CGM data sharing |
| **Continuous Glucose Monitors** | 100 CGM devices for decentralized trial participants |
| **Trial Matching Engine** | AI-powered notification of relevant CRM trials to registry participants |
| **Telehealth Kits** | Remote trial visits for participants outside major centres |
| **Participant Portal** | Transparency dashboard showing CGM data contributions and research impact |
| **Blood Pressure Monitors** | Integrated BP/glucose monitoring for comprehensive CRM phenotyping |

### 12.6 Exemplar Use Cases

#### Use Case 1: SGLT2 Inhibitor Cardioprotection in T1D
A pragmatic trial evaluating SGLT2 inhibitors for cardiovascular risk reduction in T1D. Connect1D identifies eligible participants nationally; Alberta participants receive CGM + BP monitors with data flowing to TRE; Connect Care provides outcome adjudication; federated analysis includes T1D Exchange comparator data.

#### Use Case 2: CGM-Guided A1C Targets for Renal Protection
An adaptive platform trial testing individualized glycemic targets based on CGM time-in-range to prevent DKD progression. Registry recruitment enables rapid enrollment; Living Biorepository collects serial biospecimens for nephropathy biomarker discovery; CRAIDL Events Agent monitors safety signals.

#### Use Case 3: Microwave Glucose Sensor Validation
Connect1D participants serve as validation cohort for the Light/Baghelani non-invasive microwave glucose sensor. CGM provides gold-standard comparator; TRE enables correlation analysis; successful validation creates pathway to replace finger-stick monitoring.

### 12.7 Patient-Oriented Research Excellence

Connect1D embodies SPOR principles that align with CTAP's participant engagement vision:

| SPOR Principle | Connect1D Implementation |
|----------------|-------------------------|
| **Patient Governance** | Kate Farnsworth (patient co-lead); T1D community governance committee |
| **Co-Design** | Platform designed with T1D community input |
| **Research Priorities** | Community-identified priorities drive trial selection |
| **Return of Results** | Participants receive individual CGM insights and aggregate research findings |
| **Accessibility** | National reach enables rural and remote T1D participation |

### 12.8 Alberta Diabetes Institute Clinical Research Unit

The **Alberta Diabetes Institute Clinical Research Unit (ADI CRU)**, located in the Li Ka Shing Centre for Health Research Innovation, provides specialized infrastructure for Connect1D-enabled CRM trials:

| Capability | Equipment/Resource | CRM Application |
|------------|-------------------|-----------------|
| **Body Composition** | BOD POD | Metabolic phenotyping for insulin resistance studies |
| **Metabolic Testing** | Whole Body Calorimetry Unit | Energy expenditure in T1D trials |
| **Nutrition Research** | Fully-equipped research kitchen | Dietary intervention trials |
| **Islet Biology** | Islet Cell Core (Dr. Patrick MacDonald) | Beta cell function studies |
| **Phase II-III Trials** | Clinical trial beds, monitoring | Interventional CRM studies |

This infrastructure complements Suite 1's clinical spaces, enabling deep metabolic phenotyping that links to Connect1D registry data and CGM streams within the TRE.

---

## 13. Digital Health Ecosystem Partners

Suite 5's Digital Health Device Validation Program integrates multiple UAlberta research groups and facilities:

### Partner Facilities

| Facility                      | Contribution                            | Key Capability                                                  |
| ----------------------------- | --------------------------------------- | --------------------------------------------------------------- |
| **iSMART**              | Preclinical testing, device prototyping | Only GLP facility in Western Canada; 100+ specialized equipment |
| **Digital Health Unit** | Clinical trial operations               | NACTRC/CTO partnership for device trials                        |
| **HiMARC**              | Digital therapeutics research           | VR therapy, military/veteran populations                        |
| **BLINC Lab**           | AI for assistive devices                | Prosthetics, machine learning                                   |

### Research Partners

CTAP provides validation infrastructure for digital health innovations developed by these UAlberta researchers. Platform development remains with investigators through their respective funding programs.

| Researcher                               | Affiliation                              | Device/Platform                                          | CTAP Role |
| ---------------------------------------- | ---------------------------------------- | -------------------------------------------------------- | --------- |
| **Dr. Ross Mitchell**              | Medicine - General Internal, Amii Fellow | AI Scribe ("Jenkins") voice-first clinical documentation | Data integration, consent documentation |
| **Dr. Giovanni Ferrara**           | Medicine - Pulmonary                     | Digital Health Unit Lead; wearable respiratory monitors  | Trial operations coordination |
| **Dr. Vivian Mushahwar**           | iSMART Director                          | Smart-e-Pants, SOCC (pressure injury prevention)         | Pivotal trial infrastructure |
| **Dr. Patrick Pilarski**           | BLINC Lab, Amii CIFAR Chair              | AI for assistive devices; prosthetic control             | Validation protocol design |
| **Dr. Puneeta Tandon**             | Medicine - GI                            | Chronic disease management platforms*                    | Decentralized trial operations |
| **Dr. Peter Light**                | ADI Director                             | Microwave glucose sensor                                 | Device validation trials |
| **Dr. Masoud Baghelani**           | ECE                                      | Microwave glucose sensor (engineering lead)              | Early feasibility trials |
| **Dr. Manisha Gupta**              | ECE                                      | Diabetic wound and neuropathy sensors                    | Validation protocol design |
| **Dr. Suzette Brémault-Phillips**  | Rehabilitation Medicine                  | 3MDR VR therapy for PTSD                                 | Multi-site trial coordination |

*Dr. Tandon's Heal-Me and EMPOWER platforms are developed through separate funding. CTAP provides decentralized trial operations infrastructure for rural/remote deployment and clinical validation studies.

### Cross-Suite Integration

| Suite             | Digital Health Connection                                                                 |
| ----------------- | ----------------------------------------------------------------------------------------- |
| **Suite 1** | Device testing in clinical spaces; MS trial support via iSMART Rehabilitation Innovations |
| **Suite 4** | Device data flows to TRE; Mitchell AI expertise for CRAIDL                                |
| **Suite 5** | Primary validation hub; GLP testing; decentralized trials                                 |

---

*Document Version: 1.3 | January 2026 | CFI Innovation Fund 2027*

*v1.3 Changes: Added Section 12 (Connect1D Canada: Cardio-Renal-Metabolic Flagship Partnership) featuring TRE-hosted pan-Canadian T1D registry integration*
## 13. Pediatric Rare Disease Trial Operations

Suite 5 addresses a critical gap in clinical trials infrastructure: most trial platforms assume adult participants who self-manage study procedures. **Pediatric rare disease trials require fundamentally different architecture**—where caregivers are the primary users, participants may be nonverbal or technology-dependent, and families face extraordinary care burdens that standard trial designs ignore.

### 13.1 The Rare Disease Challenge

~75% of rare diseases manifest in childhood, and a meaningful fraction of pediatric rare disease participants meet criteria for "children with medical complexity" (CMC)—technology-dependent, high care burden, requiring caregiver-mediated participation. CTAP addresses this population through purpose-built infrastructure.

| Challenge | Prevalence | CTAP Response |
|-----------|------------|---------------|
| **Pediatric onset** | ~75% of rare diseases | Family-centric design as default |
| **Medical complexity** | 0.7-11.4% of children (CMC) | Accessibility-first interfaces |
| **Geographic dispersion** | ~4 patients per 100,000 (typical RD) | Decentralized trial operations |
| **Caregiver burden** | Exhausted families | Low-burden, 30-second workflows |
| **Small N trials** | Often N<50 | AI-augmented synthetic controls |

### 13.2 Caregiver Operations Hub

**CRAIDL Integration:** The Caregiver Operations Hub extends CRAIDL's Data Management Agent capabilities to family-centric trial operations.

Unlike standard participant portals, the Caregiver Operations Hub treats caregivers as first-class users:

| Feature | Specification | Rationale |
|---------|---------------|-----------|
| **Multi-caregiver access** | Up to 4 designated caregivers per participant | Parents, grandparents, respite care, teachers |
| **Caregiver attestation** | "Who completed this assessment?" attribution | Source documentation for GCP compliance |
| **Role-based permissions** | Primary vs. backup vs. observer roles | HIPAA/HIA compliance with practical flexibility |
| **Low-burden workflows** | Target: 30 seconds per data capture | Exhausted families cannot sustain long assessments |
| **Intelligent scheduling** | Visit windows with flexible reminders | Accommodates medical crises, hospitalizations |
| **Escalation pathways** | One-tap "call study team" with audit trail | Support when families need help |

**AI Scribe Integration:** For families unable to complete written assessments, AI Scribe captures caregiver verbal reports during study calls or telehealth visits, generating structured ObsRO (Observer-Reported Outcome) data with full audit trails. This voice-first approach reduces burden while maintaining regulatory-grade documentation.

### 13.3 Pediatric eConsent/Assent Orchestrator

**CRAIDL Integration:** The Ethics Agent generates consent/assent forms that feed directly into the eConsent Orchestrator, maintaining version control and audit trails across the consent lifecycle.

Pediatric consent is not a single event—it's a lifecycle of evolving capacity, multiple decision-makers, and regulatory milestones:

| Workflow | Complexity Addressed | Implementation |
|----------|---------------------|----------------|
| **Dual-parent consent** | Both parents must consent (or document exception) | Role-based signature collection with exception workflows |
| **Single-parent exceptions** | Sole custody, military deployment, incapacity | Documented attestation with legal basis |
| **Assent tracks** | Age-appropriate assent evolves with development | 7-11 year, 12-17 year, and cognitively-adapted versions |
| **Re-consent at majority** | 18th birthday requires transition to adult consent | Automated milestone tracking with reminder cascade |
| **Comprehension verification** | Especially for complex cell/gene therapies | Embedded knowledge checks per E6(R3) |
| **Ongoing consent** | Trial modifications require re-consent | Version-controlled consent with change documentation |

**AI Scribe Consent Documentation:** For consent conversations, AI Scribe generates transcripts documenting comprehension markers, questions asked, and the complete consent dialogue—creating regulatory-compliant audit trails that protect both families and investigators.

### 13.4 Home Procedures & Logistics Module

**Suite Integration:** Logistics data flows to Suite 4's TRE for monitoring; integrates with Suite 2's Living Biorepository for chain-of-custody on biological specimens.

Rare disease + pediatrics magnifies travel burden. CTAP's logistics module brings the trial to the family:

| Component | Specification | Integration Point |
|-----------|---------------|-------------------|
| **Kit fulfillment** | Automated shipment of home collection supplies | REDCap event triggers → logistics vendor API |
| **Chain-of-custody** | Temperature logging, timestamp capture, condition verification | Living Biorepository (Suite 2) specimen intake |
| **Home nursing coordination** | Mobile phlebotomy, vital signs, physical assessments | Partner nursing network with scheduling API |
| **Completion confirmation** | Real-time notification when home visit completes | EDC auto-population from nursing documentation |
| **Protocol deviation capture** | Missed window, compromised sample, equipment failure | Suite 4 safety monitoring dashboard |
| **Return logistics** | Pre-paid shipping labels, pickup scheduling | Integration with cold-chain couriers |

**Decentralized Trial Support:** For families >200km from Edmonton, Suite 5's telehealth infrastructure enables fully decentralized participation with only biospecimen collection requiring in-person contact.

### 13.5 Outcomes for Very Young and Low-Function Children

**Metricis Partnership:** CTAP's outcomes framework leverages Metricis (a specialized pediatric neurodevelopmental outcomes platform) for video-based and caregiver-reported assessments.

Standard eCOA/ePRO platforms fail children who cannot self-report. Suite 5 provides:

| Outcome Type | Population | Implementation |
|--------------|------------|----------------|
| **Observer-Reported Outcomes (ObsRO)** | All pediatric | Caregiver-completed instruments with attribution |
| **Video-based motor assessments** | Ambulatory children | Home capture with structured scoring rubrics |
| **Adaptive testing** | Variable cognitive function | Dynamic item selection based on ability |
| **Ability gating** | Nonverbal, motor-impaired, ventilated | Pre-assessment screening determines valid instruments |
| **Clinician-alternative scoring** | When caregivers cannot assess | Central rater review of video/telehealth recordings |

**CRAIDL Data Management Agent:** Configurable instrument schemas enable rapid deployment of disease-specific outcome measures. JSON Schema definitions support epilepsy seizure diaries, neuromuscular video tasks, and other rare disease-specific instruments with study-configurable taxonomies, validation rules, and quality flags.

**AI-Assisted Video Scoring:** For video-based motor assessments, computer vision algorithms provide preliminary scoring that trained raters verify, reducing turnaround time while maintaining clinical-grade accuracy.

### 13.6 Registry-to-Trial Readiness

**Suite Integration:** Connects to Suite 4's OMOP CDM for phenotype standardization; leverages RareKids-CAN federated network for cross-site recruitment.

Rare disease trials depend on natural history registries for recruitment and outcome selection. Suite 5 bridges registry data to trial operations:

| Capability | Function | Integration |
|------------|----------|-------------|
| **Phenotype structuring** | Standardized disease characterization | OMOP CDM rare disease extensions (Suite 4) |
| **Pre-screening dashboards** | Real-time view of potentially eligible participants | Connect Care linkage (enrolled participants only) |
| **Clinician packets** | Generated pre-screen summaries for referring physicians | CRAIDL Protocol Agent templates |
| **Family onboarding** | Trial expectations, burden estimates, support resources | Patient Engagement Portal (Section 4) |
| **Feasibility simulation** | Enrollment projections from registry prevalence | In Silico Assessment Agent (Suite 4) |

### 13.7 AI-Augmented Small-N Trial Design

**CRAIDL Integration:** The In Silico Assessment Agent enables small-sample rare disease trials through synthetic control generation.

For rare diseases where traditional RCT sample sizes are impossible, CTAP enables rigorous evidence generation:

| Capability | Description | AI Component |
|------------|-------------|--------------|
| **Synthetic control arms** | Generate matched controls from historical RWE | In Silico Assessment Agent / Digital Twin Engine (Suite 4, Section 4.1A) |
| **N-of-1 trial infrastructure** | Crossover designs with intensive monitoring | Wearables + REDCap + TRE analytics |
| **Bayesian adaptive designs** | Update enrollment based on accumulating evidence | CRAIDL Protocol Agent sample size calculations |
| **External control optimization** | Match historical controls on prognostic factors | OMOP CDM federated queries |
| **Causal inference methods** | Rigorous treatment effect estimation | Digital Twin Engine GFlowNet architecture |

**Digital Twin Application:** For rare disease trials where placebo controls are ethically problematic (e.g., progressive pediatric neuromuscular conditions), the Digital Twin Engine generates synthetic control arms from historical RWE data, enabling single-arm trials with rigorous causal inference per FDA guidance on RWE.

### 13.8 Rare Disease Integration Map

| CTAP Component | Rare Disease Function | Cross-Reference |
|----------------|----------------------|-----------------|
| **Caregiver Operations Hub** | Family-first trial operations | Suite 5, Section 13.2 |
| **AI Scribe** | Voice-first data capture for families | Suite 5, Section 1.1; Suite 4, Section 1.3 |
| **CRAIDL Ethics Agent** | Consent/assent document generation | Suite 4, Section 4.1 |
| **CRAIDL Data Management Agent** | Disease-specific instrument schemas | Suite 4, Section 4.1 |
| **In Silico Assessment Agent** | Synthetic controls, feasibility simulation | Suite 4, Section 4.1A |
| **Living Biorepository** | Outcome-annotated specimen management | Suite 2 |
| **RareKids-CAN Network** | Federated recruitment, registry integration | Suite 1, Section 11 |
| **OMOP Rare Disease Extensions** | Standardized phenotyping | Suite 4, Section 3.2 |
| **Telehealth Infrastructure** | Decentralized participation | Suite 5, Section 1.4 |

### 13.9 Budget Impact

Pediatric rare disease capabilities are embedded within existing Suite 5 allocations:

| Component | Allocation Source | Rare Disease Enhancement |
|-----------|-------------------|-------------------------|
| eConsent platform | $250,000 base | Assent orchestration, re-consent workflows |
| Digital recruitment | $100,000 base | Registry-to-trial matching, feasibility dashboards |
| Patient portal | $80,000 base | Caregiver Operations Hub functionality |
| Telehealth kits | $100,000 base | Prioritized allocation to rare disease sites |
| Device integration APIs | $75,000 base | Metricis outcomes platform connectivity |

**No additional budget required**—rare disease capabilities are implemented through configuration and integration rather than separate infrastructure.

---

*Document Version: 1.3 | January 2026 | CFI Innovation Fund 2027*
