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

CTAP is anchored within the newly established Dianne and Irving Kipnes Health Research Institute, whose vision is "to create a learning health system where artificial intelligence enhances care, clinical trials validate breakthroughs, and specialized programs demonstrate the full cycle of research from insight to impact—continuously improving outcomes." This $25 million philanthropic investment signals deep institutional commitment to clinical trials acceleration, and CTAP provides the infrastructure backbone to realize the Kipnes vision. The Institute's AI + Health Hub and Health Research Translation Unit provide the governance and operational framework within which CTAP will operate, positioning Alberta as "the place where research discoveries reach patients in our communities not in decades, but in years or even months."

CTAP operationalizes this learning health system vision through a closed-loop architecture: de-identified patient data from Connect Care flows into the Trusted Research Environment for analysis, validated AI-driven insights flow back to clinical teams for implementation, and outcomes data closes the loop to refine future discoveries. This is the same model that enabled Ontario's GEMINI project to achieve a **26% reduction in unexpected deaths** among hospitalized patients—now extended to encompass clinical trials, biospecimens, and molecular characterization in an integrated translational ecosystem.

**Provincial Alignment:** CTAP strongly supports the Alberta Technology and Innovation Strategy (ATIS), which aims to make Alberta an internationally recognized technology and innovation hub. By integrating AI, advanced biomanufacturing (PRAIRIE Hub, ACTM, CMPC), secure cloud infrastructure (AWS Calgary region), and clinical trials at scale, CTAP directly advances ATIS goals in talent development, commercialization, data-driven innovation, and global competitiveness.

# 2. Research Plan

## 2.1 The Opportunity

**The bottleneck to transforming scientific breakthroughs into patient benefit is no longer discovery—it is validation.** Advances in AI, molecular biology, and biomanufacturing have dramatically expanded the pipeline of vaccines, biologics, and cell therapies. Yet the fundamental constraint remains unchanged: the speed, cost, and integration of human clinical trials. In Canada, annual spending on clinical trials is estimated at C$0.8–1.0 billion, with industry contributing approximately 80%. Despite this substantial investment, much of the trial lifecycle—from conception through knowledge mobilization—remains manual, fragmented, and inefficient. Patients face barriers to discovering and participating in randomized clinical trials (RCTs), trialists cannot efficiently deploy available resources, and AI tools are deployed in isolated, non-interoperable workflows.

**AI has proven it can solve these problems—but only when integrated across the entire trial lifecycle.** Recent systematic reviews demonstrate that AI screening tools achieve 90.5% sensitivity and 99.3% specificity for identifying eligible trial patients, with predictive models achieving AUC scores of 0.81-0.92. AI-assisted processes have reduced eligibility screening time by 78% and transformed patient identification from 19-263 days to minutes. However, current AI applications remain fragmented—deployed in only a fraction of trial components—and the gap between patient identification and actual enrollment remains substantial, with conversion rates as low as 7%.

**This fragmentation—rather than limitations in AI performance—now represents the dominant barrier to accelerating clinical trials and translating scientific advances into patient benefit.**

The University of Alberta possesses a unique convergence of capabilities to solve this problem: the Alberta Machine Intelligence Institute (Amii) with 10+ CIFAR AI Chairs; Connect Care—a province-wide Epic-based EMR spanning 682 sites and 4.4 million Albertans; over $400M in cumulative discovery infrastructure (PRAIRIE Hub, ACTM, Li Ka Shing Institute of Virology, Cryo-EM Facility, Glycomics Institute, TMIC Metabolomics); and a proven AI deployment track record (Dr. Mitchell's AI Scribe already operational across 10 Alberta emergency departments with 58 physicians). No other Canadian institution combines AI leadership, unified health system integration, advanced biomanufacturing, and mature translational infrastructure in a single ecosystem.

**The Clinical Trials Acceleration Platform (CTAP)** is Canada's first AI-native clinical trials infrastructure—a **$10.4 million** investment that embeds AI not as a bolt-on tool but as the foundational architecture for trial design, recruitment, monitoring, and analysis. CTAP treats clinical trials not as episodic projects but as a continuously learning ecosystem where data, biospecimens, and operational knowledge cycle back to accelerate subsequent discoveries.

## 2.2 Why the University of Alberta, Why Now

Alberta possesses a convergence of advantages that cannot be easily replicated:

**Unrivalled AI Capacity.** The Alberta Machine Intelligence Institute (Amii), with over 10 CIFAR AI Chairs focused on health and life sciences and leadership that includes pioneers of modern reinforcement learning, provides in-house expertise to deploy AI directly into clinical workflows. This is not theoretical: Dr. Ross Mitchell's AI Scribe ("Jenkins"), developed with Amii, is already deployed across 10 Alberta emergency departments with 58 physicians, processing 7,500+ clinical conversations and demonstrating approximately 3 additional patients seen per physician per shift. CTAP will extend this proven AI capability into clinical trials data capture.

**A Unified Health System.** Alberta's single-payer system, underpinned by Connect Care—a province-wide Epic-based clinical information system spanning 682 sites and serving 4.4 million Albertans—provides computable access to longitudinal records for population-scale research. CTAP can query this dataset to identify rare phenotypes, model synthetic control arms, and track long-term outcomes with minimal friction.

**Mature Discovery Infrastructure.** Over $400M in cumulative investment creates an unmatched bench-to-trials ecosystem: the Alberta Diabetes Institute, Li Ka Shing Institute of Virology, Drug Development and Innovation Centre (DDIC), Alberta Cell Therapy Manufacturing (ACTM), the new $20M Alberta Cryo-EM Facility (the only one in Alberta, one of five in Canada), and global-leading Glycomics (GIA) and Metabolomics (TMIC) facilities. These assets currently lack a unified downstream pathway to human validation. CTAP provides that pathway.

**Expanding Biomanufacturing Capacity.** Alberta is rapidly becoming a national hub for biomanufacturing through the PRAIRIE Hub ($109.9M, 2024) and the Critical Medicines Production Centre (CMPC)—a $200M, 83,000 sq ft facility under construction in partnership with Applied Pharmaceutical Innovation (API). CMPC will provide Canada's largest pharmaceutical manufacturing capacity (70M+ doses/year) by 2026. CTAP positions these manufacturing assets alongside clinical trials infrastructure to create an end-to-end pathway from discovery to human validation.

**PRAIRIE Hub Vaccine Feeder Programs.** Two PRAIRIE Hub sub-programs funded through the Canadian Biomanufacturing and Research Fund (CBRF) will generate vaccine candidates requiring clinical validation through CTAP's Challenge Trial Unit: the **saRNA Vaccine Platform** ($35.3M, Houghton) targeting influenza H5N1, orthopoxviruses, and arenaviruses using self-amplifying RNA technology offering 10× lower doses than conventional mRNA; and the **Comparative Vaccine Platform Program** ($57M, Shmulevitz/Pelka) systematically comparing live attenuated, viral vector, inactivated, and recombinant protein platforms to determine optimal approaches for different pathogens. API is an explicit industry partner in both programs, linking discovery directly to GMP translation and CMPC manufacturing. CTAP's Challenge Trial Unit—Alberta's first academic human challenge facility—provides the clinical validation capability that transforms these research programs into manufacturable products.

### 2.2.1 Biomanufacturing Integration Partnership

CTAP formalizes a strategic partnership with **Applied Pharmaceutical Innovation (API)**—Canada's largest life sciences commercialization organization—to create the only fully integrated discovery-to-production pathway in the country. Through a Memorandum of Understanding modeled on the successful ACTM-BioCanRx-Ottawa Hospital partnership, CTAP and API will establish coordinated infrastructure that transforms Alberta's biomanufacturing capacity from parallel assets into a unified clinical trials ecosystem.

**Formal Partnership Framework:** The MOU establishes four operational pillars:

1. **Trial-to-Manufacturing Pathway**: Products developed through CTAP-supported discovery programs flow to API's Drug Development and Innovation Centre (DDIC) for Phase I formulation, then to CTAP's Clinical Investigation Units for early-phase trials, and upon successful validation, scale to CMPC for production. This end-to-end workflow eliminates the handoff gaps that typically delay Canadian innovations by 2-3 years.

2. **Data Integration for Manufacturing Intelligence**: CTAP's Living Digital Twin—powered by API's Quantitative Systems Pharmacology (QSP) division—refines dosing models with every patient treated in CTAP trials. De-identified trial outcomes flow from the TRE to API's QSP platform, enabling manufacturing parameter optimization based on real-world clinical response.

3. **Workforce Development**: Shared GMP training rotations between CTAP clinical sites and API manufacturing facilities create dual-competent personnel capable of bridging regulatory, clinical, and manufacturing domains—addressing the critical national shortage identified in the federal Biomanufacturing and Life Sciences Strategy.

4. **Biorepository-Manufacturing Quality Correlation**: The Living Biorepository maintains manufacturing batch QC specimens linked to participant outcomes, enabling post-market surveillance and process optimization that connect production quality to clinical endpoints.

**Governance Integration:** An API representative serves as Manufacturing Advisor to CTAP's Scientific Advisory Board (observer status), providing input on trial prioritization affecting the manufacturing pipeline while preserving academic governance independence.

**National Significance:** This partnership positions Alberta as the only Canadian jurisdiction with integrated clinical trials infrastructure and biomanufacturing capacity—a strategic advantage aligned with federal Biomanufacturing and Life Sciences Strategy ($2.2B, 2021-2028) objectives. When CMPC achieves full operational capacity in 2026, CTAP trials will have direct access to Canada's largest pharmaceutical manufacturing facility, enabling made-in-Canada therapeutics from bench through bedside to population-scale production.

**Specialized Translational Platforms.** The Translational Genomics Hub at WCHRI addresses undiagnosed genetic diseases and variants of unknown significance. Alberta Proteomics and Mass Spectrometry (APM) complements TMIC with protein characterization capabilities. These platforms enable deep phenotyping across genomic, proteomic, metabolomic, and glycomic domains—a breadth of molecular characterization unmatched elsewhere in Canada.

## 2.3 The Integrated Infrastructure Model

![CTAP Infrastructure Overview](../figures/ctap-overall-prefered.png)

*Figure 1: CTAP Infrastructure Overview. The platform integrates four infrastructure suites around a central AI-enabled operations hub, connected to Alberta's discovery ecosystem (PRAIRIE Hub, Li Ka Shing Institute), biomanufacturing capacity (API, ACTM), provincial health system (Connect Care), and AI/compute infrastructure (Amii, AWS). See supplementary PDF upload for high-resolution version.*

CTAP is led by University of Alberta Clinical Trials (UACT), uniting a unique constellation of partners including: translational and trials hubs (Kipnes Health Research Institute, Alberta Diabetes Institute, Women and Children's Health Research Institute, Canadian VIGOUR Centre, Translational Genomics Hub); national clinical trial networks (RareKids-CAN, ACT-AEC, PRAIRIE Hub); biomanufacturing and biospecimens (ACTM, API/CMPC, Canadian BioSample Repository, DDIC); discovery-to-trials molecular platforms (Alberta Cryo-EM Facility, Glycomics Institute of Alberta, TMIC, Alberta Proteomics); and data and AI infrastructure (AWS Calgary, RDSS, Amii).

The platform operates through five tightly coupled domains, unified by an integrated data architecture that connects clinical data sources, biospecimen systems, omics facilities, and AI agents through a three-zone Trusted Research Environment (TRE).

**Domain 1: AI-Enabled Operations Hub**

The Clinical Trials Acceleration Hub centralizes governance and regulatory navigation. Its core innovation is CRAIDL (Clinical Research Assistants for Intelligent Design and anaLysis)—AI agents developed with Amii that simulate protocol feasibility against Connect Care data, predict recruitment bottlenecks before trials open, and automate regulatory documentation. CRAIDL comprises eight core agents:

| Agent | Function | TRE Zone |
|-------|----------|----------|
| In Silico Assessment Agent | Protocol simulation, "digital twin" feasibility | Zone 2/3 |
| Protocol Agent | Hypothesis-to-protocol conversion | Zone 3 |
| Data Management Agent | Statistical design, EDC creation | Zone 3 |
| Events Agent | Endpoint capture, adjudication | Zone 2 |
| Ethics Agent | REB submissions, consent generation | Zone 3 |
| Regulatory Agent | Health Canada/FDA compliance | Zone 2/3 |
| Budget & Contracts Agent | Fair market value budgeting | Zone 3 |
| Imaging/Radiomics Agent | Radiomic biomarkers, automated eligibility | Zone 2/3 |

**Agent Maturity Spectrum:** CRAIDL agents vary in maturity from production-deployed to research prototype. AI Scribe (Jenkins, TRL 9) anchors the system with AHS production deployment across 10 emergency departments. Protocol, Data Management, Ethics, and Regulatory Agents (TRL 5-6) have prototype validation and deploy in Years 1-2. Events, Budget, and In Silico Agents (TRL 3-4) are earlier-stage, with deployment planned for Years 3-4 following validation against CVC's 50+ completed trial archive. This staged approach ensures clinical-grade reliability before deployment.

Target: 40–50% reduction in trial startup time, with a stretch goal of idea-to-activation within 4 weeks.

**Proof-of-Concept Validation:** The CRAIDL methodology has been validated through an investigator-developed prototype that generates SPIRIT 2025-compliant protocols, Bayesian sample size calculations, ICH E6(R3) data management plans, HREB ethics applications, and ClinicalTrials.gov registration XML. Four of eight CRAIDL agents (Protocol, Data Management, Ethics, Regulatory) are operational at investigator scale; CFI investment enables enterprise infrastructure with Connect Care integration, multi-user access, and institutional governance.

**Domain 2: Living Biorepository**

CTAP introduces the **Living Biorepository** concept—a fundamental reconceptualization that transforms biospecimen management from static storage into an intelligent, continuously-updated discovery engine. Managed by the Canadian BioSample Repository (CBSR) and powered by OpenSpecimen, the Living Biorepository delivers four core capabilities:

1. **Real-Time EMR Linkage**: Specimens remain continuously linked to participants' Connect Care records via FHIR API
2. **Automated Outcome Annotation**: Trial samples automatically annotated with long-term outcomes from provincial health records (5-10 year follow-up without participant re-contact)
3. **Predictive Inventory Management**: AI predicts sample depletion, suggests optimal aliquoting strategies
4. **Consent-Aware Sample Routing**: Specimens flow automatically to approved studies based on consent scope

This approach enables retrieval based on clinical outcomes that emerge years after collection—distinguishing CTAP from traditional biobanks.

**Domain 3: Secure Research Data Environment**

In partnership with Amazon Web Services (Calgary region), CTAP establishes a three-zone Trusted Research Environment (TRE) aligned with international best practices (UK Biobank RAP, All of Us, FinnGen, Genomics England) and Alberta's Health Information Act:

- **Zone 1 (Identifiable)**: Remains under AHS custodian control; no researcher access
- **Zone 2 (Controlled Processing)**: De-identification, OMOP transformation, CDISC conversion, AI agent processing
- **Zone 3 (Research Environment)**: De-identified trial data lake, OMOP analytics, researcher workspaces; airlock-style output review

Unlike retrospective TREs, CTAP extends the architecture with a "Trials Zone" supporting prospective data capture meeting Health Canada Division 5 requirements, ICH E6(R3) quality-by-design principles, and GCP-compliant audit trails.

**Domain 4: Open Science Infrastructure**

CTAP mandates FAIR (Findable, Accessible, Interoperable, Reusable) data principles and Common Data Elements across all disease sites. The OMOP Common Data Model serves as the canonical representation for all research data, enabling federated queries across OHDSI (100+ global institutions), VITAL (Canadian network), PRAIRIE Hub, and RareKids-CAN without data movement.

**Regulatory Harmonization**: CTAP's compliance architecture follows a "local compliance, international harmonization" principle. All trials meet Canadian requirements (Health Canada Division 5, ICH E6(R3), TCPS2, HIA) as the primary compliance layer. For multi-jurisdictional trials, optional 21 CFR Part 11 and EU Annex 11 modules layer atop the Canadian baseline.

**Domain 5: Clinical Trials Omics Integration**

CTAP provides the **trial-to-facility interface layer**—standardized protocols, quality systems, and data pipelines that connect clinical trial operations with the University of Alberta's world-class omics infrastructure. Rather than duplicating existing capabilities, CTAP makes them accessible to clinical research through three integrated pillars:

| Pillar | Purpose |
|--------|---------|
| **Protocol Integration Services** | Pre-approved consent modules, sample collection kits, protocol templates with omics endpoint language |
| **Quality Bridge Infrastructure** | Pre-analytical QC systems, cold-chain logistics, sample preparation standardization |
| **Data Return Pipeline** | Facility data adapters, OMOP molecular extensions, regulatory-ready biomarker analysis packages |

CTAP partners with existing core facilities rather than building parallel capabilities:

| Partner Facility | Capability | CTAP Provides |
|-----------------|------------|---------------|
| **ACE Core** | Single-cell sequencing (10x Chromium X), spatial transcriptomics (MERSCOPE), metabolic analysis (Seahorse) | Trial sample pipeline, regulatory context, outcome data linkage |
| **Alberta Cryo-EM Facility** | Atomic-scale imaging | Structural biology endpoints in trial protocols |
| **Glycomics Institute (GIA)** | Glycan profiling | Standardized sample handling, clinical metadata |
| **TMIC** | Metabolomics (50K samples/year) | Quality-controlled trial samples |
| **Alberta Proteomics (APM)** | Protein identification | Pre-analytical quality assurance |

Trial samples processed through the Living Biorepository flow to partner facilities with standardized metadata, and molecular results return to the TRE via the Data Return Pipeline for integrated analysis correlating clinical outcomes with mechanistic molecular changes.

## 2.4 CRAIDL: The AI-First Clinical Trials Engine

A cornerstone of CTAP's innovation agenda is CRAIDL, which will create, amalgamate, and deploy RCTs of the highest quality and greatest efficiency using AI-augmentation at every stage. CRAIDL builds on RCT expertise at UAlberta through the Canadian VIGOUR Centre (50+ trials designed and operationalized) and the federal ACT-AEC grant.

CRAIDL leverages agentic AI design—where AI agents function autonomously toward goal-directed behaviour with human oversight. This AI-first approach, developed in partnership with Amii and CIFAR AI Chairs, represents a paradigm shift from current practice where AI tools are deployed in isolated, disconnected fashion.

**The In Silico Assessment Agent** represents CTAP's most ambitious AI capability—and Canada's first prospective trial intelligence capability. Leveraging generative modeling and causal inference to simulate trial outcomes before patient enrollment, the agent addresses the 40-60% trial failure rate from over-optimistic eligibility assumptions. Development is led by **Dr. Lazar Atanackovic** (Amii Fellow, ECE/Biochemistry), whose expertise in Meta Flow Matching and GFlowNets enables digital twin generation, synthetic control arms for rare disease trials, and causal treatment effect estimation at the individual patient level. The agent operates within a tiered data governance model aligned with VITAL/GEMINI patterns: population-level queries run in AHS/Research Snowflake returning aggregates; identified cohorts may be shared via TRE with per-study approval; compute-intensive datasets (imaging, multi-omics) move to TRE when Snowflake compute is insufficient—following the MANTA imaging platform precedent (Libin Cardiovascular Institute). CTAP does not presume unrestricted data access; each data flow requires appropriate governance approval.

**AI Scribe Integration:** Dr. Ross Mitchell's AI Scribe extends CTAP's AI-first vision from trial design into real-time clinical data capture. AI Scribe complements CRAIDL by automating trial visit documentation, consent conversation transcription, and natural language adverse event capture, with all data remaining within Alberta under banking/military-grade security.

**Human-in-the-Loop Requirements:** All CRAIDL agent outputs require human review before implementation—protocol drafts by PI and statistician, safety flags within 24 hours by medical monitor, regulatory packages by regulatory affairs.

The benchmark for CRAIDL success is ambitious: the RECOVERY trial wrote its first protocol draft in approximately 3 days and enrolled its first patient within 9 days. CRAIDL aims to democratize this capability, making rapid trial deployment accessible for any clinical question through open-architecture AI agents deployable across the ACT-AEC network nationally.

## 2.5 Core Objectives

By 2031, CTAP will:

1. **Reduce clinical trial start-up timelines by 40-50%** for UofA-led trials through streamlined UACT processes, harmonized SOPs, and AI-augmented design—with a stretch goal of idea to first site activation within 4 weeks. (Target: startup time reduced from 12+ months to 6 months; benchmark against RECOVERY trial)

2. **Double trial recruitment efficiency** and create a patient engagement model that serves as a national resource, with explicit targets for Indigenous (15%), rural (20%), and pediatric participation. (Target: patient engagement model adopted by 3+ national networks)

3. **Enable first-in-human and advanced-therapy trials** through Canada's first academic human challenge facility, integrated cell therapy manufacturing (ACTM), and the API biomanufacturing partnership—creating a complete discovery-to-production pathway. (Target: 5+ first-in-human trials including 2+ vaccine challenge studies; 3+ cell therapy trials; 2+ products advancing to CMPC scale-up)

4. **Integrate biospecimens, multi-omics, and real-world data** so that 70% or more of interventional trials have pre-planned biospecimen pipelines, FAIR-compliant data, and RWD-based follow-up linked to Connect Care. Manufacturing batch QC specimens will be archived for outcome correlation, enabling continuous process optimization. (Target: batch-to-outcome traceability for 100% of API-manufactured products)

5. **Embed AI across trial design, enrollment, monitoring, and analysis**, creating a continuously learning clinical trials system with 8 deployable CRAIDL agents accessible as national infrastructure via ACT-AEC. The Living Digital Twin will integrate trial outcomes with API's QSP platform for population-level prediction refinement. (Target: 8 agents deployed; adopted by 5+ institutions)

6. **Establish pandemic preparedness clinical validation capacity** through the Challenge Trial Unit, supporting PRAIRIE Hub vaccine programs (saRNA platform, Comparative Vaccine Platform) with human challenge studies that provide efficacy signals in months rather than years. (Target: 3+ controlled human infection model protocols validated; surge capacity for outbreak response)

7. **Create a nationally interoperable clinical trials backbone**, serving as a Western anchor for ACT-AEC, PRAIRIE Hub, and RareKids-CAN, with 10+ institutional partners. CTAP will function as the clinical validation engine connecting PRAIRIE Hub discoveries to API manufacturing to population-scale production.

8. **Train 150+ highly qualified personnel** in AI-enabled trial design and operations, with 20% from Indigenous communities and underrepresented groups. Shared GMP training rotations with API will create dual-competent personnel bridging clinical and manufacturing domains. (Target: training curriculum adopted nationally; 25+ personnel completing cross-sector rotations)

## 2.6 Flagship Programs

CTAP will be operationalized through five high-impact flagship programs:

**Neuro-immunology and MS Cell Therapies:** Building on the University of Alberta's **MS Centre**—one of Canada's premier MS research hubs with 29 multidisciplinary affiliates spanning neuroimaging, neuroimmunology, glial biology, and clinical care—CTAP enables ACTM-manufactured cell products (regulatory T-cells, engineered lymphocytes) to be tested in early-phase MS and neuro-inflammatory trials. The MS Experimental Therapeutics Program (Giuliani) provides clinical trial expertise, while GIA glycomics (Mahal), TMIC metabolomics, and cryo-EM structural biology enable comprehensive immune profiling. **CHARM Synergy:** Dr. Voronova's CHARM platform (CFI IF 2025)—a hiPSC-based precision medicine infrastructure—complements CTAP by providing patient-derived neural and glial models for MS therapeutic target validation, bridging discovery research with CTAP's clinical trial capabilities. The existing CAR-T cell therapy program led by Dr. Michael Chiu at the Cross Cancer Institute demonstrates the complete translational pathway.

**Hepatitis C and Vaccine Trials:** Led by Dr. Michael Houghton (Nobel laureate 2020), this program leverages Canada's first academic **Vaccine Challenge Trial Unit**—a controlled human infection model (CHIM) facility enabling accelerated vaccine efficacy evaluation with dramatically smaller participant numbers and compressed timelines. PRAIRIE Hub, Alberta Cryo-EM Facility, GIA, and TMIC enable structure-guided design and immunologic profiling.

**Precision Cardio-Renal-Metabolic Population Health:** CVC-anchored pragmatic trials combined with CBSR biospecimens, TMIC metabolomics, and AI-based risk prediction. **Connect1d Canada**—a pan-Canadian Type 1 Diabetes patient registry transitioning to Alberta Diabetes Institute leadership—demonstrates Suite 4's data integration: patient-reported data, CGM wearable data, and Connect Care EHR data flow through the TRE, enabling decentralized diabetes trials that reach patients nationally.

**Pediatric Rare Disease Trials (RareKids-CAN):** CTAP establishes a dedicated **Pediatric Rare Disease Clinical Trials Unit** at the Stollery Children's Hospital—one of only two Canadian pediatric hospitals authorized for Phase I trials. The Stollery's unparalleled catchment (largest in North America, spanning 4 provinces and 3 territories, serving 316,000+ patients annually) combined with WCHRI's Translational Genomics Hub provides genomic characterization for rare disease trials. This unit serves as the Western anchor for the national RareKids-CAN network.

**CRAIDL AI Methodology Development:** All flagship programs serve as testbeds for CRAIDL agent development and validation, enabling iterative refinement across diverse trial designs, disease areas, and regulatory contexts.

## 2.7 Feasibility

CTAP is intentionally built on existing, operational strengths:

- **UACT/CTO** provides a coordinated front door for clinical trials with established processes
- **Canadian VIGOUR Centre** has designed and operationalized over 50 clinical trials, providing templates for CRAIDL training
- **Kipnes Health Research Institute** has a dedicated Health Research Translation Unit for clinical trials support
- **CBSR and ACTM** are functioning facilities with trained staff and validated SOPs
- **Amii and CIFAR AI Chairs** provide world-class AI expertise; Dr. Mitchell's AI Scribe is operational at scale (10 Alberta EDs, 6,700+ sessions)
- **ACE Core, GIA, TMIC, and Cryo-EM** are established CFI-funded core facilities
- **CRAIDL Prototype** demonstrates 4 agents operational at investigator scale

A phased implementation is planned over 4-5 years, with early wins (improved trial start-up metrics, initial CRAIDL agent deployment, integrated trial-biobank workflows) achievable within 18-24 months.

## 2.8 International Context and Competitiveness

Internationally, large academic health centres (UK Biobank, All of Us, German National Decade Against Cancer) are integrating biobanks, real-world data, and trials. AI tools are being developed across several RCT aspects. However, these elements remain disconnected—deployed in only a fraction of trial components—and evidence is concentrated in oncology settings at well-resourced centres.

CTAP and CRAIDL represent a fundamentally different approach: AI-augmentation at every stage of the RCT, from idea generation to knowledge mobilization. Few centres globally combine: (1) GMP manufacturing, (2) deep structural and systems biology, (3) national-scale metabolomics and glycomics, (4) a top-tier AI institute with CIFAR Chairs, (5) a mature academic trials organization with 50+ trial templates, and (6) a single-payer provincial health system with province-wide EMR—into a single clinical trials platform. **CTAP is Canada's first AI-native clinical trials platform.**

# 3. Research Team

The CTAP team brings together investigators and leaders spanning the full translational continuum—from AI-enabled discovery and structural biology to GMP manufacturing, clinical trials, biobanking, real-world evidence, and health system implementation.

**Leadership:**

- **Lawrence Richer, MD, PhD** (PI) - Associate Dean Research, College of Health Sciences

**Clinical Trials and Pragmatic RCTs:** Investigators from the Canadian VIGOUR Centre (50+ trials designed and delivered), Alberta Diabetes Institute, and WCHRI Data Coordinating Centre contribute deep experience in large-scale trials, embedded and pragmatic RCTs, and national network coordination.

**AI and Computer Science:** Faculty from Amii, including CIFAR AI Chairs with expertise in reinforcement learning, agentic design, and health AI. Dr. Ross Mitchell (Amii Fellow, Canada CIFAR AI Chair) brings the AI Scribe platform. Dr. Lazar Atanackovic (Amii Research Fellow, ECE/Biochemistry) joins from the Broad Institute of MIT-Harvard with world-leading expertise in generative modeling for biological systems—core capabilities for CRAIDL's In Silico Assessment Agent and Digital Twin Engine.

**Medical Imaging AI and Radiomics:** Dr. Amber Simpson (Canada Research Chair in Biomedical Computing, Queen's University) brings expertise in radiomics, computational biomarkers, and federated learning—essential for CRAIDL's Imaging/Radiomics Agent.

**Biomanufacturing and Cell Therapies:** Leaders from ACTM bring GMP manufacturing, regulatory compliance, and first-in-human trial experience.

**Core Facilities:**

| Facility | Director | CTAP Role |
|----------|----------|-----------|
| ACE Core (Advanced Cell Exploration) | TBD | Single-cell sequencing, spatial transcriptomics, metabolic analysis |
| Alberta Cryo-EM Facility | Dr. Howard Young / Dr. Kalyan Das | Structure-based insights |
| Glycomics Institute of Alberta | Dr. Lara Mahal | Glycan profiling for trials |
| TMIC Metabolomics | Dr. David Wishart / Dr. Liang Li | Metabolomic endpoints |
| Alberta Cell Therapy Manufacturing | TBD | GMP cell products |
| Canadian BioSample Repository | Dr. Bruce Ritchie | Biospecimen management |

**Key Partnerships:**

- **Amii** - 10+ CIFAR AI Chairs for CRAIDL development
- **Canadian VIGOUR Centre** - 50+ trials expertise for protocol design
- **Connect Care / Alberta Health Services** - Provincial EMR integration
- **AWS Calgary** - Secure cloud infrastructure

# 4. Equity, Diversity, and Inclusion

## Access, Community, and Belonging

CTAP's approach to EDI aligns with the University of Alberta's **Access, Community, and Belonging (ACB)** framework. As a Dimensions Charter signatory institution, the University commits to embedding equity into research infrastructure, team composition, and research practices.

**Team Composition:** Team composition reflects diversity across disciplines, career stages, gender, and backgrounds. Indigenous scholars, patient partners, and community representatives serve as co-investigators and governance members—not only as advisors.

**Patient-Oriented Research:** CTAP operationalizes CIHR's **Strategy for Patient-Oriented Research (SPOR)**. Patient partners serve as co-investigators with voting rights on steering committees. Community Advisory Boards (CABs) inform each flagship program's priorities. Lived Experience Experts (LEEs) sit on governance committees with compensated participation.

**Indigenous Clinical Trials:** CTAP benefits from UACT's **Indigenous Clinical Trials Unit (ICTU)**—Canada's first Indigenous-designed clinical trials infrastructure. ICTU enables self-determination in health research innovation and ensures OCAP principles (Ownership, Control, Access, Possession) govern Indigenous data and specimens through TRE IAM-enforced access controls, with Indigenous Data Stewards embedded in governance structures.

**Explicit Participation Targets:** CTAP commits to measurable targets tracked annually:
- **15% Indigenous participation** in applicable trials, with ICTU-co-designed protocols
- **20% rural/remote participation** enabled by decentralized trial designs and Suite 5 digital tools
- **Pediatric inclusion** through Stollery Children's Hospital rare disease unit
- **20% of 150+ HQP** from Indigenous communities and underrepresented groups

**AI Equity and Bias Auditing:** CRAIDL agents undergo systematic bias auditing before deployment. All models are tested for performance across demographic groups using fairness metrics. Community Advisory Boards review AI-generated outputs for cultural appropriateness. The Ethics Agent incorporates SGBA+ prompts and EDI considerations into consent form generation.

**Infrastructure Access:** Accessible consent processes (plain language at Grade 6-8 reading level, multiple languages including Indigenous languages, multiple formats); geographic access through cloud-based TRE enabling researchers from rural Alberta and Northern communities to participate; reserved compute resources for underfunded researchers and community-based studies.

# 5. Benefits

## Health and Social Benefits

By reducing trial start-up times—potentially from months to weeks via CRAIDL—CTAP will bring promising vaccines, cell therapies, biologics, and precision therapies to patients more quickly and safely. Evidence from existing AI implementations demonstrates: 78% reduction in screening time, 4.5-fold faster eligibility determinations, and 83% reduction in data extraction effort.

Alberta patients—including those with multiple sclerosis, chronic hepatitis C, cardio-renal-metabolic disease, and rare pediatric conditions—will gain earlier access to novel therapies. The CRAIDL system will democratize access to sophisticated trial design, enabling investigators who currently lack infrastructure to translate discovery science into human trials. Indigenous and rural communities will benefit from co-designed, culturally safe, and geographically accessible trials.

## Economic and Innovation Benefits

CTAP will strengthen Alberta's position as an international technology and innovation hub, directly supporting ATIS goals. Clinical trials in Canada contribute $15 billion annually; CRAIDL will attract R&D from industrial partners, biotech developers, and external academics seeking AI-augmented trial design efficiency.

The platform will generate new IP in AI algorithms for trial design, analytical pipelines, and platform technologies. Training at the intersection of clinical research, data science, AI, and biomanufacturing creates highly qualified personnel with globally competitive skills.

## Knowledge Mobilization and Technology Transfer

CRAIDL agents will be developed using open-source architecture, enabling deployment across the ACT-AEC network nationally and internationally—extending AI-enabled trial capabilities beyond well-resourced academic centres. Knowledge mobilization includes: rapid dissemination through open-access publications; co-development of clinical guidelines with professional societies; integration of findings into provincial care pathways; and patient-facing summaries.

# 6. Infrastructure Request Justification

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

This suite provides the trial-to-facility interface layer—connecting clinical trial operations with the University of Alberta's world-class omics infrastructure through partnerships rather than duplication:

**Pillar 1: Protocol Integration Services ($300,000):**
- Consent module library: Pre-approved consent language for omics analysis ($50,000)
- Sample collection kit development: Facility-specific requirements built into standardized kits ($80,000)
- Protocol template library: Omics endpoint language validated by each partner facility ($70,000)
- Regulatory dossier templates: Templates for omics biomarker regulatory submissions ($50,000)
- SOP development & validation: Working group coordination with facility partners ($50,000)

**Pillar 2: Quality Bridge Infrastructure ($500,000):**
- Pre-analytical QC systems: RNA integrity analyzer, protein degradation markers ($140,000)
- Cold-chain logistics: Dry ice shippers, portable -80°C units, temperature loggers ($140,000)
- Sample preparation standardization: Universal processing equipment at CBSR ($150,000)
- Shipping coordination system with real-time tracking ($70,000)

**Pillar 3: Data Return Pipeline ($250,000):**
- Facility data adapters: Custom ETL pipelines for each partner facility's output formats ($80,000)
- OMOP molecular extensions: Mapping for omics data types to OMOP CDM ($50,000)
- Analysis workstations: Pre-configured environments for clinical-molecular correlation ($70,000)
- Visualization tools and regulatory reporting packages ($50,000)

**ACE Core Access & Coordination ($150,000):** Reserved capacity, protocol development with ACE Core staff, liaison coordination. Accesses 10x Genomics Chromium X, Vizgen MERSCOPE, and Agilent Seahorse capabilities.

**Gap-Filling Equipment Reserve ($500,000):** Reserved for targeted equipment purchases identified through facility engagement that address genuine capability gaps not available through partnerships.

## Suite 4: Data Platform, Secure Environments, AI/HPC ($2,805,000)

This suite builds the unified data architecture connecting trial data to the three-zone TRE and CRAIDL AI agents:

**On-Premises Infrastructure ($580,000):**
- Secure compute nodes ($200,000): Zone 2 processing, OMOP ETL, CDISC transforms
- Secure storage infrastructure ($200,000): Trial data lake, Zone 2/3 storage
- Networking and security ($180,000): Zero-trust perimeter, zone isolation

**Clinical Trials Platform ($1,350,000):**
- EDC/eSource platform ($400,000): Health Canada GCP compliant, CDASH-configured
- Identity management ($100,000): RBAC, MFA, audit integration
- AWS cloud credits (5-year) ($500,000): Zone 3 compute, AI services, storage
- AWS professional services ($200,000): Architecture, security, MLOps
- PACS/DICOM integration gateway ($150,000)

**AI/HPC & Imaging Infrastructure ($875,000):**
- GPU compute cluster ($300,000): CRAIDL development, LLM inference, NVIDIA BioNeMo
- Radiomics GPU compute nodes ($200,000)
- Image harmonization software ($50,000)
- Raw sensor data storage ($150,000)
- OMOP/OHDSI tooling ($100,000)
- Biobank TRE integration ($75,000)

## Suite 5: Trial Innovation Tools & Wearables ($1,056,000)

This suite enables decentralized, patient-centric trials:

**Software & Platforms ($276,000):**
- eConsent Platform ($150,000): Enterprise platform with patient portal, digital recruitment, multilingual support
- Participant Engagement App ($50,000): Mobile engagement for trial participants
- Trial Oversight Dashboard ($76,000): Real-time monitoring and analytics

**Digital Tools & Services ($680,000):**
- Operational Analytics Dashboard ($300,000): AI-powered trial operations intelligence
- Participant Engagement Platform ($280,000): Multi-channel participant communication
- Device Data Integration APIs ($75,000): Wearable and sensor data pipelines
- Validation Protocol Library ($25,000): Standards for digital health validation

**Hardware & Devices ($100,000):**
- Sensor Development Equipment ($50,000): Testing and calibration infrastructure
- Reference Device Pool ($25,000): Standardized devices for validation studies
- Telehealth Equipment ($25,000): Remote visit capability for rural/Indigenous sites

*Digital Health Device Validation: Infrastructure for validating UAlberta-developed sensors and digital therapeutics in partnership with iSMART (Western Canada's only GLP facility). Active pipeline includes: Light/Baghelani microwave glucose sensor, Gupta diabetic wound sensors, Mushahwar Smart-e-Pants, Mitchell AI Scribe, HiMARC 3MDR VR therapy.*

# 7. Sustainability

## Governance and Management

CTAP will be governed through a multi-tier structure:

- **CTAP Steering Committee** chaired by UACT Director, with representation from CTO, Kipnes, NACTRC, CVC, WCHRI DCC, CBSR, ACTM, GIA, TMIC, Amii, Indigenous leadership, and patient partners
- **Data Access Committee** responsible for researcher access, TRE workspace approvals—modeled on UK Biobank Access Committee
- **Operations Committee** for day-to-day coordination across cores
- **CRAIDL Development Committee** with AI/computer science and clinical trials expertise
- **EDI and Indigenous Advisory Council**
- **Scientific Advisory Board** with external members from ACT-AEC, PRAIRIE Hub, and international partners

## Institutional Supports

The University of Alberta and College of Health Sciences have committed to: allocating and maintaining space in the Kipnes Health Research Academy and associated facilities; providing base support for key personnel (Program Director, Operations Manager, Data Architect, Biobank Operations Lead, Indigenous Engagement Lead, CRAIDL Development Lead); and integrating CTAP into institutional strategic plans and core-facility frameworks.

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

This proposal requests **$10.4 million** to build the physical and digital backbone of a system uniquely suited to Alberta. By integrating Amii's computational capacity, Connect Care's clinical reach, and an automated biorepository's precision, CTAP will establish the University of Alberta as a permanent national hub for advanced therapeutic validation—transforming clinical trials from bottlenecks into accelerators of human health.

CTAP creates a future where clinical trials are not episodic projects but components of a continuously learning ecosystem—where data, biospecimens, and operational knowledge cycle back to accelerate discovery, and where the promise of AI-enabled medicine becomes operational reality for patients across Alberta and beyond.
