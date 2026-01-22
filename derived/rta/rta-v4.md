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
date: 2025-01-18

bibliography: ../refs/references.bib
csl: ../../../shared/csl/vancouver.csl
---
# Clinical Trials Acceleration Platform (CTAP)

# 1. Strategic Alignment

The Clinical Trials Acceleration Platform (CTAP) directly operationalizes "Forward with Purpose: A Strategic Plan for Research and Innovation 2023-2028", which calls for the University of Alberta to address grand challenges through interdisciplinary research, data-enabled discovery, and deep partnerships with health systems. CTAP embodies the plan's emphasis on health and life sciences, artificial intelligence, and digital innovation by creating an integrated, AI-enabled clinical trials infrastructure that links discovery to impact—from molecular design and GMP manufacturing to biospecimen-enabled trials and real-world evidence.

CTAP's Functional Home: The Dianne and Irving Kipnes Health Research Institute. Established in September 2025 through a $25 million philanthropic gift, the Kipnes Institute is an organizational entity—not a building—housed within the College of Health Sciences (in the renamed Dianne and Irving Kipnes Health Research Academy). The Institute's vision is "to create a learning health system where artificial intelligence enhances care, clinical trials validate breakthroughs, and specialised programs demonstrate the full cycle of research from insight to impact—continuously improving outcomes." CTAP is the infrastructure backbone that realises this vision. The Institute's AI + Health Hub (led by Drs. Neesh Pannu and Gillian Lemermeyer) and Health Research Translation Unit provide the governance, operational framework, and community within which CTAP operates—positioning Alberta as "the place where research discoveries reach patients in our communities not in decades, but in years or even months."

CTAP operationalises this learning health system vision through a closed-loop architecture: de-identified patient data from Connect Care flows into the Trusted Research Environment for analysis, validated AI-driven insights flow back to clinical teams for implementation, and outcomes data closes the loop to refine future discoveries. This is the same model that enabled Ontario's GEMINI project to achieve a 26% reduction in unexpected deaths among hospitalised patients—now extended to encompass clinical trials, biospecimens, and molecular characterisation in an integrated translational ecosystem.

Provincial Alignment: CTAP strongly supports the Alberta Technology and Innovation Strategy (ATIS), which aims to make Alberta an internationally recognised technology and innovation hub. By integrating AI, advanced biomanufacturing (PRAIRIE Hub, ACTM, API/CMPC), secure cloud infrastructure (AWS Canada - Calgary region), and clinical trials at scale, CTAP directly advances ATIS goals in talent development, commercialisation, data-driven innovation, and global competitiveness.

# 2. Research Plan

## 2.1 The Opportunity

The bottleneck to transforming scientific breakthroughs into patient benefit is no longer discovery—it is validation. Advances in AI, molecular biology, and biomanufacturing have expanded pipelines of vaccines, biologics, and cell therapies. Yet clinical trials remain manual, fragmented, and inefficient—this fragmentation represents the dominant barrier to accelerating trials.

The University of Alberta possesses a unique convergence of capabilities: Amii with 10+ CIFAR AI Chairs; Connect Care spanning 682 sites and 4.4 million Albertans; over $400M in discovery infrastructure (PRAIRIE Hub, ACTM, Li Ka Shing Institute of Virology, SPP-ARC/Cryo-EM, GlycoNet, TMIC); and proven AI deployment (Dr. Mitchell's AI Scribe across 10 Alberta EDs). No other Canadian institution combines AI leadership, unified health system integration, advanced biomanufacturing, and translational infrastructure in a single ecosystem.

The Clinical Trials Acceleration Platform (CTAP) is Canada's first AI-native clinical trials infrastructure—a $10.2 million investment that embeds AI as the foundational architecture for trial design, recruitment, monitoring, and analysis.

## 2.2 The Translation Challenge: From Bench to Bedside

A laboratory discovery is only the beginning of a 10-15 year journey to patients. Translating a pre-clinical finding into an approved therapy requires navigating multiple sequential stages—each with substantial timelines and failure points:

- Pre-clinical validation: 2-4 years (95% of compounds fail)
- Regulatory/ethics approval: 12-18 months (expertise gaps, administrative burden)
- Trial activation: 9-12 months (site setup, training, systems)
- Recruitment & data collection: 2-5 years (80% of trials miss enrollment targets)

Worked Example: The Taurine Trial for Long COVID (NCT06721949)

Dr. Gavin Oudit's team discovered that SARS-CoV-2 depletes taurine, critical for mitochondrial function. Pre-clinical work showed taurine supplementation restored cellular metabolism. Today's reality: 13 months to first patient, ~50 patients/year enrollment, manual data management.

With CTAP infrastructure:
- Protocol development: 4 months → 2 weeks (CRAIDL agents)
- Patient identification: Manual chart review → Real-time queries across 4.4M Albertans
- Biospecimen management: Static frozen samples → EMR-linked Living Biorepository
- Data capture: Excel spreadsheets → AI Scribe voice-first automation

Projected outcome: First patient in 45 days (Alberta FAST target), 500+ patients/year capacity.

Why each suite matters: Without the Living Biorepository, samples lack outcome linkage. Without the TRE, each query requires 6-12 month data access requests. Without CRAIDL, investigators reinvent protocols manually. Without Translational Integration, core facilities operate in silos. Without Trial Innovation Tools, rural and Indigenous communities cannot participate.

Northern Research Reality: The Hemophilus influenzae type A vaccine trial in Nunavut demonstrates both the feasibility and unique requirements of clinical research in northern Indigenous contexts. Previous mobile health platform deployments (REDCap) failed in similar settings due to connectivity constraints, hardware limitations, and workflows that increased burden rather than reducing it. Frontline teams reverted to paper. CTAP's response: infrastructure realism. The TRE's store-and-forward architecture enables data capture during connectivity windows. Telehealth kits prioritize reliability over feature richness. This is infrastructure designed for operational reality.

## 2.3 Why the University of Alberta, Why Now

Patients cannot wait. The University of Alberta has made transformative investments in compute, AI expertise, and biomanufacturing. What is missing is the glue: an AI-native platform connecting these assets into a seamless discovery-to-patient pathway.

Convergent Advantages: SDRE/Amii (1,000 NVIDIA H200 GPUs, 10+ CIFAR AI Chairs); Connect Care (province-wide Epic EMR, 4.4M Albertans, integrated OnCore CTMS); Discovery Infrastructure ($400M+ including PRAIRIE Hub, ACTM, Li Ka Shing, SPP-ARC/Cryo-EM, GlycoNet, TMIC); Biomanufacturing (API + CMPC: $200M, 70M+ doses/year).

Feeder Programs: PRAIRIE Hub vaccine platforms ($92.3M CBRF: saRNA Platform, Houghton $35.3M; Comparative Vaccine Platform, Shmulevitz/Pelka $57M) generate candidates for CTAP validation. API partnership creates Canada's only fully integrated discovery-to-production pathway.

## 2.4 The Integrated Infrastructure Model

CTAP operates through four tightly coupled domains unified by a three-zone Trusted Research Environment:

Domain 1: CRAIDL AI-Enabled Operations. Eight AI agents (Protocol, Ethics, Data Management, Safety, Regulatory, Budget, Adjudication, Analysis) developed with Amii—four already validated at investigator scale. Target: 40-50% reduction in trial startup time. Human-in-the-loop: all outputs require expert review. Benchmark: RECOVERY trial achieved first patient in 9 days; CRAIDL democratises this operational readiness nationally via ACT-AEC.

Domain 2: Living Biorepository. Transforms biospecimen management from static storage into an intelligent discovery engine via real-time EMR linkage (FHIR API to Connect Care), automated outcome annotation, and consent-aware sample routing.

Domain 3: Trusted Research Environment. Three-zone TRE building on ~$1.35M prior AWS investment. Zone 1 (identifiable, AHS-controlled via Snowflake); Zone 2 (de-identification, AI processing); Zone 3 (de-identified research, OMOP analytics). CFI extends this to a "Trials Zone" meeting Health Canada Division 5 and ICH E6(R3) requirements—2.4:1 leverage on prior investment. Indigenous Data Sovereignty: The TRE's three-zone architecture directly enables OCAP implementation. Zone 1 can be custodian-controlled by Indigenous governance bodies, not merely AHS. The First Nations Health Consortium, acting as trusted intermediary and data trustee, governs access for First Nations participants—addressing Connect Care's absence of Indigenous identifiers. Technology platforms, governance policies, and formal data-sharing agreements co-evolve; CTAP provides the technical foundation enabling all three.

Domain 4: Translational Integration. Trial-to-facility interface connecting trials with UAlberta core facilities (ACE Core, SPP-ARC/Cryo-EM, GIA, TMIC, Alberta Proteomics) through protocol integration services, quality bridge infrastructure, and unified data return pipelines.

## 2.5 Core Objectives

By 2031, CTAP will: achieve Alberta FAST 45-day trial startup (vs. 9-12 month Canadian average); reduce trial planning-to-activation by 40-50%; double recruitment efficiency with 15% Indigenous/20% rural targets; enable 5+ first-in-human trials (including challenge studies) and 3+ cell therapy trials; integrate biospecimens with 70%+ trials; deploy 8 CRAIDL agents nationally via ACT-AEC; serve as Western anchor for ACT-AEC, PRAIRIE Hub, RareKids-CAN (20+ sites, 100+ OHDSI institutions); and train 150+ HQP (20% from underrepresented groups).

## 2.6 Flagship Programs

1. Applied AI Innovation: PHAIR Lab (Mitchell, Abdalla) within AI + Health Hub—develops, validates, and deploys clinical AI solutions generating implementation science and real-world evidence.

2. Regenerative & Cell-Based Therapeutics: Long COVID translational pipeline (Oudit, Richer) with actively enrolling taurine trial (NCT06721949); ACTM-produced cell products in Phase 1 CAR-T trials; integration with proposed CHARM pluripotent stem cell platform and Regenerative Medicine Hub.

3. Hepatitis C & Vaccine Trials: Nobel laureate Michael Houghton's hepatitis C vaccine challenge trials (Health Canada reviewed); Western Canada's first academic CHIM facility (2028) supporting PRAIRIE Hub vaccine programs.

4. Precision Cardio-Renal-Metabolic: Alberta Diabetes Institute innovations (Peter Senior); Connect1D Canada registry (6,000+ participants) demonstrating decentralised trial methodology; Canadian VIGOUR Centre pragmatic trials (Justin Ezekowicz).

5. Pediatric Rare Disease (RareKids-CAN): Stollery CIU Phase 1 capability; WCHRI Translational Genomics Hub (Alexander, Caluseriu); national RareKids-CAN data coordinating centre leadership (Richer).

## 2.7 Feasibility and International Context

Operational Foundation: CTAP builds on functioning infrastructure: UACT/CTO coordinated trials network; Canadian VIGOUR Centre (50+ validated trial templates for CRAIDL training); CBSR and ACTM with validated GMP workflows; Amii/CIFAR AI Chairs with production-scale AI Scribe deployment; four CRAIDL agents operating at investigator level. Phased 4-5 year implementation with early wins in 18-24 months.

International Context: UK Biobank, All of Us, and Germany's National Decade Against Cancer have developed individual components. No existing platform integrates: (1) GMP manufacturing, (2) structural/systems biology, (3) metabolomics/glycomics at scale, (4) top-tier AI institute, (5) high-throughput trials organisation, and (6) province-wide EMR. CTAP is Canada's first AI-native clinical trials acceleration platform, purpose-built to translate discovery into first-in-human and population-scale trials with unprecedented speed and rigour.

# 3. Research Team

Leadership: Lawrence Richer (Associate Dean Research, College of Health Sciences; NACTRC Centre Director; RareKids-CAN DCC lead); Jason Acker (AVP Research Integrity Support, cryo-preservation expertise).

Clinical Trials: Justin Ezekowicz (Canadian VIGOUR Centre, 50+ trials), Peter Senior (Alberta Diabetes Institute), Gavin Oudit (Long COVID translational program), Neesh Pannu (pragmatic EMR-embedded trials), Michael Houghton (Nobel 2020, vaccine challenge trials).

AI/Computer Science: Amii CIFAR AI Chairs; Ross Mitchell (Canada CIFAR AI Chair, AI Scribe); Mohamed Abdalla (Amii Fellow, generative modelling); Amber Simpson (CIFAR AI Chair, Amii Fellow, radiomics).

Biosample Repository: Bruce Ritchie (CBSR). Patient Partners: Connect1D Canada co-leads with governance authority.

Key Partnerships: Amii (10+ CIFAR AI Chairs); Connect Care/AHS (provincial EMR); AWS Canada ($500k+ credits, Calgary region); API; iSMART (Mushahwar, CRC Tier 1, GLP device validation).

# 4. Equity, Diversity, and Inclusion

CTAP aligns with the University of Alberta's Access, Community, and Belonging (ACB) framework and operationalizes CIHR's Strategy for Patient-Oriented Research (SPOR) with patient partners as co-investigators with governance authority. Canada's first Indigenous Clinical Trials Unit (ICTU), led by Wayne Clark and Tibetha Kemble, embeds OCAP principles through governance architecture: the First Nations Health Consortium acts as trusted intermediary and data trustee, accountable to communities for how data are collected, accessed, interpreted, and used. The TRE's Zone 1 custodian layer enables this technically—Indigenous governance bodies control access to their communities' data. This addresses a critical gap: Connect Care lacks Indigenous identifiers, creating analytic blind spots that CTAP's architecture resolves. Culturally safe clinical spaces (smudging, Elder consultations, Indigenous language signage) and decentralized tools extend participation to remote communities.

Explicit Targets: 15% Indigenous participation (ICTU-co-designed protocols); 20% rural/remote participation; 20% of 150+ HQP from underrepresented groups. CRAIDL agents undergo systematic bias auditing with Community Advisory Board review. Accessible consent processes (Grade 6-8 reading level, Indigenous languages) and reserved compute for underfunded researchers.

# 5. Benefits to Canada

Health and Social Benefits: CTAP will materially improve patient access to innovative therapies, enabling more than 10,000 patients annually by 2031 to participate in clinical trials through substantially compressed timelines. Building on Alberta's FAST initiative and the province-wide Advarra OnCore CTMS, trial start-up durations will be reduced from 12-18 months to 45 days or less, with a 78% reduction in AI-enabled screening time, accelerating progression from eligibility to treatment. Through the ACT-AEC network and VITAL/GEMINI—an ISED-funded national federated health data platform spanning Alberta, Ontario, and Quebec—CTAP's integration with Alberta's Connect Care system and AHS Snowflake research data warehouse, combined with an open-source, open-science operating model, will provide a scalable foundation for large, real-world-ready trials across Canada. CTAP also establishes Canada's first Indigenous Clinical Trials Unit (ICTU), led by Wayne Clark, embedding OCAP-compliant data governance and supporting 15% Indigenous and 20% rural participant enrollment, directly addressing long-standing inequities in clinical research access. Northern Health Security: The Government of Canada is investing significantly in northern communications infrastructure, framed as national security and defence of the North. CTAP leverages these investments: the TRE works with intermittent connectivity through store-and-forward; telehealth kits designed for infrastructure realism enable trial participation from Nunavut, NWT, and northern Indigenous communities; OCAP-compliant governance ensures improved connectivity strengthens rather than threatens Indigenous data sovereignty.

Economic Benefits: CTAP will significantly strengthen Canada's clinical trials economy by attracting over $100M in pharmaceutical and biotechnology R&D investment in Alberta and generating more than $10M in incremental annual industry research revenue by 2031 at the U of Alberta. The CRAIDL intellectual property portfolio—comprising eight AI agents, curated training datasets, and interoperable APIs—will be deployed nationally through open-source licensing to maximize adoption, interoperability, and downstream innovation. In parallel, CTAP will train more than 150 highly qualified personnel (HQP), with at least 20% from underrepresented groups, equipping Canada's workforce with globally competitive expertise in AI-enabled clinical trials, regulatory science, and translational research operations.

National Leadership and System Impact: CTAP will serve as a national anchor for major clinical trials and research networks, including ACT-AEC, the PRAIRIE Hub, RareKids-CAN, Connect1D Canada, and VITAL. By releasing CRAIDL agents as open-source infrastructure, CTAP democratizes access to advanced trial design and execution capabilities, enabling participation by smaller centres, Indigenous communities, and rural hospitals nationwide, and reinforcing Canada's leadership in equitable, AI-native clinical research.

# 6. Infrastructure Request Justification

Core Facility Model: While the University of Alberta Clinical Trials (UACT) consortium represents a mature and functioning network of clinical trial support centres, and the Canadian BioSample Repository (CBSR) has supported hundreds of investigators and clinical trials nationally and internationally, CTAP has not yet operated as a fully integrated core platform. As such, the concept may not yet be sufficiently mature to be advanced as a formal core facility. It is nonetheless presented for consideration as a future-facing model, contingent on phased integration and demonstrated demand. The current RTA-stage budget does not include dedicated support personnel. Should the pursuit of the core facility funding stream be considered in subsequent phases, NACTRC and clinical trial overhead revenues could provide a sustainable mechanism to meet the required 20% salary cost-sharing during the funding period. Over the longer term, increased clinical trial activity enabled by CTAP would generate incremental overhead revenue, creating a self-reinforcing sustainability model in which clinical trial income directly supports and scales the enabling infrastructure.

The total infrastructure request is $10,188,911 CAD, organized into five suites aligned with the platform's five integrated domains.

## Suite 1: Clinical Trials Participant & Procedure Infrastructure ($2,290,000)

This suite enhances an existing network of three clinical research units while establishing two specialized units:

Existing Facility Upgrades:
- Adult Clinical Investigation Unit (UAH MacKenzie Centre): POC laboratory, IP pharmacy automation, monitoring upgrades
- Pediatric Clinical Investigation Unit (Stollery Children's Hospital): Rare disease equipment, telehealth capability
- ADI Clinical Research Unit (Li Ka Shing Centre): Bariatric-capable clinical spaces with specialized exam tables, hospital beds, and weighing equipment; temperature-monitored IP pharmacy storage; vital signs monitoring; ultrasound-guided phlebotomy for difficult vascular access in metabolic/obesity trials; 12-lead ECG for cardiac safety monitoring

New Specialized Units:

Suite 1a - Vaccine Challenge Trial Unit ($590,000): Western Canada's first academic controlled human infection model (CHIM) facility, supporting Dr. Michael Houghton's hepatitis C vaccine program and pandemic preparedness. Four negative-pressure isolation rooms with HEPA filtration, continuous monitoring, and extended-stay capability for 14+ day quarantine protocols. Space identification in progress; proposed co-location within Li Ka Shing not deemed feasible and will need to explore alternative locations.

Pediatric Rare Disease Unit ($200,000 CTAP): Specialized infrastructure at Stollery CIU for gene therapy and cell therapy trials requiring 15+ year follow-up. Connects to the national RareKids-CAN network and the WCHRI Translational Genomics Hub.

Components: Renovations & fit-out ($800,000), Challenge Unit renovation & equipment ($590,000), monitoring equipment ($400,000), POC laboratory ($200,000), IP pharmacy ($300,000), Autonomic Function Labs ($261,000), Pediatric Unit ($170,000), ADI CRU bariatric/metabolic equipment ($128,000), services ($30,000).

## Suite 2: Living Biorepository ($5,837,911)

This suite establishes the Living Biorepository concept—a fundamental reconceptualisation that transforms biospecimen management from static storage into an intelligent, continuously-updated discovery engine:

Automated Sample Processing ($650,000): Hamilton/Tecan automated liquid handling system for high-throughput sample aliquoting and preparation.

Cryogenic Storage ($400,000): 10 ULT freezers (-80C Thermo Fisher TSX Series), 4 LN2 vapor-phase tanks (Chart MVE High Efficiency), enabling expanded capacity for PRAIRIE Hub and trial specimens.

Biocontainment Equipment ($190,000): 6 Class II biosafety cabinets (Baker/NuAire), 4 refrigerated centrifuges (Beckman Coulter Avanti) for biocontainment-compatible sample processing.

Monitoring & Microscopy ($210,000): 24/7 environmental monitoring system (Rees Scientific/Vaisala), clinical-grade microscopes and counters (Keyence/Countess 3 FL).

BioBank LIMS Platform ($335,000): OpenSpecimen basic support license (5-year, 21 CFR Part 11 compliant), plugin development & data migration, Connect Care FHIR integration, dynamic consent module, and staff training.

Biorepository Capacity Expansion ($725,000): Additional freezers, storage, and automation reallocated from Suite 4 SDRE consolidation.

Renovation & Infrastructure ($3,327,911): Comprehensive biorepository renovation based on B-PREPARED proposal (CBRF2-2023-00132) with 10% inflation adjustment. Includes: LKS basement freezer farm fit-out (Room B-017), processing lab renovation (Room B-025A), shipping area (Room B-025), additional freezer storage (Rooms B-025A1 and B-037); Katz 3rd floor clean room suite (Room 3-075); electrical distribution upgrade with dual-generator standby power; HVAC upgrades including dehumidified "bone-dry" rooms and supplemental cooling.

Note: Cell therapy manufacturing capabilities (GMP bioreactors, cell processors) are provided through existing ACTM infrastructure and are not included in this CFI request.

## Suite 3: Clinical Trials - Translational Integration Hub ($555,000)

This suite provides the trial-to-facility interface layer connecting clinical trials with UAlberta's omics and imaging infrastructure through partnerships rather than duplication. A critical capability is radiomics integration through the Peter Allen MRI Research Centre (PAMRC)—enabling quantitative imaging analysis for therapy response monitoring, biomarker discovery, and AI-driven trial stratification.

- Protocol Integration Services ($300,000): Consent modules, sample collection kits, protocol templates, regulatory dossiers, SOPs
- Quality Bridge Infrastructure ($280,000): Pre-analytical QC systems, cold-chain logistics, sample preparation standardization
- Data Return Pipeline ($250,000): Facility data adapters, OMOP molecular extensions, analysis workstations
- PAMRC Imaging Integration ($225,000): 10Gbps fiber network link to TRE Zone 2 ($25,000), NVMe storage node with LORIS research data platform ($75,000), Orthanc open-source research PACS ($50,000), LORIS deployment for longitudinal imaging-trial tracking ($60,000), PACS/LORIS-TRE integration and DICOM-to-OMOP mapping ($40,000). This imaging infrastructure enables radiomic feature extraction from trial MRI studies, linking imaging biomarkers directly to clinical outcomes within the TRE—supporting Dr. Amber Simpson's radiomic AI research and trial-embedded imaging analysis.
- AI/ML Development Workstations ($150,000): 2x NVIDIA DGX Spark (or equivalent GB10-based system) workstations for local CRAIDL agent development ($30,000), 2x high-memory analysis workstations for bioinformatics and radiomic feature extraction ($100,000), NVLink interconnect for large model development ($20,000)—enables local development and prototyping before SDRE scale-up, reducing cloud compute costs
- Gap-Filling Equipment Reserve ($350,000): For genuine capability gaps not available through partnerships

## Suite 4: Data Platform, Secure Environments, AI/HPC ($1,130,000)

This suite builds the unified data architecture connecting trial data to the TRE and CRAIDL agents, leveraging ~$1.35M in prior institutional AWS investment (TRE architecture, AI Scribe AWS credits, ProServe consulting) and UAlberta's substantial existing research computing infrastructure (SDRE/Amii HPC with up to 1,000 H200 GPUs) rather than duplicating it. The CFI request extends this proven foundation at a 2.4:1 leverage ratio:

- Clinical Trials Platform ($1,400,000): EDC/eSource platform meeting Health Canada GCP requirements ($400,000), identity management with zero-trust architecture ($100,000), AWS cloud credits for TRE zones extending the existing AWS deployment in the AWS Canada Calgary region ($500,000), AWS architecture consulting ($300,000), PACS/DICOM integration gateway ($100,000)
- SDRE Integration & AHS Snowflake ($250,000): Reserved SDRE capacity for CRAIDL training and inference ($100,000), LLM development environment with MLflow ($50,000), radiomics GPU allocations ($0—leverages existing SDRE), AHS Snowflake research instance integration for Connect Care bulk extracts enabling population-scale cohort queries across 4.4M Albertans ($75,000), AI Scribe-EDC integration extending Dr. Mitchell's proven deployment across 10 Alberta EDs ($75,000). Compute for training and large-scale inference runs on SDRE; CTAP provides integration layer and operational tooling.
- Networking & Security ($180,000): Zero-trust perimeter, zone isolation, ITSP.10.171 alignment (Canadian Centre for Cyber Security standard for protecting controlled information)—the security infrastructure enabling clinical trial data to flow securely between TRE zones, SDRE, clinical sites, and the AHS Snowflake data warehouse. Security controls implemented within SDRE infrastructure; CTAP investment covers clinical trials-specific access controls and audit logging.
- Data Infrastructure ($975,000): Clinical trial data platform licenses ($300,000), OMOP ETL and OHDSI tooling building on VITAL/GEMINI foundational work (ISED-funded national federated health data platform spanning Alberta, Ontario, and Quebec) ($100,000), BioBank/OpenSpecimen-TRE integration ($75,000), image harmonization software ($50,000), radiomics hot cache for active imaging data ($50,000), TRE Zone 2 operational storage for real-time trial operations ($150,000), CRAIDL inference servers for 24/7 agent availability ($200,000). Bulk storage and archival on SDRE; CTAP provides fast operational tier for clinical trial workflows.

## Suite 5: Trial Innovation Tools & Wearables ($376,000)

Suite 5 transforms how clinical trials reach participants—enabling CTAP's target of 20% rural/remote and 15% Indigenous participation through decentralized and hybrid trial infrastructure. Three innovations anchor this suite:

Connect1D Canada Integration: Connect1D—Canada's premier patient-driven T1D registry connecting 6,000+ Canadians to research—will be hosted within CTAP's TRE. This partnership with Dr. Peter Senior and patient co-lead Kate Farnsworth establishes Alberta as the data home for pan-Canadian diabetes research. Connect1D demonstrates the decentralized trial methodology at scale: participants upload CGM data from home, complete PROs via mobile app, and link to Connect Care records—enabling national recruitment while maintaining privacy through federated queries. The Connect1D model extends to all five flagship programs, proving how CTAP infrastructure enables hybrid trials that meet participants where they are.

AI Scribe EDC Innovation: Dr. Ross Mitchell's AI Scribe—deployed across 10 Alberta EDs with 6,700+ sessions—transforms clinical trial documentation through voice-first capture. CTAP integrates AI Scribe with EDC systems ($75,000 Suite 4 integration), enabling: (1) automatic structured data entry from physician-participant conversations, eliminating manual transcription burden; (2) consent audit trails capturing participant questions and comprehension markers; (3) natural language adverse event capture with automated MedDRA coding. For decentralized trials, AI Scribe documents telehealth visits without requiring participants to travel to academic centres.

Indigenous Digital Health (ICTU): Wayne Clark and Tibetha Kemble's Indigenous Clinical Trials Unit leads decentralized trial innovation for Indigenous communities. Critical lesson from northern experience: previous REDCap deployments failed not due to lack of interest, but because of connectivity constraints, hardware limitations (older iPads), and workflows that increased rather than decreased burden. Frontline teams reverted to paper. CTAP prioritizes infrastructure realism—reliability, simplicity, and trust over feature richness. Suite 5 telehealth kits ($100,000 for 20 rural/Indigenous sites) are designed for actual operational conditions: store-and-forward data sync during connectivity windows, durable hardware, and voice-first AI Scribe documentation that reduces workload. The eConsent platform supports Indigenous language options and culturally appropriate processes developed with community Elders. The First Nations Health Consortium, as data trustee, ensures OCAP compliance at the governance level while CTAP's TRE provides technical enforcement—learning from established models such as Manitoba Centre for Health Policy (MCHP) data governance frameworks.

Infrastructure Components:
- Software & Platforms ($276,000): Enterprise eConsent platform with multilingual support and CRAIDL Ethics Agent integration ($250,000), participant engagement app ($80,000), trial oversight dashboard ($50,000)
- Digital Tools & Services ($680,000): Device data integration APIs for wearables and novel sensors ($75,000), validation protocol library ($25,000), Digital Health Device Validation Program infrastructure linking to iSMART GLP facility ($175,000), operational analytics ($380,000)
- Hardware & Devices ($100,000): Telehealth kits for 20 rural/Indigenous sites enabling remote trial visits ($100,000)

Device Validation Pipeline (iSMART partnership): Light/Baghelani microwave glucose sensor, Gupta wound sensors, Mushahwar Smart-e-Pants, HiMARC 3MDR VR therapy—from GLP preclinical through pivotal validation, with Connect1D participants serving as validation cohorts for diabetes-relevant devices.

# 7. Sustainability

## Governance and Management

CTAP will be governed through a multi-tier structure anchored within the Kipnes Health Research Institute—CTAP's functional home:

- CTAP Steering Committee chaired by UACT Director and co-chaired by Kipnes Institute leadership, with representation from CTO, NACTRC, CVC, WCHRI, CBSR, Indigenous leadership, and patient partners
- Data Access Committee responsible for researcher access, TRE workspace approvals—modelled on UK Biobank Access Committee
- Operations Committee for day-to-day coordination across cores
- CRAIDL Development Committee with AI/computer science and clinical trials expertise with representation from AI+Health Hub, PHAIR Lab, Amii
- EDI and Indigenous Advisory Council
- Indigenous Data Governance Committee: Co-chaired by ICTU leadership and First Nations Health Consortium representative; oversees OCAP implementation, TRE Zone 1 custodian arrangements, data-sharing agreements, and community benefit provisions
- Scientific Advisory Board with external members from ACT-AEC, PRAIRIE Hub, RareKids-Can, and international partners

## Institutional Supports

The College of Health Sciences have committed to providing CTAP operational governance through the Kipnes Health Research Institute—CTAP's functional home within the College of Health Sciences. Specific commitments include: allocating and maintaining physical space in the Kipnes Health Research Academy and associated clinical facilities; providing base support for key personnel (Program Director, Operations Manager, Data Architect, Biobank Operations Lead, Indigenous Engagement Lead, CRAIDL Development Lead); integrating CTAP into institutional strategic plans and core-facility frameworks; and leveraging the Institute's AI + Health Hub and Health Research Translation Unit for governance and operational support.

## Operations and Maintenance

O&M Cost Structure:
- Suite 1 (Clinical Trials Infrastructure): $114,500/year, $572,500 over 5 years (5% rate)
- Suite 2 (Living Biorepository): $233,200/year, $1,166,000 over 5 years (6%/2% rate)
- Suite 3 (Translational Science): $38,850/year, $194,250 over 5 years (7% rate)
- Suite 4 (Data Platform & AI/HPC): $175,600/year, $878,000 over 5 years (12% rate)
- Suite 5 (Trial Innovation): $54,080/year, $270,400 over 5 years (8% rate)
- TOTAL: $616,230/year, $3,081,150 over 5 years

Suite 2 O&M: 6% on equipment ($2,510,000) + 2% on renovation ($3,327,911) + $16,000 software maintenance

CFI Infrastructure Operating Fund (IOF) Offset:

CFI provides IOF equal to 30% of the CFI award over 5 years:
- Total Infrastructure Request: $10,188,911
- CFI Capital Request (40%): $4,075,564
- IOF (30% of CFI): $1,222,669
- Net Institutional O&M Commitment (5-year): $1,858,481
- Net Annual Institutional Commitment: ~$371,700/yr

Revenue Streams to Cover Net O&M:
- Indirect costs of research (ICR) on industry clinical trials
- Cost-recovery user fees for biobanking ($35/sample processing, $5-15/year storage), cell manufacturing, and omics services - projected $200,000-400,000/yr at steady state
- Industry services: feasibility queries ($2,500/query), TRE workspace provisioning ($15,000/study-year), CRAIDL agent access ($5,000/study), CDISC transformation ($20,000/submission) - projected $150,000-300,000/yr
- Grant funding (PRAIRIE Hub, ACT-AEC, CIHR, NFRF) - infrastructure access fees built into trial budgets
- Philanthropic support, including leveraging the Kipnes gift

## Accessibility and Optimal Use

CTAP will ensure optimal utilisation through: transparent access and prioritisation policies; common SOPs, service menus, and pricing across platform components; training and mentorship programs for HQP; making CRAIDL agents available to attract RCT projects; and meeting quality, safety, and regulatory metrics required as a sponsor of RCTs.

# 8. Supplemental Information

## 8.1 Research Data Management

Data generated through CTAP will be managed under a unified Data Governance Framework aligned with UofA policies, AHS agreements, and national guidance—building on the VITAL/GEMINI federated architecture that demonstrated a 26% reduction in unexpected hospital deaths through learning health system data integration.

Three-Zone Architecture:
- Zone 1 (Identifiable): AHS custodian-controlled under formal data sharing agreements, with Connect Care bulk extracts via AHS Snowflake research instance
- Zone 2 (Controlled): De-identification, transformation, AI agent processing with full audit trails, privacy-preserving analytics
- Zone 3 (Research): De-identified trial data lake, OMOP analytics, project-isolated workspaces for multi-institutional collaboration

OMOP Common Data Model & VITAL/GEMINI Integration: Connect Care data transformed to OMOP CDM v5.4 enabling: standardized cohort discovery (OHDSI ATLAS); federated queries with the global OHDSI network (100+ institutions); seamless integration with VITAL/GEMINI—the ISED-funded national federated health data platform spanning Alberta, Ontario, and Quebec; PRAIRIE Hub biomarker studies; and RareKids-CAN pediatric rare disease research. The OMOP transformation leverages foundational work already underway through the VITAL program, ensuring national interoperability for pan-Canadian clinical trials.

Regulatory Compliance: Health Canada Division 5, ICH E6(R3), CDISC, HL7 FHIR, HIA, FAIR Principles; optional 21 CFR Part 11 for FDA submissions.

## 8.2 Technology Transfer

CTAP will work with the university's research innovation office to identify, protect, and mobilize IP. CRAIDL represents significant technology transfer opportunity: AI agents for protocol development, data management, event adjudication, ethics submissions, regulatory compliance, and budgeting have commercial value for pharmaceutical companies, CROs, and academic research organizations. The team will maintain commitment to open-source deployment of core CRAIDL agents across the ACT-AEC network.

## 8.3 Information Services & Technology

CTAP's workflows rely on advanced computing and networking. Total data volumes are expected in the multi-petabyte range, driven by omics, imaging, and large-scale trial data. CTAP will collaborate with IST, DARC, and the Digital Research Alliance of Canada to ensure resources above $100,000 are appropriately housed and managed.

## 8.4 Research Security

Health Data as National Security Asset: In the current geopolitical climate, health data is classified as a national security asset. CTAP's infrastructure serves as a compliance engine automatically enforcing federal (STRAC/NSGRP) and provincial (HIA) security safeguards.

Federal Compliance (STRAC/NSGRP): CTAP's use of AI (CRAIDL), Advanced Data Computing, and Large-Scale Analytics places this work in Sensitive Technology Research Areas. No team member may hold affiliations with Named Research Organizations. All personnel undergo STRAC screening via the UofA Safeguarding Research Office.

TRE as Security Infrastructure:
- HIA Least Privilege: Zone 1 custodian control; researchers access only de-identified data
- STRAC Prevent Knowledge Transfer: Airlock output controls; no bulk data export
- Data Sovereignty: AWS Canada Central; AHS-controlled encryption
- AI Model Security: UofA-owned models in private VPC
- Alberta Data Residency: All clinical data remains within Alberta

Centralized Biobanking Security: 24/7 temperature monitoring, badge + biometric access, full chain of custody via barcode/RFID, redundant storage.

## 8.5 Health, Safety, and Environment

CTAP infrastructure requires specific HSE considerations: biobanking with ultra-low freezers requiring backup power and monitoring; GMP cleanrooms requiring validated environmental controls; challenge trial isolation rooms requiring negative-pressure containment and pathogen handling procedures; and autonomic function laboratories requiring participant safety protocols during tilt testing. CTAP will work with Environmental Health & Safety and Facilities Management to ensure compliance with institutional and regulatory requirements.

## 8.6 Animal Housing

CTAP does not request infrastructure for animal housing. Pre-clinical work will use existing facilities under separate governance.

## 8.7 Risks

Operational Risks:
- Infrastructure procurement delays: Phased implementation with parallel workstreams; contingency timelines
- Workforce recruitment: Competitive salaries, Amii partnership, training programs, succession planning
- Connect Care integration: Dedicated integration team, early proof-of-concept, standardized APIs

Technical Risks:
- Heterogeneous data integration: OMOP CDM adoption, robust data governance, dedicated engineering
- CRAIDL performance variability: Context-specific validation, human-in-the-loop, iterative refinement
- Novel agentic AI design: Prototype validates core methodology; CVC templates as ground truth; Amii partnership

Strategic Risks:
- Evolving regulatory environment: Modular platform design, active Health Canada engagement
- Funding sustainability: Diversified revenue, institutional commitment, provincial alignment

## 8.8 Estimated Timeframe

Given scale and integration requirements, we anticipate 4-5 years from initiation to fully operational platform. Early components (digital trial-operations platform, CBSR expansion, initial CRAIDL deployments) will be functional within 18-24 months.

Implementation Phases:
- Phase 1 (Months 1-12): TRE infrastructure deployment (extending existing AWS investment), EDC deployment, AHS Snowflake integration for Connect Care bulk extracts, OMOP ETL (building on VITAL program foundational work), Advarra OnCore CTMS integration for Alberta FAST 45-day workflows
- Phase 2 (Months 13-24): GPU cluster integration with SDRE, Protocol Agent v1.0, Data Management Agent v1.0, FHIR real-time integration, PAMRC imaging pipeline operational (Orthanc PACS, LORIS platform)
- Phase 3 (Months 25-36): All 8 CRAIDL agents deployed, OHDSI network participation, radiomics workflows integrated, industry services launch
- Phase 4 (Months 37-48): Full VITAL/GEMINI network integration enabling pan-Canadian federated trials, CRAIDL agents deployed nationally via ACT-AEC, full operational sustainability

# Conclusion

This proposal requests $10.2 million to build Canada's first AI-native clinical trials platform—infrastructure that exists nowhere else in the country. By integrating SDRE/Amii's computational capacity (1,000 H200 GPUs), Connect Care's unparalleled clinical reach (4.4M Albertans, 682 sites), and a Living Biorepository's precision, CTAP establishes the University of Alberta as the permanent national hub for advanced therapeutic validation.

Measurable national impact by 2031: 10,000+ patients annually with earlier therapy access; Alberta FAST 45-day trial startup (compared to 12-18 month Canadian average); $100M+ in pharmaceutical R&D attracted; 150+ highly qualified personnel trained; 15% Indigenous and 20% rural trial participation; 20+ Canadian sites with CRAIDL access through ACT-AEC deployment; full VITAL/GEMINI network integration for pan-Canadian federated trials.

CTAP creates infrastructure that Canada needs: the only end-to-end advanced therapeutics corridor (discovery to manufacturing to trials to market); the first Indigenous Clinical Trials Unit; challenge trial capability for pandemic preparedness; and the Western anchor for national clinical trials networks. The $10.2M CFI investment catalyzes transformation across Canadian health research, with economic returns exceeding investment within 5 years through industry attraction, IP generation, and health system efficiencies.

Clinical trials will no longer be bottlenecks—they become accelerators. Where data, biospecimens, and operational knowledge cycle continuously to accelerate discovery. Where the promise of AI-enabled medicine becomes operational reality for patients across Alberta and beyond.
