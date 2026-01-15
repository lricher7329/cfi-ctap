# Suite 5: Trial Innovation Tools & Wearables

## Concise Technical Specification

**Budget: $1,305,000 CAD**

**Version:** 1.2
**Date:** January 2026

---

## Executive Summary

Suite 5 enables decentralized, patient-centric clinical trials through modern eConsent platforms, wearable devices, telehealth infrastructure, and participant engagement tools. This suite is critical for equity objectives—reaching Indigenous communities, rural populations, and participants who cannot travel to urban academic centres.

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
| **Objective 5** | CRAIDL Ethics Agent → eConsent integration     |
| **Objective 7** | HQP training in decentralized trial methods     |

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
| MS Cell Therapies                | Long-term wearable monitoring post-infusion     |
| Precision Population Health      | Decentralized recruitment, Indigenous co-design |
| Pediatric Rare Disease           | Family-friendly eConsent, remote monitoring     |
| Cardio-Renal-Metabolic           | BP/glucose wearables, telehealth follow-up      |
| Digital Health Device Validation | Device validation pathway, iSMART partnership   |

---

## 12. Digital Health Ecosystem Partners

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

*Document Version: 1.2 | January 2026 | CFI Innovation Fund 2027*
