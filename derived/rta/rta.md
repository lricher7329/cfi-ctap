---
title: "Clinical Trials Acceleration Platform (CTAP)"
shorttitle: "CFI 2027"
principal_investigator:
  name: Lawrence Richer, MD, PhD
  affiliation: University of Alberta
  role: Associate Dean Research, College of Health Sciences
co_principal_investigators:
  - name: Michael Houghton, PhD
    affiliation: University of Alberta
    role: Nobel Laureate (2020), Li Ka Shing Professor of Virology
  - name: James Shapiro, MD, PhD
    affiliation: University of Alberta
    role: CRC Transplant Surgery, Edmonton Protocol Pioneer
  - name: Greg Korbutt, PhD
    affiliation: University of Alberta
    role: Director, Alberta Cell Therapy Manufacturing
  - name: Peter Senior, MD, PhD
    affiliation: University of Alberta
    role: Clinical Islet Transplant Program, Connect1D Canada Lead
co_investigators:
  - name: Ross Mitchell, PhD
    affiliation: University of Alberta / Amii
    role: Canada CIFAR AI Chair, AI Scribe Lead
  - name: Lazar Atanackovic, PhD
    affiliation: University of Alberta / Amii
    role: Amii Fellow, CRAIDL In Silico Agent Lead
  - name: Bruce Ritchie, MD
    affiliation: University of Alberta
    role: Canadian BioSample Repository Director
  - name: Patrick Macdonald, PhD
    affiliation: University of Alberta
    role: IsletCore Director, ADI
  - name: Todd Alexander, MD, PhD
    affiliation: University of Alberta
    role: Rare Disease Trials Lead, WCHRI
  - name: Oana Caluseriu, MD
    affiliation: University of Alberta
    role: Translational Genomics Hub Co-Lead
funding_agency: CFI
program: Innovation Fund
competition: 2027
total_request: 10365000
grant_id:
document_type: grant
word_limits:
  strategic_alignment: "1-2 paragraphs"
  research_plan: "3 pages"
  research_team: "1 page"
  edi: "1-2 paragraphs"
  benefits: "1 page"
  infrastructure_justification: "3 pages"
  sustainability: "2 pages"
date: 2025-01-15

bibliography: ../refs/references.bib
csl: ../../../shared/csl/vancouver.csl
---
<!--
NOTES
- This file is the single source of truth.
- Agency formatting is applied at build time.
- Section order can be rearranged via Pandoc templates if required.
-->

# Clinical Trials Acceleration Platform (CTAP)

# 1. Strategic Alignment

The Clinical Trials Acceleration Platform (CTAP) directly operationalizes *Forward with Purpose: A Strategic Plan for Research and Innovation 2023-2028*, addressing grand challenges through interdisciplinary research, data-enabled discovery, and health system partnerships. CTAP's functional home is the **Dianne and Irving Kipnes Health Research Institute** (established September 2025 with a $25M philanthropic gift), whose vision is "to create a learning health system where AI enhances care, clinical trials validate breakthroughs, and specialized programs demonstrate the full cycle of research from insight to impact." The Institute's AI + Health Hub (Drs. Pannu and Lemermeyer) and Health Research Translation Unit provide governance and operational support—positioning Alberta as "the place where research discoveries reach patients not in decades, but in months." CTAP implements this vision through a closed-loop architecture: de-identified Connect Care data flows into the Trusted Research Environment for AI analysis, validated insights return to clinical teams, and outcomes data refines future discoveries—the same model that achieved 26% reduction in unexpected deaths in Ontario's GEMINI project, now extended to encompass clinical trials, biospecimens, and molecular characterization.

**Provincial Alignment:** CTAP strongly supports the Alberta Technology and Innovation Strategy (ATIS), advancing its goals in talent development, commercialization, data-driven innovation, and global competitiveness by integrating AI (Amii, 10+ CIFAR AI Chairs), advanced biomanufacturing (PRAIRIE Hub $109.9M, ACTM, CMPC $200M), secure cloud infrastructure (AWS Calgary region), and clinical trials at scale into a unified ecosystem.

# 2. Research Plan

## 2.1 Innovation: AI-Native Clinical Trials Infrastructure

**The bottleneck to transforming scientific breakthroughs into patient benefit is no longer discovery—it is validation.** The University of Alberta possesses a unique convergence: Amii (10+ CIFAR AI Chairs, 1,000 H200 GPUs); Connect Care (682 sites, 4.4M Albertans); $400M+ discovery infrastructure (PRAIRIE Hub, ACTM, Li Ka Shing Virology, Cryo-EM, GlycoNet, TMIC); and proven AI deployment (Dr. Mitchell's AI Scribe across 10 Alberta EDs). No other Canadian institution combines AI leadership, unified health system integration, advanced biomanufacturing, and translational infrastructure in a single ecosystem.

**The Clinical Trials Acceleration Platform (CTAP)** is Canada's first AI-native clinical trials infrastructure—a **$10,365,000** investment embedding AI as the foundational architecture for trial design, recruitment, monitoring, and analysis.

**The Integrated Infrastructure Model** operates through five tightly coupled domains unified by a three-zone Trusted Research Environment (TRE):

| Domain | Function | Key Capability |
|--------|----------|----------------|
| **AI-Enabled Operations** | CRAIDL: 8 AI agents for protocol simulation, recruitment prediction, regulatory automation | 40-50% reduction in trial startup |
| **Living Biorepository** | Intelligent biospecimen management with real-time EMR linkage (Connect Care FHIR) | Automated outcome annotation |
| **Secure Data Environment** | Three-zone TRE (AWS Calgary): identifiable → de-identification → research analytics | Health Canada Division 5 compliant |
| **Open Science** | OMOP CDM enabling federated queries across OHDSI (100+ institutions), VITAL, PRAIRIE Hub | Pan-Canadian data sharing |
| **Omics Integration** | Trial-to-facility interface for ACE Core, Cryo-EM, GlycoNet, TMIC | Quality bridge infrastructure |

**CRAIDL (Clinical Research Assistants for Intelligent Design and anaLysis)** leverages agentic AI developed with Amii and CIFAR AI Chairs, built on Canadian VIGOUR Centre's 50+ trial templates. The **In Silico Assessment Agent**—led by Dr. Atanackovic (Amii Fellow)—simulates trial outcomes before enrollment, addressing the 40-60% trial failure rate through digital twin generation and synthetic control arms. All outputs require human review (PI/statistician for protocols, medical monitor for safety, regulatory affairs for submissions). Benchmark: RECOVERY trial achieved first patient within 9 days; CRAIDL democratizes this capability nationally via ACT-AEC.

## 2.2 Feasibility: Operational Foundation and Team Readiness

CTAP builds on extensive operational foundation: UACT/CTO coordinated trials infrastructure; Canadian VIGOUR Centre (50+ trial templates); CBSR and ACTM functioning facilities with validated SOPs; Amii/CIFAR AI Chairs with AI Scribe deployed at scale; ACE Core, GlycoNet, TMIC, Cryo-EM (established CFI-funded core facilities); and 4 CRAIDL agents operational at investigator scale.

**Five Flagship Programs** operationalize CTAP with existing leadership and infrastructure:

1. **Applied AI Innovation:** Dr. Mitchell's PHAIR Lab enables TRE-scale AI validation and CRAIDL training
2. **Neuro-immunology & MS Cell Therapies:** ACTM-manufactured products in early-phase MS trials (CHARM platform)
3. **Hepatitis C & Vaccine Trials:** Dr. Houghton (Nobel 2020) leads Canada's first academic Challenge Trial Unit
4. **Precision Cardio-Renal-Metabolic:** Connect1D Canada demonstrates decentralized methodology (Senior, Shapiro)
5. **Pediatric Rare Disease (RareKids-CAN):** Stollery CIU—one of two Canadian pediatric Phase I centres (316,000+ patients annually)

**PRAIRIE Hub Vaccine Feeder Programs:** Two CBRF-funded programs generate candidates for CTAP validation: saRNA Vaccine Platform ($35.3M, Houghton) and Comparative Vaccine Platform ($57M, Shmulevitz/Pelka). Applied Pharmaceutical Innovation (API) partnership creates Canada's only fully integrated discovery-to-production pathway.

## 2.3 International Context and Competitive Positioning

| Comparator | Capabilities | CTAP Advantage |
|------------|--------------|----------------|
| **UK Biobank** | 500K participants, biospecimens, genomics | CTAP adds GMP manufacturing + active trials |
| **All of Us (NIH)** | 1M+ participants, EHR linkage | CTAP: unified provincial EMR (Connect Care) vs. fragmented US data |
| **German National Decade Against Cancer** | Federated data, oncology focus | CTAP: broader therapeutic scope + AI-native design |
| **TriNetX/Veeva** | Commercial trial platforms | CTAP: academic open-source + advanced AI |

**No platform globally integrates:** (1) GMP manufacturing, (2) structural/systems biology, (3) metabolomics/glycomics at scale, (4) top-tier AI institute, (5) mature trials organization, and (6) province-wide unified EMR. CTAP is Canada's first AI-native clinical trials platform.

## 2.4 Core Objectives (by 2031)

| Objective | Target | Measurement |
|-----------|--------|-------------|
| Trial start-up reduction | 40-50% (stretch: 4 weeks idea-to-activation) | Time from concept to first patient |
| Recruitment efficiency | 2x improvement; 15% Indigenous, 20% rural | Enrollment rates vs. national benchmarks |
| Advanced therapy trials | 5+ FIH (including challenge studies), 3+ cell therapy | Trial count by type |
| Biospecimen integration | 70%+ trials with pre-planned pipelines | Trials with biorepository SOPs |
| CRAIDL deployment | 8 agents nationally via ACT-AEC | Agent availability at 20+ sites |
| HQP training | 150+ (20% underrepresented groups) | Trained personnel count |

# 3. Research Team

CTAP assembles an interdisciplinary team with demonstrated experience in clinical trials operations, AI implementation, biomanufacturing, and disease-area expertise. The team includes established investigators, early-career researchers, and patient partners as co-investigators.

## Leadership and Clinical Trials Operations

| Name | Position | Role in CTAP | Key Qualifications |
|------|----------|--------------|-------------------|
| **Lawrence Richer, MD, PhD** | PI; Associate Dean Research, College of Health Sciences | Overall leadership, governance, institutional integration | UACT Director; regulatory affairs expertise |
| **Michael Houghton, PhD** | Co-PI; Li Ka Shing Professor of Virology | Challenge Trial Unit Director; vaccine trials | Nobel Prize 2020 (HCV discovery); CHIM protocol development |
| **James Shapiro, MD, PhD** | Co-PI; CRC Transplant Surgery | Cell therapy trials; Edmonton Protocol integration | Edmonton Protocol pioneer (NEJM 2000); 20+ year transplant outcomes |
| **Peter Senior, MD, PhD** | Co-PI; Clinical Islet Transplant Program | Decentralized trials; Connect1D Canada | T1D registry development; digital health trials |

## AI and Computational Science (CRAIDL Development)

| Name | Position | Role in CTAP | Key Qualifications |
|------|----------|--------------|-------------------|
| **Ross Mitchell, PhD** | Canada CIFAR AI Chair; AHS Chair in AI | CRAIDL leadership; AI Scribe integration | AI Scribe deployed across 10 Alberta EDs (6,700+ sessions) |
| **Lazar Atanackovic, PhD** | Amii Fellow; Asst. Professor ECE/Biochemistry | In Silico Assessment Agent; Digital Twin Engine | Incoming from MIT-Harvard Broad Institute; generative modeling |
| **Amber Simpson, PhD** | CRC Biomedical Computing (Queen's) | Imaging/Radiomics Agent; federated learning | Medical Segmentation Decathlon (1,622 citations) |
| **Patrick Pilarski, PhD** | Amii CIFAR AI Chair; iSMART | CRAIDL agent development | Former DeepMind researcher; reinforcement learning |

## Core Facilities Leadership

| Facility | Director(s) | Role in CTAP |
|----------|-------------|--------------|
| Canadian BioSample Repository | Bruce Ritchie, MD | Suite 2: Living Biorepository operations |
| Alberta Cell Therapy Manufacturing | Greg Korbutt, PhD | GMP cell product manufacturing |
| Alberta Cryo-EM Facility | Howard Young, PhD / Kalyan Das, PhD | Structural biology integration |
| GlycoNet/Glycomics Institute | Lara Mahal, PhD (CERC) | Glycan profiling for trials |
| TMIC Metabolomics | David Wishart, PhD / Liang Li, PhD | Metabolomic endpoints |
| iSMART | Vivian Mushahwar, PhD (CRC Tier 1) | GLP device validation (Western Canada's only) |

## Disease-Area Expertise and Early-Career Researchers

| Name | Area | Role in CTAP |
|------|------|--------------|
| Todd Alexander, MD, PhD | Pediatric Rare Disease | RareKids-CAN Western anchor; Translational Genomics Hub |
| Oana Caluseriu, MD | Clinical Genetics | VUS resolution; undiagnosed genetic diseases |
| Patrick Macdonald, PhD | Islet Biology | ADI IsletCore Director; cryopreservation expertise |
| Giovanni Ferrara, MD | Digital Health | Digital Health Device Validation Program operational lead |
| Khaled Barakat, PhD | Computational Drug Discovery | Structure-based drug design; off-target toxicity prediction |
| Amir Tabatabaei Dakhili, PhD | AI Drug Design (ECR) | SCOT inhibitor platform; AI drug design methods |

## EDI and Patient Partnership

The team includes Indigenous scholars, patient partners (Kate Farnsworth, Connect1D Canada Patient Co-Lead), and Community Advisory Board members as co-investigators with governance authority. **Evidence-based EDI actions:** recruitment through Amii's Indigenous AI initiatives; mentorship programs pairing senior investigators with trainees from underrepresented groups; reserved CRAIDL compute resources for underfunded researchers.

## Key Institutional Partnerships

- **Amii:** 10+ CIFAR AI Chairs providing CRAIDL development and validation
- **Canadian VIGOUR Centre:** 50+ trial templates as CRAIDL training corpus
- **Connect Care/AHS:** Provincial EMR integration (682 sites, 4.4M Albertans)
- **AWS Calgary:** Secure cloud infrastructure (Canadian data sovereignty)
- **Applied Pharmaceutical Innovation (API):** Discovery-to-production pathway

# 4. Equity, Diversity, and Inclusion

CTAP aligns with the University of Alberta's **Access, Community, and Belonging (ACB)** framework and operationalizes CIHR's Strategy for Patient-Oriented Research (SPOR) with patient partners as co-investigators with governance authority. Canada's first **Indigenous Clinical Trials Unit (ICTU)** ensures OCAP principles govern Indigenous data through TRE-enforced access controls, with culturally safe clinical spaces (smudging, Elder consultations, Indigenous language signage) and decentralized tools extending participation to remote communities. **Explicit Targets:** 15% Indigenous participation (ICTU-co-designed protocols); 20% rural/remote participation; 20% of 150+ HQP from underrepresented groups. CRAIDL agents undergo systematic bias auditing with Community Advisory Board review. Accessible consent processes (Grade 6-8 reading level, multiple languages including Indigenous languages) and reserved compute resources for underfunded researchers.

**Systemic Barriers Addressed:** Clinical trials historically underrepresent Indigenous and rural populations due to geographic barriers, lack of culturally appropriate protocols, and distrust stemming from research harms. CTAP addresses these through: decentralized trial infrastructure reaching remote communities; ICTU-led protocol co-design ensuring cultural safety; Indigenous data governance (OCAP-compliant TRE zones); and Community Advisory Board oversight of AI agent outputs to prevent algorithmic bias in patient selection.

# 5. Benefits to Canada

## Anticipated Benefits and Impact

**Health and Social Benefits:** CTAP will provide **10,000+ patients annually** with earlier therapy access by 2031 through compressed trial timelines (start-up reduced from 12-18 to 4-6 months; 78% reduction in screening time). Connect Care—Canada's largest integrated CIS ($2B, 4.4M Albertans, 682 sites)—becomes accessible nationally via ACT-AEC. Canada's first Indigenous Clinical Trials Unit (ICTU) ensures 15% Indigenous and 20% rural enrollment with OCAP-compliant data governance.

**Economic Benefits:** CTAP attracts **$100M+ pharmaceutical R&D investment** and generates $6M+ additional annual research revenue by 2031. CRAIDL IP (8 AI agents, training datasets, APIs) deployed nationally via open-source licensing. **150+ HQP trained** (20% underrepresented groups) with globally competitive skills.

| Benefit Category | Target by 2031 | Impact Pathway |
|-----------------|----------------|----------------|
| Patients with earlier therapy access | 10,000+ annually | Compressed trial timelines |
| Trial start-up reduction | 40-50% | CRAIDL automation; streamlined processes |
| Pharmaceutical R&D attracted | $100M+ | Industry partnerships; trial-ready infrastructure |
| HQP trained | 150+ | Training programs; mentorship |
| Indigenous/rural enrollment | 15%/20% | ICTU protocols; decentralized trials |
| Canadian sites with CRAIDL access | 20+ | ACT-AEC deployment |

## Pathways to Transfer Results to End Users

| End User | Transfer Mechanism | Expected Outcomes |
|----------|-------------------|-------------------|
| **Academic researchers** | Open-source CRAIDL agents; federated data queries | Accelerated protocol development nationwide |
| **Clinicians** | AI Scribe integration; real-time decision support | Improved patient identification for trials |
| **Indigenous communities** | ICTU co-designed protocols; community data governance | Culturally safe research; OCAP compliance |
| **Industry (pharma/biotech)** | Commercial services; partnership agreements | Faster Canadian trial activation |
| **Policy makers** | Real-world evidence; regulatory submissions | Evidence-based policy development |
| **Public** | Earlier therapy access; patient registries | Improved health outcomes |

## Training of Highly Qualified Personnel

| Training Program | Annual Trainees | Skills Developed |
|-----------------|-----------------|------------------|
| Clinical Trials Operations Certificate | 30 | GCP, regulatory, trial management |
| CRAIDL AI Development Program | 15 | Health AI, agent design, validation |
| Biorepository Science | 20 | Sample processing, LIMS, quality systems |
| Data Science for Clinical Research | 25 | OMOP, analytics, privacy-preserving methods |
| Indigenous Research Methods | 10 | OCAP, community engagement, cultural safety |
| **Total** | **100/year** | |

**EDI in Training:** Minimum 20% of training positions reserved for Indigenous trainees and individuals from underrepresented groups; mentorship pairing with senior investigators; flexible scheduling for trainees with caregiving responsibilities; accessibility accommodations.

## National Leadership

CTAP serves as Western anchor for national networks, democratizing trial capabilities across Canada:

| Network | Role | Benefit to Network |
|---------|------|-------------------|
| ACT-AEC | Western operational hub | CRAIDL agents available to all sites |
| PRAIRIE Hub ($57M CBRF) | Trial validation for vaccine candidates | Integrated discovery-to-trials pathway |
| RareKids-CAN | Pediatric Phase I centre | One of two Canadian pediatric early-phase sites |
| Connect1D Canada | Decentralized trial methodology | Patient registry and digital trial model |
| VITAL/OHDSI | Federated data network | 100+ institution queries |

# 6. Infrastructure Request Justification

## Core Facility Model

CTAP is designed as a formally recognized, institutionally supported **core facility** as defined by CFI: providing researchers with access to state-of-the-art clinical trials infrastructure, AI tools, and expertise regardless of administrative affiliation, with no requirement for collaboration or co-authorship. The facility operates with a clearly defined governance structure (Kipnes Health Research Institute) and dedicated management overseeing all aspects.

**Core Facility Characteristics:**
- **Formal recognition:** Anchored within Kipnes Health Research Institute; institutionally supported through College of Health Sciences
- **Multi-user access:** All five infrastructure suites designed for shared utilization across faculties and institutions
- **No collaboration requirement:** Services available through fee-for-service model without co-authorship obligations
- **Dedicated management:** Program Director, Operations Manager, Data Architect, Biobank Operations Lead, Indigenous Engagement Lead, CRAIDL Development Lead
- **Equitable access:** Priority allocation policies; reserved capacity for Indigenous researchers and underfunded groups

**Network of Users and Collaborators:**

| User Category | Estimated Annual Users | Access Mechanism |
|---------------|----------------------|------------------|
| UAlberta researchers | 150+ | Direct allocation |
| Other Alberta institutions | 50+ | Provincial partnership agreements |
| National (ACT-AEC network) | 100+ | CRAIDL agent licensing; federated queries |
| Industry partners | 20+ | Commercial service agreements |
| Indigenous communities | 10+ | ICTU-facilitated protocols |

**Facility Website:** CTAP will maintain a public-facing website (integrated with Kipnes Institute portal) providing: service catalogue, pricing, access request forms, training schedules, and equipment specifications.

The total infrastructure request is **$10,365,000 CAD**, organized into five suites aligned with the platform's five integrated domains.

## Suite 1: Clinical Trials Participant & Procedure Infrastructure ($3,004,000)

This suite enhances an existing network of three clinical research units while establishing two specialized units:

**Existing Facility Upgrades:**
- Adult Clinical Investigation Unit (UAH MacKenzie Centre): POC laboratory, IP pharmacy automation, monitoring upgrades
- Pediatric Clinical Investigation Unit (Stollery Children's Hospital): Rare disease equipment, telehealth capability
- ADI Clinical Research Unit (Li Ka Shing Centre): Network integration, metabolic trial support

**New Specialized Units:**

**Vaccine Challenge Trial Unit ($590,000):** Western Canada's first academic controlled human infection model (CHIM) facility, supporting Dr. Michael Houghton's hepatitis C vaccine program and pandemic preparedness. Four negative-pressure isolation rooms with HEPA filtration, continuous monitoring, and extended-stay capability for 14+ day quarantine protocols. Proposed co-location with Li Ka Shing Applied Virology Institute.

**Pediatric Rare Disease Unit ($200,000 CTAP + $200,000 Stollery Foundation):** Specialized infrastructure at Stollery CIU for gene therapy and cell therapy trials requiring 15+ year follow-up. Connects to national RareKids-CAN network and WCHRI Translational Genomics Hub.

**Components:** Renovations & fit-out ($800,000), Challenge Unit renovation & equipment ($590,000), monitoring equipment ($400,000), POC laboratory ($200,000), IP pharmacy ($300,000), Autonomic Function Labs ($514,000), Pediatric Unit ($170,000), services ($30,000).

## Suite 2: Living Biorepository ($2,020,000)

This suite establishes the **Living Biorepository** concept—a fundamental reconceptualization that transforms biospecimen management from static storage into an intelligent, continuously-updated discovery engine:

**Automated Sample Processing ($650,000):** Hamilton/Tecan automated liquid handling system for high-throughput sample aliquoting and preparation.

**Cryogenic Storage ($400,000):** 10 ULT freezers (-80°C Thermo Fisher TSX Series), 4 LN₂ vapor-phase tanks (Chart MVE High Efficiency), enabling expanded capacity for PRAIRIE Hub and trial specimens.

**Biocontainment Equipment ($190,000):** 6 Class II biosafety cabinets (Baker/NuAire), 4 refrigerated centrifuges (Beckman Coulter Avanti) for biocontainment-compatible sample processing.

**Monitoring & Microscopy ($210,000):** 24/7 environmental monitoring system (Rees Scientific/Vaisala), clinical-grade microscopes and counters (Keyence/Countess 3 FL).

**BioBank LIMS Platform ($570,000):** OpenSpecimen enterprise license (5-year, 21 CFR Part 11 compliant), plugin development & data migration, Connect Care FHIR integration, dynamic consent module, and staff training.

*Note: Cell therapy manufacturing capabilities (GMP bioreactors, cell processors) are provided through existing ACTM infrastructure and are not included in this CFI request.*

## Suite 3: Clinical Trials Omics Integration Hub ($1,480,000)

This suite provides the trial-to-facility interface layer connecting clinical trials with UAlberta's omics infrastructure through partnerships rather than duplication:

- **Protocol Integration Services ($300,000):** Consent modules, sample collection kits, protocol templates, regulatory dossiers, SOPs
- **Quality Bridge Infrastructure ($500,000):** Pre-analytical QC systems, cold-chain logistics, sample preparation standardization
- **Data Return Pipeline ($250,000):** Facility data adapters, OMOP molecular extensions, analysis workstations
- **ACE Core Access ($150,000):** Reserved capacity for 10x Chromium X, MERSCOPE, Seahorse
- **Gap-Filling Equipment Reserve ($500,000):** For genuine capability gaps not available through partnerships

## Suite 4: Data Platform, Secure Environments, AI/HPC ($2,805,000)

This suite builds the unified data architecture connecting trial data to the TRE and CRAIDL agents:

- **On-Premises Infrastructure ($580,000):** Secure compute nodes (Zone 2 processing, OMOP ETL), storage, zero-trust networking
- **Clinical Trials Platform ($1,350,000):** EDC/eSource platform (Health Canada GCP), identity management, AWS cloud (5-year), PACS/DICOM gateway
- **AI/HPC & Imaging ($875,000):** GPU cluster (CRAIDL, LLM inference), radiomics nodes, image harmonization, OMOP/OHDSI tooling

## Suite 5: Trial Innovation Tools & Wearables ($1,056,000)

This suite enables decentralized, patient-centric trials:

- **Software & Platforms ($276,000):** eConsent platform (multilingual), participant engagement app, trial oversight dashboard
- **Digital Tools & Services ($680,000):** Operational analytics dashboard (AI-powered), participant engagement platform, device data APIs, validation protocol library
- **Hardware & Devices ($100,000):** Sensor development equipment, reference device pool, telehealth equipment (rural/Indigenous sites)

*Digital Health Device Validation in partnership with iSMART (Western Canada's only GLP facility): Light/Baghelani microwave glucose sensor, Gupta wound sensors, Mushahwar Smart-e-Pants, Mitchell AI Scribe, HiMARC 3MDR VR therapy.*

# 7. Sustainability

## Governance and Management

CTAP will be governed through a multi-tier structure anchored within the **Kipnes Health Research Institute**—CTAP's functional home:

| Committee | Chair | Function | Meeting Frequency |
|-----------|-------|----------|-------------------|
| **CTAP Steering Committee** | UACT Director + Kipnes Institute leadership | Strategic oversight; budget allocation; policy | Quarterly |
| **Data Access Committee** | TRE Director | Researcher access; TRE workspace approvals | Monthly |
| **Operations Committee** | Program Director | Day-to-day coordination across cores | Bi-weekly |
| **CRAIDL Development Committee** | AI Lead (Mitchell/Atanackovic) | Agent development; validation protocols | Monthly |
| **EDI and Indigenous Advisory Council** | ICTU Director | Cultural safety; OCAP compliance | Quarterly |
| **Scientific Advisory Board** | External chair (rotating) | External review; international benchmarking | Semi-annual |

## Institutional Supports

The University of Alberta and College of Health Sciences have committed to:

| Support Category | Specific Commitment | Estimated Value |
|-----------------|---------------------|-----------------|
| **Physical Space** | Kipnes Health Research Academy; clinical facilities (UAH, Stollery, Li Ka Shing) | In-kind |
| **Personnel** | Program Director, Operations Manager, Data Architect, Biobank Lead, Indigenous Lead, CRAIDL Lead | $1.2M/year base |
| **IT Infrastructure** | IST network integration; DARC compute allocation | In-kind |
| **Strategic Integration** | Core facility status in institutional plans | Governance |

## Operations and Maintenance Costs

**Detailed 5-Year O&M Projections:**

| Suite | Annual O&M Cost | Primary Cost Drivers |
|-------|-----------------|---------------------|
| Suite 1: Clinical Trials Infrastructure | $420,000 | Equipment maintenance; certification; consumables |
| Suite 2: Living Biorepository | $380,000 | LN₂/power; LIMS licensing; quality assurance |
| Suite 3: Omics Integration Hub | $250,000 | Core facility access fees; QC consumables |
| Suite 4: Data Platform & AI/HPC | $520,000 | AWS cloud; software licensing; GPU maintenance |
| Suite 5: Trial Innovation Tools | $180,000 | Platform licensing; device calibration |
| **Total Annual O&M** | **$1,750,000** | |

**Revenue Sources to Cover O&M:**

| Revenue Stream | Year 1 | Year 3 | Year 5 | Notes |
|----------------|--------|--------|--------|-------|
| Infrastructure Operating Fund (IOF) | $620,000 | $620,000 | $620,000 | ~30% of CFI equipment @ 40% IOF rate |
| User fees (biobanking) | $150,000 | $250,000 | $350,000 | $35/sample + $10/year storage |
| Industry services | $200,000 | $500,000 | $800,000 | Feasibility, TRE, CRAIDL access |
| Grant funding (PRAIRIE Hub, ACT-AEC, CIHR) | $400,000 | $300,000 | $200,000 | Tapering as self-sufficiency grows |
| Institutional support | $380,000 | $200,000 | $100,000 | Kipnes gift leverage; VPR allocation |
| **Total Revenue** | **$1,750,000** | **$1,870,000** | **$2,070,000** | |

**Fee-for-Service Schedule:**

| Service | Unit Price | Basis |
|---------|-----------|-------|
| Sample processing (basic) | $35 | Per sample |
| Sample storage (annual) | $5-15 | Per sample by temperature |
| Feasibility query | $2,500 | Per query |
| TRE workspace provisioning | $15,000 | Per study-year |
| CRAIDL agent access | $5,000 | Per study |
| CDISC transformation | $20,000 | Per submission |
| Full trial support package | $75,000+ | Custom |

## Accessibility and Optimal Use

**Utilization Targets:**

| Metric | Year 1 | Year 3 | Year 5 |
|--------|--------|--------|--------|
| Active clinical trials supported | 25 | 50 | 100 |
| Biospecimens processed annually | 10,000 | 25,000 | 50,000 |
| TRE active users | 50 | 150 | 300 |
| CRAIDL agent sessions | 500 | 2,000 | 5,000 |
| HQP trained | 30 | 90 | 150+ |

**Equitable Access Policies:**
- Priority allocation for Indigenous-led research (minimum 15% capacity)
- Reserved CRAIDL compute for underfunded researchers
- Sliding-scale pricing for trainee-led projects
- Open-source CRAIDL agents for academic use via ACT-AEC

# 8. Supplemental Information

## 8.1 Research Data Management

Data generated through CTAP will be managed under a unified Data Governance Framework aligned with UofA policies, AHS agreements, and national guidance (Tri-Agency Research Data Management Policy).

### Three-Zone TRE Architecture

| Zone | Data Type | Custodian | Access Controls | Retention |
|------|-----------|-----------|-----------------|-----------|
| **Zone 1 (Identifiable)** | Raw EMR, identifiable trial data | AHS | AHS-approved personnel only | Per AHS policy (min. 10 years) |
| **Zone 2 (Controlled)** | De-identification pipeline, AI processing | CTAP Data Team | Role-based; audit logged | Duration of processing |
| **Zone 3 (Research)** | De-identified data, OMOP analytics | Research PI | Project-specific workspaces | Per grant requirements (typically 10 years) |

### Data Types and Standards

| Data Type | Standard | Storage Format | Sharing Mechanism |
|-----------|----------|----------------|-------------------|
| Clinical trial data | CDISC CDASH/SDTM | SAS XPT, CSV | Controlled access repository |
| EMR extracts | HL7 FHIR R4 | JSON, Parquet | OMOP transformation |
| Biospecimen data | BRISQ | OpenSpecimen LIMS | Federated queries |
| Imaging | DICOM, NIFTI | PACS, cloud storage | Anonymized export |
| Omics | MIAME, MINSEQE | FASTQ, BAM, VCF | Controlled access (EGA model) |

### OMOP Common Data Model

Connect Care data transformed to OMOP CDM v5.4 enabling:
- Standardized cohort discovery (OHDSI ATLAS)
- Federated queries with OHDSI network (100+ institutions globally)
- VITAL (pan-Canadian) integration
- PRAIRIE Hub and RareKids-CAN data sharing

### Data Retention and Disposal

| Data Category | Retention Period | Disposal Method | Authority |
|---------------|------------------|-----------------|-----------|
| Clinical trial source | 25 years post-study | Secure destruction | Health Canada Division 5 |
| De-identified research | 10 years post-publication | Controlled deletion | Tri-Agency policy |
| Biospecimen metadata | Duration of sample storage + 10 years | Archive then delete | CTAP policy |
| AI training datasets | Indefinite (anonymized) | N/A | CRAIDL governance |

### Backup and Disaster Recovery

- **Primary storage:** AWS Canada Central (Calgary region) with 3-zone redundancy
- **Backup frequency:** Daily incremental, weekly full, monthly archive
- **Recovery Point Objective (RPO):** 24 hours
- **Recovery Time Objective (RTO):** 4 hours for critical systems
- **Annual disaster recovery testing:** Full failover simulation

### FAIR Principles Implementation

| Principle | Implementation |
|-----------|----------------|
| **Findable** | DOIs for datasets; searchable metadata catalogue; ORCID integration |
| **Accessible** | Controlled access portal; documented request process; API access |
| **Interoperable** | OMOP CDM; CDISC standards; HL7 FHIR; standardized ontologies |
| **Reusable** | CC-BY licensing for metadata; data dictionaries; provenance tracking |

### Regulatory Compliance

| Regulation | Applicability | Compliance Mechanism |
|------------|---------------|---------------------|
| Health Canada Division 5 | All clinical trials | EDC validation; audit trails |
| ICH E6(R3) | GCP compliance | Risk-based monitoring; eSource |
| Alberta HIA | Personal health information | TRE access controls; DSAs |
| 21 CFR Part 11 | FDA submissions (optional) | Electronic signatures; audit trails |
| TCPS-2 | All human research | REB approval; consent management |
| OCAP | Indigenous data | ICTU governance; community agreements |

## 8.2 Technology Transfer

CTAP will work with the University's TEC Edmonton and Research Services Office to identify, protect, and mobilize IP through a dual-track strategy balancing open-source academic access with commercial revenue generation.

### IP Protection Strategy

| IP Category | Protection Mechanism | Commercial Strategy |
|-------------|---------------------|---------------------|
| **CRAIDL Core Agents** | Trade secret (algorithms) + Copyright (code) | Open-source academic; licensed commercial |
| **Training Datasets** | Database rights; contractual controls | Licensed access for commercial users |
| **Protocol Templates** | Copyright; Creative Commons | Open access with attribution |
| **TRE Architecture** | Trade secret; know-how | Consulting/implementation services |
| **Integration APIs** | Apache 2.0 license | Open source |

### CRAIDL Commercialization Pathway

| Agent | Commercial Value | Target Market | Revenue Model |
|-------|-----------------|---------------|---------------|
| Protocol Development Agent | Reduce protocol drafting 60-70% | Pharma, CROs | SaaS licensing |
| Recruitment Optimization Agent | Improve enrollment 40%+ | Sponsors, sites | Per-study fee |
| Event Adjudication Agent | Automate safety review | CROs, DMCs | Transaction-based |
| Regulatory Submission Agent | Accelerate filing | Sponsors | Per-submission |
| Budget Optimization Agent | Reduce budget variance | Academic, industry | Subscription |

### Licensing Framework

**Academic/Non-Profit:**
- CRAIDL core agents: Open-source (Apache 2.0) via ACT-AEC network
- Training materials: Creative Commons CC-BY-NC
- No licensing fees for Canadian academic institutions

**Commercial:**
- CRAIDL enterprise agents: Annual SaaS license ($50,000-250,000/year by organization size)
- Custom agent development: Project-based ($100,000+)
- Data access for AI training: Negotiated licensing

### Revenue Projections from Technology Transfer

| Revenue Stream | Year 1 | Year 3 | Year 5 |
|----------------|--------|--------|--------|
| CRAIDL commercial licenses | $0 | $250,000 | $750,000 |
| Consulting/implementation | $50,000 | $150,000 | $300,000 |
| Training data licensing | $0 | $100,000 | $200,000 |
| Spin-off equity returns | $0 | $0 | TBD |
| **Total** | **$50,000** | **$500,000** | **$1,250,000** |

### Industry Partnership Pipeline

| Partner Type | Engagement Model | Current Discussions |
|--------------|------------------|---------------------|
| Large pharma | Trial sponsorship; CRAIDL licensing | 3 active |
| CROs | Implementation partnerships | 2 active |
| Health tech startups | Co-development; incubation | 5+ via Health City |
| Federal government | Consulting (ISED, HC) | Ongoing |

### Knowledge Mobilization

| Output Type | Target | Dissemination Mechanism |
|-------------|--------|------------------------|
| Peer-reviewed publications | 50+ over 5 years | Open access journals |
| CRAIDL documentation | Continuous | Public GitHub repository |
| Training workshops | 10/year | ACT-AEC network; NACTRC |
| Policy briefs | 5/year | Health Canada; provincial ministries |
| Conference presentations | 20/year | ISPE, DIA, ICPE, OHDSI symposia |

## 8.3 Information Services & Technology

CTAP's workflows rely on advanced computing and networking. Total data volumes are expected in the multi-petabyte range, driven by omics, imaging, and large-scale trial data. CTAP will collaborate with IST, DARC, and the Digital Research Alliance of Canada to ensure resources above $100,000 are appropriately housed and managed.

## 8.4 Research Security

**Health Data as National Security Asset:** In the current geopolitical climate, health data is classified as a national security asset. CTAP's infrastructure serves as a **compliance engine** automatically enforcing federal (STRAC/NSGRP) and provincial (HIA) security safeguards.

**Federal Compliance (STRAC/NSGRP):** CTAP's use of AI (CRAIDL), Advanced Data Computing, and Large-Scale Analytics places this work in Sensitive Technology Research Areas. No team member may hold affiliations with Named Research Organizations. All personnel undergo STRAC screening via the UofA Safeguarding Research Office.

**TRE as Security Infrastructure:**

| Security Requirement | TRE Implementation |
|---------------------|-------------------|
| HIA: Least Privilege | Zone 1 custodian control; researchers access only de-identified data |
| STRAC: Prevent Knowledge Transfer | Airlock output controls; no bulk data export |
| Data Sovereignty | AWS Canada Central; AHS-controlled encryption |
| AI Model Security | UofA-owned models in private VPC |
| Alberta Data Residency | All clinical data remains within Alberta |

**Centralized Biobanking Security:** 24/7 temperature monitoring, badge + biometric access, full chain of custody via barcode/RFID, redundant storage.

## 8.5 Health, Safety, and Environment

CTAP infrastructure requires specific HSE considerations: biobanking with ultra-low freezers requiring backup power and monitoring; GMP cleanrooms requiring validated environmental controls; LC-MS/MS and cryo-EM equipment requiring solvent handling and cryogen procedures. CTAP will work with HSE and facility management.

## 8.6 Animal Housing

CTAP does not request infrastructure for animal housing. Pre-clinical work will use existing facilities under separate governance.

## 8.7 Risks

**Operational Risks:**
- *Infrastructure procurement delays*: Phased implementation with parallel workstreams; contingency timelines
- *Workforce recruitment*: Competitive salaries, Amii partnership, training programs, succession planning
- *Connect Care integration*: Dedicated integration team, early proof-of-concept, standardized APIs

**Technical Risks:**
- *Heterogeneous data integration*: OMOP CDM adoption, robust data governance, dedicated engineering
- *CRAIDL performance variability*: Context-specific validation, human-in-the-loop, iterative refinement
- *Novel agentic AI design*: Prototype validates core methodology; CVC templates as ground truth; Amii partnership

**Strategic Risks:**
- *Evolving regulatory environment*: Modular platform design, active Health Canada engagement
- *Funding sustainability*: Diversified revenue, institutional commitment, provincial alignment

## 8.8 Estimated Timeframe

Given scale and integration requirements, we anticipate 4-5 years from initiation to fully operational platform. Early components (digital trial-operations platform, CBSR expansion, initial CRAIDL deployments) will be functional within 18-24 months.

### Implementation Timeline

```
Year 1          Year 2          Year 3          Year 4          Year 5
|-------|-------|-------|-------|-------|-------|-------|-------|-------|
Q1  Q2  Q3  Q4  Q1  Q2  Q3  Q4  Q1  Q2  Q3  Q4  Q1  Q2  Q3  Q4  Q1  Q2  Q3  Q4

PHASE 1: Foundation ████████████████
                    [M1]    [M2][M3]

PHASE 2: Core Deployment     ████████████████
                                 [M4][M5]    [M6]

PHASE 3: Integration                  ████████████████
                                          [M7]    [M8]

PHASE 4: Scale & Sustainability                ████████████████████████
                                                   [M9]        [M10][M11]
```

### Milestone Definitions

| ID | Milestone | Target Date | Dependencies | Go/No-Go Criteria |
|----|-----------|-------------|--------------|-------------------|
| M1 | TRE Zone 1-2 operational | Month 6 | AWS contract; AHS DSA | Security audit passed |
| M2 | EDC platform deployed | Month 9 | Vendor selection | First study onboarded |
| M3 | Connect Care bulk extract | Month 12 | AHS approval | OMOP transformation validated |
| M4 | GPU cluster operational | Month 15 | Hardware procurement | CRAIDL training benchmarks met |
| M5 | Protocol Agent v1.0 released | Month 18 | M4 | 3 protocols generated; PI validation |
| M6 | FHIR real-time integration | Month 24 | AHS technical approval | Live data flowing |
| M7 | All 8 CRAIDL agents deployed | Month 30 | M4, M5 | Validation complete for each |
| M8 | OHDSI network participation | Month 36 | M3, M6 | Federated query success |
| M9 | Industry services launch | Month 42 | M7 | First commercial contract signed |
| M10 | ACT-AEC CRAIDL deployment | Month 48 | M7, M9 | 10+ sites active |
| M11 | Full sustainability achieved | Month 54 | All | Revenue ≥ O&M costs |

### Phase Details

**Phase 1: Foundation (Months 1-12)**

| Deliverable | Suite | Key Activities |
|-------------|-------|----------------|
| TRE infrastructure | Suite 4 | AWS deployment; security certification; Zone 1-2 operational |
| EDC platform | Suite 4 | Vendor selection; configuration; first study onboarded |
| Biorepository expansion | Suite 2 | ULT freezers installed; OpenSpecimen deployed |
| Connect Care integration | Suite 4 | Bulk data extract; OMOP ETL pipeline |
| Challenge Unit design | Suite 1 | Architectural plans; regulatory consultation |

**Phase 2: Core Deployment (Months 13-24)**

| Deliverable | Suite | Key Activities |
|-------------|-------|----------------|
| GPU cluster | Suite 4 | Hardware installation; CRAIDL training environment |
| Protocol Agent v1.0 | Suite 4 | Development; validation with CVC templates |
| Data Management Agent v1.0 | Suite 4 | Development; integration with OpenSpecimen |
| FHIR real-time | Suite 4 | Connect Care live integration; consent management |
| Living Biorepository | Suite 2 | Full automation; EMR linkage operational |

**Phase 3: Integration (Months 25-36)**

| Deliverable | Suite | Key Activities |
|-------------|-------|----------------|
| Full CRAIDL suite | Suite 4 | All 8 agents deployed and validated |
| OHDSI participation | Suite 4 | Network membership; federated query capability |
| Omics integration | Suite 3 | Core facility interfaces; data return pipelines |
| Challenge Unit operational | Suite 1 | Facility commissioned; first protocol approved |
| Industry services pilot | Suite 5 | Beta testing with partner companies |

**Phase 4: Scale and Sustainability (Months 37-54)**

| Deliverable | Suite | Key Activities |
|-------------|-------|----------------|
| VITAL network | Suite 4 | Pan-Canadian data sharing operational |
| ACT-AEC deployment | Suite 4 | CRAIDL agents available nationally |
| Full commercial services | Suite 5 | Complete service catalogue; marketing |
| Sustainability | All | Revenue targets achieved; IOF optimization |

### Critical Dependencies

```
                    ┌─────────────────┐
                    │ AHS Data Sharing│
                    │   Agreement     │
                    └────────┬────────┘
                             │
              ┌──────────────┴──────────────┐
              ▼                             ▼
    ┌─────────────────┐           ┌─────────────────┐
    │ Connect Care    │           │ TRE Security    │
    │ Bulk Extract    │           │ Certification   │
    └────────┬────────┘           └────────┬────────┘
             │                             │
             └──────────────┬──────────────┘
                            ▼
                  ┌─────────────────┐
                  │ OMOP Data Lake  │
                  │ Operational     │
                  └────────┬────────┘
                           │
         ┌─────────────────┼─────────────────┐
         ▼                 ▼                 ▼
┌─────────────────┐ ┌─────────────────┐ ┌─────────────────┐
│ CRAIDL Training │ │ OHDSI Network   │ │ FHIR Real-time  │
│ Data Available  │ │ Participation   │ │ Integration     │
└─────────────────┘ └─────────────────┘ └─────────────────┘
```

# Conclusion

This proposal requests **$10,365,000** to build Canada's first AI-native clinical trials platform—infrastructure that exists nowhere else in the country. By integrating SDRE/Amii's computational capacity (1,000 H200 GPUs), Connect Care's unparalleled clinical reach (4.4M Albertans, 682 sites), and a Living Biorepository's precision, CTAP establishes the University of Alberta as the permanent national hub for advanced therapeutic validation.

**Measurable National Impact by 2031:**

| Outcome | Target |
|---------|--------|
| Patients with earlier therapy access | 10,000+ annually |
| Trial start-up time reduction | 40-50% |
| Pharmaceutical R&D attracted | $100M+ |
| HQP trained | 150+ |
| Indigenous trial participation | 15% |
| Rural/remote participation | 20% |
| Canadian sites with CRAIDL access | 20+ |

CTAP creates infrastructure that Canada needs: the only end-to-end advanced therapeutics corridor (discovery → manufacturing → trials → market); the first Indigenous Clinical Trials Unit ensuring OCAP-compliant research; challenge trial capability for pandemic preparedness; and the Western anchor for national clinical trials networks (ACT-AEC, PRAIRIE Hub, RareKids-CAN, VITAL). The $10,365,000 CFI investment catalyzes transformation across Canadian health research, with economic returns exceeding investment within 5 years through industry attraction, IP generation, and health system efficiencies.

Clinical trials will no longer be bottlenecks—they become accelerators. Where data, biospecimens, and operational knowledge cycle continuously to accelerate discovery. Where the promise of AI-enabled medicine becomes operational reality for patients across Alberta and beyond.
