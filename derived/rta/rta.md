---
title: "Clinical Trials Acceleration Platform (CTAP)"
shorttitle: "CFI 2027"
principal_investigator:
  name: Lawrence Richer
  affiliation: University of Alberta
co_investigators:
  - name: Co-Investigator Name
    affiliation: Institution
funding_agency: CFI
program: Innovation Fund
competition: 2027
grant_id:
document_type: grant
word_limits:
  summary: 250
  research_plan: 5000
date: 2025-01-01

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

The Clinical Trials Acceleration Platform (CTAP) directly operationalizes *Forward with Purpose: A Strategic Plan for Research and Innovation 2023-2028*, which calls for the University of Alberta to address grand challenges through interdisciplinary research, data-enabled discovery, and deep partnerships with health systems. CTAP embodies the plan's emphasis on health and life sciences, artificial intelligence, and digital innovation by creating an integrated, AI-enabled clinical trials infrastructure that links discovery to impact—from molecular design and GMP manufacturing to biospecimen-enabled trials and real-world evidence.

**CTAP's Functional Home: The Dianne and Irving Kipnes Health Research Institute.** Established in September 2025 through a $25 million philanthropic gift, the Kipnes Institute is an organizational entity—not a building—housed within the College of Health Sciences (in the renamed Dianne and Irving Kipnes Health Research Academy). The Institute's vision is "to create a learning health system where artificial intelligence enhances care, clinical trials validate breakthroughs, and specialized programs demonstrate the full cycle of research from insight to impact—continuously improving outcomes." CTAP is the infrastructure backbone that realizes this vision. The Institute's **AI + Health Hub** (led by Drs. Neesh Pannu and Gillian Lemermeyer) and **Health Research Translation Unit** provide the governance, operational framework, and community within which CTAP operates—positioning Alberta as "the place where research discoveries reach patients in our communities not in decades, but in years or even months."

CTAP operationalizes this learning health system vision through a closed-loop architecture: de-identified patient data from Connect Care flows into the Trusted Research Environment for analysis, validated AI-driven insights flow back to clinical teams for implementation, and outcomes data closes the loop to refine future discoveries. This is the same model that enabled Ontario's GEMINI project to achieve a **26% reduction in unexpected deaths** among hospitalized patients—now extended to encompass clinical trials, biospecimens, and molecular characterization in an integrated translational ecosystem.

**Provincial Alignment:** CTAP strongly supports the Alberta Technology and Innovation Strategy (ATIS), which aims to make Alberta an internationally recognized technology and innovation hub. By integrating AI, advanced biomanufacturing (PRAIRIE Hub, ACTM, CMPC), secure cloud infrastructure (AWS Calgary region), and clinical trials at scale, CTAP directly advances ATIS goals in talent development, commercialization, data-driven innovation, and global competitiveness.

# 2. Research Plan

## 2.1 The Opportunity

**The bottleneck to transforming scientific breakthroughs into patient benefit is no longer discovery—it is validation.** Advances in AI, molecular biology, and biomanufacturing have expanded pipelines of vaccines, biologics, and cell therapies. Yet clinical trials remain manual, fragmented, and inefficient. AI screening tools achieve 90.5% sensitivity and 99.3% specificity for identifying eligible patients, with eligibility screening time reduced by 78%. However, current AI applications remain fragmented—this fragmentation represents the dominant barrier to accelerating trials.

The University of Alberta possesses a unique convergence of capabilities: Amii with 10+ CIFAR AI Chairs; Connect Care spanning 682 sites and 4.4 million Albertans; over $400M in discovery infrastructure (PRAIRIE Hub, ACTM, Li Ka Shing Institute of Virology, Cryo-EM Facility, Glycomics Institute, TMIC); and proven AI deployment (Dr. Mitchell's AI Scribe across 10 Alberta EDs). No other Canadian institution combines AI leadership, unified health system integration, advanced biomanufacturing, and translational infrastructure in a single ecosystem.

**The Clinical Trials Acceleration Platform (CTAP)** is Canada's first AI-native clinical trials infrastructure—a **$10.4 million** investment that embeds AI as the foundational architecture for trial design, recruitment, monitoring, and analysis.

## 2.2 Why the University of Alberta, Why Now

**Patients cannot wait.** Alberta has made transformative investments in compute, AI expertise, and biomanufacturing. What is missing is **the glue**: an AI-native platform connecting these assets into a seamless pathway from discovery to patient benefit.

**Key Convergent Advantages:**
- **SDRE/Amii AI Compute:** Up to 1,000 NVIDIA H200 GPUs; 10+ CIFAR AI Chairs
- **AI + Health Hub (Kipnes Institute):** Bridges academic research to clinical AI deployment; Dr. Mitchell's AI Scribe deployed across 10 Alberta EDs
- **Connect Care:** Province-wide Epic EMR (682 sites, 4.4M Albertans) enabling population-scale queries
- **Discovery Infrastructure:** $400M+ including PRAIRIE Hub, ACTM, Li Ka Shing Virology, Cryo-EM, GlycoNet, TMIC
- **Biomanufacturing:** PRAIRIE Hub ($109.9M) + CMPC ($200M, 70M+ doses/year by 2026)—Canada's largest pharmaceutical manufacturing capacity

**PRAIRIE Hub Vaccine Feeder Programs:** Two CBRF-funded programs generate vaccine candidates for CTAP validation: saRNA Vaccine Platform ($35.3M, Houghton) and Comparative Vaccine Platform ($57M, Shmulevitz/Pelka).

**API Partnership:** CTAP formalizes a strategic partnership with Applied Pharmaceutical Innovation (API) creating Canada's only fully integrated discovery-to-production pathway. The MOU establishes: trial-to-manufacturing workflow; data integration for manufacturing intelligence; shared GMP workforce development; and biorepository-manufacturing quality correlation.

## 2.3 The Integrated Infrastructure Model

CTAP is led by UACT and governed through the **Kipnes Health Research Institute**. The platform operates through five tightly coupled domains unified by a three-zone Trusted Research Environment (TRE):

**Domain 1: AI-Enabled Operations Hub.** CRAIDL (Clinical Research Assistants for Intelligent Design and anaLysis)—8 AI agents developed with Amii—simulate protocol feasibility, predict recruitment bottlenecks, and automate regulatory documentation. Four agents are validated at investigator scale; CFI investment enables enterprise deployment. Target: 40–50% reduction in trial startup time.

**Domain 2: Living Biorepository.** Transforms biospecimen management from static storage into an intelligent discovery engine via: real-time EMR linkage (FHIR API to Connect Care); automated outcome annotation; predictive inventory management; and consent-aware sample routing.

**Domain 3: Secure Research Data Environment.** Three-zone TRE (AWS Calgary): Zone 1 (identifiable, AHS-controlled); Zone 2 (de-identification, AI processing); Zone 3 (de-identified research data, OMOP analytics). Extends to prospective "Trials Zone" meeting Health Canada Division 5 and ICH E6(R3) requirements.

**Domain 4: Open Science Infrastructure.** OMOP Common Data Model enables federated queries across OHDSI (100+ institutions), VITAL, PRAIRIE Hub, and RareKids-CAN.

**Domain 5: Clinical Trials Omics Integration.** Trial-to-facility interface layer connecting trials with UAlberta core facilities (ACE Core, Cryo-EM, GlycoNet, TMIC, Alberta Proteomics) through protocol integration services, quality bridge infrastructure, and data return pipelines.

## 2.4 CRAIDL: The AI-First Clinical Trials Engine

CRAIDL (Clinical Research Assistants for Intelligent Design and anaLysis) leverages agentic AI—agents functioning autonomously with human oversight—developed with Amii and CIFAR AI Chairs. Built on Canadian VIGOUR Centre's 50+ trial templates.

**The In Silico Assessment Agent**—Canada's first prospective trial intelligence capability—simulates trial outcomes before enrollment, addressing the 40-60% trial failure rate. Led by Dr. Lazar Atanackovic (Amii Fellow), the agent enables digital twin generation and synthetic control arms for rare disease trials. AI Scribe (Mitchell) extends this vision into real-time clinical data capture.

**Human-in-the-Loop:** All outputs require human review—protocol drafts by PI/statistician, safety flags by medical monitor, regulatory packages by regulatory affairs.

Benchmark: RECOVERY trial achieved first patient within 9 days. CRAIDL democratizes this capability nationally via ACT-AEC.

## 2.5 Core Objectives

By 2031, CTAP will: **reduce trial start-up by 40-50%** (stretch: 4 weeks idea-to-activation); **double recruitment efficiency** with 15% Indigenous/20% rural targets; **enable first-in-human and advanced-therapy trials** (5+ FIH including challenge studies, 3+ cell therapy trials); **integrate biospecimens with 70%+ trials** having pre-planned pipelines; **deploy 8 CRAIDL agents** nationally via ACT-AEC; **establish pandemic preparedness capacity** through Challenge Trial Unit; **serve as Western anchor** for ACT-AEC, PRAIRIE Hub, RareKids-CAN (20+ sites, 100+ OHDSI institutions); and **train 150+ HQP** (20% from underrepresented groups).

## 2.6 Flagship Programs

Five high-impact programs operationalize CTAP:

1. **Applied AI Innovation:** Dr. Mitchell's PHAIR Lab (AI + Health Hub) generates implementation science knowledge; CFI investment enables TRE-scale AI validation and CRAIDL training.

2. **Neuro-immunology & MS Cell Therapies:** ACTM-manufactured cell products tested in early-phase MS trials; integrates with CHARM platform (CFI IF 2025).

3. **Hepatitis C & Vaccine Trials:** Dr. Houghton (Nobel 2020) leads Canada's first academic Challenge Trial Unit (CHIM facility) for accelerated vaccine efficacy evaluation.

4. **Precision Cardio-Renal-Metabolic:** CVC-anchored pragmatic trials; Connect1D Canada registry demonstrates decentralized trial methodology.

5. **Pediatric Rare Disease (RareKids-CAN):** Stollery CIU—one of two Canadian pediatric Phase I centres (316,000+ patients annually)—serves as Western anchor with WCHRI Translational Genomics Hub.

## 2.7 Feasibility and International Context

**Operational Foundation:** UACT/CTO (coordinated trials infrastructure); Canadian VIGOUR Centre (50+ trial templates for CRAIDL training); CBSR and ACTM (functioning facilities with validated SOPs); Amii/CIFAR AI Chairs (AI Scribe at scale); ACE Core, GlycoNet, TMIC, Cryo-EM (established CFI-funded core facilities); 4 CRAIDL agents operational at investigator scale. Phased 4-5 year implementation with early wins within 18-24 months.

**International Context:** While centres globally (UK Biobank, All of Us, German National Decade Against Cancer) are developing components, no platform integrates: (1) GMP manufacturing, (2) structural/systems biology, (3) metabolomics/glycomics at scale, (4) top-tier AI institute, (5) mature trials organization, and (6) province-wide EMR. **CTAP is Canada's first AI-native clinical trials platform.**

# 3. Research Team

**Leadership:** Lawrence Richer, MD, PhD (PI) - Associate Dean Research, College of Health Sciences.

**Clinical Trials:** Canadian VIGOUR Centre (50+ trials); Dr. James Shapiro (CRC Transplant Surgery, Edmonton Protocol pioneer); Dr. Michael Houghton (Nobel 2020, vaccine challenge trials).

**AI/Computer Science:** Amii CIFAR AI Chairs; Dr. Ross Mitchell (Canada CIFAR AI Chair, AI Scribe); Dr. Lazar Atanackovic (Amii Fellow, generative modeling); Dr. Amber Simpson (CRC Biomedical Computing, Queen's, radiomics).

**Core Facilities:** ACE Core (single-cell, spatial transcriptomics); Alberta Cryo-EM (Young/Das); GlycoNet (Mahal); TMIC (Wishart/Li); ACTM (GMP cell manufacturing); CBSR (Ritchie, biospecimens); iSMART (Mushahwar, CRC Tier 1, GLP device validation).

**Patient Partners:** Connect1D Canada patient co-leads and Community Advisory Board members serve as co-investigators with governance authority.

**Key Partnerships:** Amii (10+ CIFAR AI Chairs); Canadian VIGOUR Centre (50+ trials); Connect Care/AHS (provincial EMR); AWS Calgary (secure cloud); iSMART (GLP facility).

# 4. Equity, Diversity, and Inclusion

CTAP aligns with the University of Alberta's **Access, Community, and Belonging (ACB)** framework and operationalizes CIHR's Strategy for Patient-Oriented Research (SPOR) with patient partners as co-investigators with governance authority. Canada's first **Indigenous Clinical Trials Unit (ICTU)** ensures OCAP principles govern Indigenous data through TRE-enforced access controls, with culturally safe clinical spaces (smudging, Elder consultations, Indigenous language signage) and decentralized tools extending participation to remote communities.

**Explicit Targets:** 15% Indigenous participation (ICTU-co-designed protocols); 20% rural/remote participation; 20% of 150+ HQP from underrepresented groups. CRAIDL agents undergo systematic bias auditing with Community Advisory Board review. Accessible consent processes (Grade 6-8 reading level, multiple languages including Indigenous languages) and reserved compute resources for underfunded researchers.

# 5. Benefits to Canada

**Health and Social Benefits:** CTAP will provide **10,000+ patients annually** with earlier therapy access by 2031 through compressed trial timelines (start-up reduced from 12-18 to 4-6 months; 78% reduction in screening time). Connect Care—Canada's largest integrated CIS ($2B, 4.4M Albertans, 682 sites)—becomes accessible nationally via ACT-AEC. Canada's first Indigenous Clinical Trials Unit (ICTU) ensures 15% Indigenous and 20% rural enrollment with OCAP-compliant data governance.

**Economic Benefits:** CTAP attracts **$100M+ pharmaceutical R&D investment** and generates $6M+ additional annual research revenue by 2031. CRAIDL IP (8 AI agents, training datasets, APIs) deployed nationally via open-source licensing. **150+ HQP trained** (20% underrepresented groups) with globally competitive skills.

**National Leadership:** CTAP serves as Western anchor for ACT-AEC, PRAIRIE Hub ($57M CBRF), RareKids-CAN, Connect1D Canada, and VITAL (100+ OHDSI institutions). Open-source CRAIDL agents democratize trial design for small centres, Indigenous communities, and rural hospitals nationally.

| Benefit | Target by 2031 |
|---------|----------------|
| Patients with earlier therapy access | 10,000+ annually |
| Trial start-up reduction | 50-70% |
| Pharmaceutical R&D attracted | $100M+ |
| HQP trained | 150+ |
| Indigenous/rural enrollment | 15%/20% |
| Canadian sites with CRAIDL access | 20+ |

# 6. Infrastructure Request Justification

**Core Facility Model:** CTAP is designed as a formally recognized, institutionally supported **core facility** providing researchers with access to state-of-the-art clinical trials infrastructure, AI tools, and expertise regardless of administrative affiliation. The facility operates with a clearly defined governance structure (Kipnes Institute) and dedicated management overseeing all aspects. All five infrastructure suites are designed for multi-user access, shared utilization, and equitable access policies.

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

- **CTAP Steering Committee** chaired by UACT Director and co-chaired by Kipnes Institute leadership, with representation from CTO, NACTRC, CVC, WCHRI DCC, CBSR, ACTM, GlycoNet, TMIC, Amii, Indigenous leadership, and patient partners
- **Data Access Committee** responsible for researcher access, TRE workspace approvals—modeled on UK Biobank Access Committee
- **Operations Committee** for day-to-day coordination across cores
- **CRAIDL Development Committee** with AI/computer science and clinical trials expertise
- **EDI and Indigenous Advisory Council**
- **Scientific Advisory Board** with external members from ACT-AEC, PRAIRIE Hub, and international partners

## Institutional Supports

The University of Alberta and College of Health Sciences have committed to providing CTAP operational governance through the **Kipnes Health Research Institute**—CTAP's functional home within the College of Health Sciences. Specific commitments include: allocating and maintaining physical space in the Kipnes Health Research Academy and associated clinical facilities; providing base support for key personnel (Program Director, Operations Manager, Data Architect, Biobank Operations Lead, Indigenous Engagement Lead, CRAIDL Development Lead); integrating CTAP into institutional strategic plans and core-facility frameworks; and leveraging the Institute's AI + Health Hub and Health Research Translation Unit for governance and operational support.

## Operations and Maintenance

Major ongoing costs will be covered through a diversified funding model:

**Revenue Streams:**
- Infrastructure Operating Fund (IOF) allocations tied to CFI investment
- Cost-recovery user fees for biobanking ($35/sample processing, $5-15/year storage), cell manufacturing, and omics services
- Industry services: feasibility queries ($2,500/query), TRE workspace provisioning ($15,000/study-year), CRAIDL agent access ($5,000/study), CDISC transformation ($20,000/submission)
- Grant funding (PRAIRIE Hub, ACT-AEC, CIHR, NFRF)
- Institutional and philanthropic support, including leveraging the Kipnes gift

## Accessibility and Optimal Use

As a core facility, CTAP will ensure optimal utilization through: transparent access and prioritization policies; common SOPs, service menus, and pricing across cores; training and mentorship programs for HQP; making CRAIDL agents available to attract RCT projects; and meeting quality, safety, and regulatory metrics required as a sponsor of RCTs.

# 8. Supplemental Information

## 8.1 Research Data Management

Data generated through CTAP will be managed under a unified Data Governance Framework aligned with UofA policies, AHS agreements, and national guidance.

**Three-Zone Architecture:**
- Zone 1 (Identifiable): AHS custodian-controlled under formal data sharing agreements
- Zone 2 (Controlled): De-identification, transformation, AI agent processing with full audit trails
- Zone 3 (Research): De-identified trial data lake, OMOP analytics, project-isolated workspaces

**OMOP Common Data Model:** Connect Care data transformed to OMOP CDM v5.4 enabling standardized cohort discovery (OHDSI ATLAS), federated queries with OHDSI network (100+ institutions), VITAL (Canadian), PRAIRIE Hub, and RareKids-CAN.

**Regulatory Compliance:** Health Canada Division 5, ICH E6(R3), CDISC, HL7 FHIR, HIA, FAIR Principles; optional 21 CFR Part 11 for FDA submissions.

## 8.2 Technology Transfer

CTAP will work with the university's research innovation office to identify, protect, and mobilize IP. CRAIDL represents significant technology transfer opportunity: AI agents for protocol development, data management, event adjudication, ethics submissions, regulatory compliance, and budgeting have commercial value for pharmaceutical companies, CROs, and academic research organizations. The team will maintain commitment to open-source deployment of core CRAIDL agents across the ACT-AEC network.

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

**Implementation Phases:**
- Phase 1 (Months 1-12): TRE infrastructure, EDC deployment, Connect Care bulk extract, OMOP ETL
- Phase 2 (Months 13-24): GPU cluster, Protocol Agent v1.0, Data Management Agent v1.0, FHIR real-time integration
- Phase 3 (Months 25-36): All 8 CRAIDL agents deployed, OHDSI participation, industry services launch
- Phase 4 (Months 37-48): VITAL network integration, CRAIDL agents to ACT-AEC, full sustainability

# Conclusion

This proposal requests **$10.4 million** to build Canada's first AI-native clinical trials platform—infrastructure that exists nowhere else in the country. By integrating SDRE/Amii's computational capacity (1,000 H200 GPUs), Connect Care's unparalleled clinical reach (4.4M Albertans, 682 sites), and a Living Biorepository's precision, CTAP establishes the University of Alberta as the permanent national hub for advanced therapeutic validation.

**Measurable national impact by 2031:** 10,000+ patients annually with earlier therapy access; 50-70% reduction in trial start-up times; $100M+ in pharmaceutical R&D attracted; 150+ highly qualified personnel trained; 15% Indigenous and 20% rural trial participation; 20+ Canadian sites with CRAIDL access through ACT-AEC deployment.

CTAP creates infrastructure that Canada needs: the only end-to-end advanced therapeutics corridor (discovery → manufacturing → trials → market); the first Indigenous Clinical Trials Unit; challenge trial capability for pandemic preparedness; and the Western anchor for national clinical trials networks. The $10.4M CFI investment catalyzes transformation across Canadian health research, with economic returns exceeding investment within 5 years through industry attraction, IP generation, and health system efficiencies.

Clinical trials will no longer be bottlenecks—they become accelerators. Where data, biospecimens, and operational knowledge cycle continuously to accelerate discovery. Where the promise of AI-enabled medicine becomes operational reality for patients across Alberta and beyond.
