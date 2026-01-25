# Clinical Trials Acceleration Platform (CTAP) - Master Coordinating Document

---

## Purpose

This document contains the complete strategic foundation for the CFI Innovation Fund 2027 CTAP proposal. It serves as the **single source of truth** for all competitive arguments, positioning, and strategic rationale. Application documents (RTA, Full Application) and stakeholder briefs extract from this master to ensure consistency.

**Document Role:**

- Contains ALL strategic arguments at full development (no page constraints)
- Serves as the "module" from which RTA and Full Application extract constrained sections
- Provides basis for stakeholder briefs and communications
- Ensures alignment across all CTAP documents

**Related Documents:**

- **RTA** (`derived/rta/rta.md`) - Constrained application, manually synchronized from MASTER
- **Full Application** (`derived/full_app/full_application.md`) - Expanded application, future development
- **Briefs** (`derived/briefs/`) - Stakeholder communications, extract from MASTER
- **Suites** (`core/suites/`) - Technical specifications, original authoring
- **Google Sheets** (CFI_CTAP_Data) - Budget, participants, equipment data

---

## 1. The Competitive Opportunity

### 1.1 The Research Problem

Advances in artificial intelligence, molecular biology, and biomanufacturing have dramatically expanded the pipeline of vaccines, biologics, and cell-based therapies. Yet the primary constraint on patient benefit remains unchanged: **the speed, cost, and system-level integration of human clinical trials**.

Clinical trials represent a substantial investment in health research across developed economies. In Canada, annual spending on clinical trials is estimated at **C$0.8–1.0 billion** (~C$20–26 per capita), with industry contributing approximately 80% and government sources—including CIHR's Clinical Trials Fund at C$163 million in 2022–23—providing the remainder. Comparator nations invest at higher levels: Australia's clinical trials sector spent **A$1.6 billion** in 2022 (~A$62 per capita), while the United Kingdom allocated approximately **£2.45 billion** in 2022–23 (~£36 per capita), split roughly evenly between public (NIHR) and industry funding.

Despite this substantial investment, much of the clinical trial lifecycle—from study conception and feasibility through recruitment, execution, and knowledge mobilisation—remains **manual, fragmented, and inefficient**:

- Patients face significant barriers to discovering and participating in randomized clinical trials (RCTs)
- Trialists cannot efficiently deploy available clinical, data, and human resources
- Evidence generation is concentrated in a small number of well-resourced academic centres
- AI tools are introduced in isolated, non-interoperable workflows with limited system-wide impact

**The Gap.**

Recent systematic reviews and meta-analyses demonstrate that AI-enabled methods can address many of these challenges at the component level [@chow2023; @lu2024; @saady2025]:

**Trial Development and Design:**

- A 2025 systematic review of 72 studies found AI improves trial design through optimized protocol development, adaptive trial modifications, and enhanced outcome prediction [@saady2025]
- AI approaches enable reduced sample sizes through more efficient patient selection and stratification [@askin2023]

**Patient Recruitment and Eligibility Screening:**

- AI-based eligibility screening tools achieve sensitivities of up to **90.5%** and specificities of **99.3%** across 19 datasets in cancer trials [@chow2023]
- AI-assisted prescreening increases eligible patient identification by **24–50%** compared to standard practices [@calaprice-whitty2020]
- Eligibility screening time reduced by **78%** (from 110 minutes to 24 minutes for equivalent patient volumes) [@beck2020]
- Patient identification timelines compressed from **weeks or months (19–263 days) to minutes** [@calaprice-whitty2020]

**Trial Management and Outcomes:**

- Predictive models for patient outcomes achieve AUC values of **0.81–0.92** [@saady2025]
- AI approaches improve survival prediction and drug response modelling in oncology trials [@saady2025]
- Automation reduces human error and increases operational efficiency across trial activities [@lu2024]

Despite these component-level gains, AI tools remain deployed in **isolated segments** of the trial lifecycle. The critical transition from patient identification to enrollment remains a persistent failure point, with reported conversion rates as low as **7%** in real-world implementations [@calaprice-whitty2020].

The evidence suggests AI tools perform optimally when: integration with existing electronic health record systems is achieved; users receive adequate training; trial eligibility criteria are well-defined and extractable from structured data; and implementation includes human oversight rather than full automation [@beck2020; @purri2025; @cascini2022]. The consistent finding that AI augments rather than replaces human decision-making indicates that hybrid human-AI workflows represent the most effective implementation model [@purri2025].

**This fragmentation—rather than limitations in AI performance—now represents the dominant barrier to accelerating clinical trials and translating scientific advances into patient benefit.**

**Clinical trials will become the choke point for innovation** unless we act urgently. Investments in AI compute, molecular discovery, and biomanufacturing will not benefit patients if the final mile—human clinical validation—remains stuck in a 1990s operating model. Alberta has made transformative investments in H200 GPU compute, world-class AI expertise through Amii, cutting-edge pre-clinical discovery programs, and the Critical Medicines Production Centre. What is missing is **the glue to pull it all together**: an AI-native platform that connects these assets into a seamless pathway from discovery to patient benefit. CTAP is that glue.

### 1.2 The Role of Integrated Biobanking in Trial Acceleration

Modern biobanks have evolved from passive specimen repositories into research-ready cohorts with linked clinical, molecular, and outcome data [@gkioka2023]. This transformation creates several acceleration pathways that directly address the startup and recruitment bottlenecks identified above:

**Pre-Screened Patient Cohorts:** Biobanks with linked registries enable identification of eligible participants before trials open. The Children's Oncology Group's "Every Child Protocol" demonstrates this model, using biological data to determine eligibility and stratification for therapeutic trials in real-time.

**Molecular Stratification for Precision Trials:** Machine learning characterization of biobank samples—integrating clinical observations, molecular signals, imaging, and laboratory data—enables biomarker-driven trial designs with dramatically reduced screening failures [@malone2020]. Contemporary biobanks serve as indispensable tools for advancing translational research into clinical trial design [@gkioka2023].

**Platform Trial Enablement:** Adaptive platform designs such as PRECISION-Panc depend on biobank-derived molecular data to assign patients to treatment arms dynamically, finding the right trial for each patient [@dreyer2020].

**Passive Follow-Up Through Data Linkage:** Linked health administrative records (as demonstrated by UK Biobank) minimize ascertainment bias and reduce loss to follow-up without active participant recontact, fundamentally changing the cost structure of long-term outcome studies [@sudlow2015].

**Practical Translation for CTAP:** Integrated biobanking enables genotype-first recruitment for prevention trials, adaptive trial designs with real-time molecular randomization, external comparator datasets for single-arm rare disease trials, and consent-once models that reduce per-trial burden. The challenge in Canada is fragmentation across provinces and disease domains—a gap that CTAP's harmonized infrastructure directly addresses.

### 1.3 Competitive Landscape

**International Context:**

| Institution/Program                             | Approach                              | Limitations                                       |
| ----------------------------------------------- | ------------------------------------- | ------------------------------------------------- |
| **UK Biobank/NHS**                        | Integrated biobanks + real-world data | AI tools disconnected; no end-to-end platform     |
| **All of Us (USA)**                       | Million-person precision medicine     | Research focused; not trial operations            |
| **German National Decade Against Cancer** | Cancer-focused trials acceleration    | Disease-specific; limited AI integration          |
| **Queensland TRI (Australia)**            | Integrated translational precinct     | Co-location model; limited AI/data infrastructure |

**Key Insight:** Large academic health centres and consortia are integrating biobanks, real-world data, and trials. AI tools are being developed for specific RCT aspects. But these elements remain disconnected—no centre has achieved end-to-end AI-augmentation across the entire trial lifecycle.

**Evidence Concentration:** Current evidence for AI in clinical trials is concentrated in:

- Oncology settings
- Well-resourced academic centres
- Specific trial phases (screening, recruitment)

This creates inequity: advanced AI tools are inaccessible to most investigators, disease areas, and settings.

### 1.4 The Market Gap

CTAP addresses a unique gap that no existing infrastructure fills:

**What CTAP Provides That Others Don't:**

1. **End-to-end AI augmentation** - From hypothesis generation through knowledge mobilization
2. **Agentic AI coordination** - Multiple AI agents working together, not isolated tools
3. **Provincial EMR integration** - Direct connection to 4.4 million patient records via Connect Care
4. **Living Biorepository** - Continuous EMR linkage, not static storage
5. **Embedded molecular phenotyping** - Cryo-EM, glycomics, metabolomics in trial workflows
6. **Manufacturing-to-trials pathway** - GMP cell therapy and vaccine manufacturing integrated with clinical infrastructure
7. **Core facility model** - Institutional infrastructure accessible to all investigators

**The CTAP Value Proposition:** Canada's first AI-native clinical trials platform—where AI is embedded across every workflow, not bolted on as an afterthought.

---

## 2. Strategic Arguments

### 2.1 Why Now: The Window is Closing

*Include file: `derived/includes/why_now.md`*

**Patients cannot wait.** The next five years will determine whether Canada leads or follows in clinical trials innovation. Right now, pipelines of breakthrough vaccines, cell therapies, and precision medicines are stalled—not by science, but by the archaic infrastructure of clinical trials. Every month of delay means patients who could benefit from curative therapies remain on waitlists, managing symptoms instead of receiving treatments.

The timing for CTAP is uniquely favourable due to an unprecedented convergence of enabling factors—a window that will not remain open indefinitely:

#### AI Capability Maturation

- **Large Language Models** have reached sufficient capability for complex clinical reasoning
- **Agentic AI design** enables autonomous, goal-directed behaviour with human oversight
- **Multi-agent coordination** allows orchestration of specialized AI systems
- Evidence base for AI in clinical trials growing rapidly (50+ publications 2023-2025)

#### Provincial Health Data Infrastructure

- **Connect Care** (Epic-based EMR) fully deployed across 682 AHS sites since 2020
- Province-wide access to 4.4 million Albertan health records
- FHIR API capabilities enabling real-time data integration
- Single-payer system eliminating multi-insurer fragmentation

#### Biomanufacturing Expansion

- **Critical Medicines Production Centre (CMPC)**: $200M, 83,000 sq ft facility under construction at Edmonton Research Park—Canada's largest pharmaceutical manufacturing capacity (70M+ doses/year) by 2026
- **PRAIRIE Hub**: $109.9M pandemic preparedness infrastructure (CBRF/BRIF funded 2024)
- **Alberta Cell Therapy Manufacturing (ACTM)**: Operational GMP cell therapy production

#### Federal Strategic Alignment

- **ACT-AEC** (Accelerating Clinical Trials): National clinical trials acceleration network funded 2024
- **PRAIRIE Hub**: Pan-Canadian pandemic preparedness consortium
- **RareKids-CAN**: National pediatric rare disease network (CIHR Institute of Genetics, 2024)
- **DHDP**: Digital Health and Discovery Platform ($49M federal + $108M partner + $165M in-kind)

#### Institutional Commitment: Kipnes Health Research Institute as CTAP's Functional Home

**The Dianne and Irving Kipnes Health Research Institute** (established September 2025, $25M philanthropic gift) is CTAP's functional home. The Institute is an organizational entity—not a building—housed within the College of Health Sciences in the renamed Dianne and Irving Kipnes Health Research Academy. Its vision: "to create a learning health system where artificial intelligence enhances care, clinical trials validate breakthroughs, and specialized programs demonstrate the full cycle of research from insight to impact."

The Institute provides CTAP's governance and operational framework through two key components:

- **AI + Health Hub** (Pannu, Lemermeyer): Bridges academic AI research and clinical deployment; home to Applied AI Innovation flagship
- **Health Research Translation Unit**: Clinical trials project management, regulatory navigation, data analysis infrastructure

Additional institutional alignment:

- **Forward with Purpose**: UAlberta strategic plan prioritizing health/life sciences, AI, digital innovation
- **College of Health Sciences**: Commitment to shared platforms and learning health systems
- **Alberta Technology and Innovation Strategy (ATIS)**: Provincial priority on technology hub development

#### Window of Opportunity

CFI Innovation Fund 2027 represents a unique opportunity to:

- Position Alberta as national leader before competing centres establish similar infrastructure
- Leverage existing investments (PRAIRIE, ACT-AEC, CMPC) with CFI matching
- Build on Connect Care maturity before other provinces achieve comparable integration

### 2.2 Why University of Alberta

*Include file: `derived/includes/why_ualberta.md`*

Alberta possesses a convergence of advantages that cannot be easily replicated:

#### Unrivalled AI and Compute Capacity

The University of Alberta, through the Strategic Digital Research Environment (SDRE) and Alberta Machine Intelligence Institute (Amii), is making transformative investments in AI compute infrastructure with plans for **up to 1,000 NVIDIA H200 GPUs**—positioning Alberta as one of North America's premier academic AI compute centres. This investment, combined with Amii's 10+ CIFAR AI Chairs focused on health and life sciences, creates an unprecedented convergence of compute power and AI expertise for clinical trials innovation.

**CTAP as the Clinical AI Gateway:** This compute infrastructure is the engine; CTAP provides the clinical fuel. Without CTAP's integration of clinical trial data, biospecimens, and health records, these GPUs remain general-purpose research tools. With CTAP, they become a clinical trials acceleration platform—training CRAIDL agents on real trial data, running Digital Twin simulations at population scale, and deploying AI models that compress trial timelines from years to months. **Patients cannot wait for innovation to trickle down—CTAP ensures that Alberta's AI investments translate directly into faster access to life-saving therapies.**

Amii's leadership includes pioneers of modern reinforcement learning, providing in-house expertise to deploy AI directly into clinical workflows—optimizing trial design, automating recruitment, and analyzing complex multi-omics data—without outsourcing.

**AI + Health Hub (Kipnes Institute):** Launched May 2025, the AI + Health Hub brings together researchers across 10 faculties with a singular mission: "to bridge the gap between academic research and clinical deployment of AI and digital tools for precision health." Led by **Dr. Neesh Pannu** and **Dr. Gillian Lemermeyer**, the Hub provides the institutional home for CTAP's Applied AI Innovation flagship, ensuring CRAIDL development occurs within a community dedicated to responsible AI implementation. Two recently recruited Canada CIFAR AI Chairs (Mohamed Abdalla, Lazar Atanackovic) strengthen this ecosystem alongside established leaders.

**Key Amii/CIFAR AI Chairs in Health:**

- **Dr. Ross Mitchell** (CIFAR AI Chair, AHS Chair in AI in Health): PHAIR Lab director; AI Scribe deployed across 10 Alberta EDs; CRAIDL leadership
- **Dr. Mohamed Abdalla** (CIFAR AI Chair): Clinical NLP, de-identification, privacy-preserving AI for health data
- **Dr. Lazar Atanackovic** (Amii Fellow, ECE/Biochemistry): Generative AI, Digital Twin Engine, causal inference
- Dr. Richard Sutton (CIFAR AI Chair): Reinforcement learning pioneer
- Dr. Russell Greiner (CIFAR AI Chair): Health applications, machine learning
- Dr. Randy Goebel (Amii Co-Founder): Explainable AI, AI governance
- **Collaborator: Dr. Amber Simpson** (Queen's University, CRC in Biomedical Computing): Radiomics, federated learning—joining UAlberta collaboration for multi-site imaging AI

#### A Unified Health System

Alberta's single-payer system, underpinned by **Connect Care**—a province-wide Epic-based clinical information system spanning 682 sites and serving 4.4 million Albertans—provides computable access to longitudinal records for population-scale research.

**What Connect Care Enables:**

- Near real-time data warehouse at the provincial population level
- Opportunities to integrate clinical trial recruitment tools leveraging the FHIR API
- Bulk extract pathway for population analytics and trial feasibility
- Long-term outcome tracking in clinical and administrative health data at the population level
- Synthetic control arm modeling from population-scale data

No other Canadian province has this combination of scale, integration, and data accessibility.

#### Mature Discovery Infrastructure

Over $400M in cumulative investment creates an unmatched bench-to-trials ecosystem:

| Facility                                       | Capability                                             | CFI/Major Investment                                     |
| ---------------------------------------------- | ------------------------------------------------------ | -------------------------------------------------------- |
| **Alberta Cryo-EM Facility**             | Structure-guided drug design, vaccine characterization | $20M SPP-ARC (only cryo-EM in Alberta, 1 of 5 in Canada) |
| **TMIC (Metabolomics)**                  | 50K samples/year metabolomics                          | CFI MSI                                                  |
| **GlycoNet**                             | Glycan profiling, NCE network hub                      | CFI + $2M AI/GlycoNet                                    |
| **APM (Alberta Proteomics)**             | Protein identification and characterization            | Established                                              |
| **Translational Genomics Hub**           | Rare disease genomics, VUS resolution                  | WCHRI                                                    |
| **ACTM**                                 | GMP cell therapy manufacturing                         | CFI                                                      |
| **DDIC**                                 | Phase I dosage forms, cGMP cleanrooms                  | Health Canada licensed                                   |
| **CBSR**                                 | Automated biobanking, EMR-linked samples               | CFI                                                      |
| **TRE & AI Infrastructure**              | Secure compute, AI Scribe (10 Alberta EDs), TRE pilot  | $850K secured ($350K direct + $500K AWS in-kind) + $500K+ in discussion |

**The Gap:** These world-class discovery assets currently lack a unified downstream pathway to human validation. CTAP provides that pathway.

**Digital Infrastructure Foundation:** The University of Alberta, Amii, and AWS have invested $850K in Trusted Research Environment (TRE) and AI infrastructure: $350K direct institutional investment in TRE architecture, $500K in-kind AWS credits supporting AI Scribe deployment across 10 Alberta emergency departments. An additional $500K+ in AWS credits for CTAP expansion is in discussion. This proven foundation reduces CFI risk—the CFI request extends operational infrastructure to clinical trials, not unproven experiments.

#### Expanding Biomanufacturing Capacity

Alberta is rapidly becoming a national hub for biomanufacturing:

- **SPP-ARC** (Striving for Pandemic Preparedness – Alberta Research Consortium)
- **PRAIRIE Hub** ($109.9M, 2024): Pandemic preparedness and vaccine platform development
- **CMPC** ($200M, completion 2026): Canada's largest pharmaceutical manufacturing capacity—70M+ doses/year in partnership with API and Li Ka Shing Applied Virology Institute

CTAP positions these manufacturing assets alongside clinical trials infrastructure to create an end-to-end pathway from discovery to human validation.

#### Specialized Translational Platforms

- **Translational Genomics Hub** (WCHRI): Addresses undiagnosed genetic diseases and variants of unknown significance; streamlines research ethics and enrollment for rare disease trials
- **APM**: Complements TMIC with protein identification and characterization

These platforms enable deep phenotyping across genomic, proteomic, metabolomic, and glycomic domains—a breadth of molecular characterization unmatched elsewhere in Canada.

#### Unique Combination

Few centres globally combine:

1. GMP manufacturing
2. Deep structural and systems biology
3. National-scale metabolomics and glycomics
4. A top-tier AI institute with CIFAR Chairs
5. A mature academic trials organization with 50+ trial templates
6. A single-payer provincial health system with province-wide EMR

**CTAP leverages this unique convergence into Canada's first AI-native clinical trials platform.**

### 2.3 Why This Team

The CTAP team brings together investigators and leaders spanning the full translational continuum—from AI-enabled discovery and structural biology to GMP manufacturing, clinical trials, biobanking, real-world evidence, and health system implementation.

**Leadership Domains:**

| Domain                                      | Expertise                                                                                                       | Key Contributors                                              |
| ------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------- |
| **Clinical Trials & Pragmatic RCTs**  | 50+ trials designed and delivered; multi-centre pediatrics; national network coordination                       | Canadian VIGOUR Centre, Alberta Diabetes Institute, WCHRI DCC |
| **AI & Computer Science**             | Reinforcement learning, agentic design, health AI                                                               | Amii, CIFAR AI Chairs, DARC, QBI/UCSF partnership             |
| **Biomanufacturing & Cell Therapies** | GMP manufacturing, regulatory compliance, first-in-human trials                                                 | ACTM, pluripotent stem cell core                              |
| **Biobanking & Biospecimen Science**  | International biobanking expertise, biospecimen-trial integration                                               | CBSR                                                          |
| **Structural Biology & Omics**        | Cryo-EM, glycomics, metabolomics, multi-omics integration                                                       | GlycoNet, TMIC, Cryo-EM, APM                                  |
| **Regulatory Science & Ethics**       | Health Canada, GCP/ICH, REB processes                                                                           | UACT, CTO                                                     |
| **Indigenous Health & EDI**           | Data sovereignty, culturally safe practices, inclusive recruitment                                              | Indigenous scholars, patient partners                         |
| **Disease Expertise**                 | Neurology, neuro-immunology, infectious diseases, hepatology, nephrology, cardiology, endocrinology, pediatrics | Flagship program leads                                        |

**Key Leadership:**

- **Michael Houghton** (Nobel laureate 2020, Hepatitis C discovery): Vaccine Challenge Trial Unit
- **Peter Senior**: Connect1d Canada, diabetes digital health trials
- **Todd Alexander**: Pediatric rare disease trials, RareKids-CAN connection

**The Interdisciplinary Imperative:** The interdisciplinary nature of CTAP and CRAIDL is essential: none of this will be possible without the collaboration of computer scientists, regulatory experts, research ethics specialists, and health scientists across professions.

### 2.4 Why This Approach

CTAP's approach differs fundamentally from existing clinical trials infrastructure:

#### AI-First Design (CRAIDL)

The cornerstone of CTAP's innovation is **CRAIDL** (Clinical Research Assistants for Intelligent Design and anaLysis)—an integrated suite of AI agents that will suggest, amalgamate, and draft high-quality RCT protocols and operational plans using AI-augmentation at every stage.

**CRAIDL Agent Architecture:**

| Agent                                | Function                                                        | Data Access                       | TRE Zone |
| ------------------------------------ | --------------------------------------------------------------- | --------------------------------- | -------- |
| **In Silico Assessment Agent** | **[NEW]** Protocol simulation, "digital twin" feasibility | De-identified historical outcomes | Zone 2/3 |
| Protocol Agent                       | Hypothesis-to-protocol conversion                               | Literature, prior protocols       | Zone 3   |
| Data Management Agent                | Statistical design, EDC creation                                | CVC templates, OMOP aggregates    | Zone 3   |
| Events Agent                         | Endpoint capture, adjudication                                  | EDC, EMR safety signals           | Zone 2   |
| Ethics Agent                         | REB submissions, consent generation                             | Templates, regulations            | Zone 3   |
| Regulatory Agent                     | Health Canada/FDA compliance                                    | CDISC datasets, regulatory DB     | Zone 2/3 |
| Budget & Contracts Agent             | Fair market value budgeting                                     | Industry benchmarks, rates        | Zone 3   |

**Agent Maturity Matrix:**

CRAIDL agents represent a spectrum of development maturity, from production-deployed systems to research prototypes. This transparency ensures reviewers understand that CTAP is not proposing "autonomous trial design" but rather a staged deployment of increasingly sophisticated AI assistants:

| Agent                      | TRL | Validation Status                | Anchor/Ground Truth                  |
| -------------------------- | --- | -------------------------------- | ------------------------------------ |
| AI Scribe (Jenkins)        | 9   | AHS production deployed (10 EDs) | AHS production operations            |
| Protocol Agent             | 6   | Prototype validated              | CVC 50+ trial templates, SPIRIT 2025 |
| Data Management Agent      | 6   | Prototype validated              | SPIRIT 2025, ICH E6(R3), R-Stats     |
| Ethics Agent               | 6   | Prototype validated              | HREB application templates           |
| Regulatory Agent           | 5   | Design validated                 | CDISC standards, ClinicalTrials.gov  |
| Events Agent               | 4   | Concept demonstrated             | EMR safety signal detection          |
| Budget & Contracts Agent   | 4   | Concept demonstrated             | CVC industry benchmarks              |
| In Silico Assessment Agent | 3   | Research prototype               | Meta Flow Matching framework         |

**Staged Agent Deployment:** CRAIDL agents vary in maturity, and deployment follows this maturity gradient. AI Scribe (Jenkins) is production-validated within AHS, demonstrating that clinical AI integration is achievable at scale. Protocol, Data Management, Ethics, and Regulatory Agents have prototype validation through investigator-developed infrastructure—these will be enterprise-deployed in Years 1-2. Events, Budget, and In Silico Agents are earlier-stage, with deployment planned for Years 3-4 following validation against established ground truth from CVC's completed trial archive. This staged approach ensures each agent meets clinical-grade reliability before deployment.

**Human-in-the-Loop AI Augmentation:** Unlike "black box" automation, CRAIDL is designed for **human-agent collaboration**. Agents operate as tireless assistants—drafting documents, checking compliance, and simulating scenarios—but all critical decisions (protocol approval, safety monitoring, regulatory submission) remain firmly under human investigator authority.

**The "In Silico" Innovation:** The new **In Silico Assessment Agent** acts as a "stress test" for proposed trials. Leveraging Dr. Lazar Atanackovic's work in **Meta Flow Matching** and **Generative Digital Twins**, this agent goes beyond simple regression to create patient-specific computational models from multi-omics baseline data. By running the draft protocol against these models and historical Connect Care data (simulating the trial as if it had run over the past 5 years), it allows investigators to simulate counterfactual treatment effects and identify inclusion/exclusion criteria that are too restrictive or endpoints that lack statistical power *before* a single patient is recruited.

**In Silico Data Requirements and Validation Pathway:** The In Silico Assessment Agent is CTAP's highest-ambition capability—an engineering challenge with specific data requirements:

- **Data Foundation**: Suite 2's linked biorepository (target: 100,000 samples) combined with Suite 4's Connect Care integration (4.4M patient records, 5+ years longitudinal depth) provides the statistical power necessary for population-level effect prediction
- **Methodological Anchor**: Dr. Atanackovic's Meta Flow Matching framework provides established generative AI architecture, extended here to clinical prediction. This is not speculative technology—it builds on published methodology
- **Validation Strategy**: Retrospective validation using CVC's completed trial archive (50+ trials) allows testing predictions against known outcomes before prospective deployment. This mirrors the GEMINI Chartwatch validation approach that demonstrated 26% reduction in unexpected deaths

**Tiered Data Governance Architecture:** The In Silico Agent operates within a governance model aligned with VITAL/GEMINI's established patterns. Population-level feasibility queries run in AHS/Research Snowflake, returning aggregate statistics. Identified cohorts or subpopulations may be shared via the TRE with per-study governance approval. Compute-intensive datasets (e.g., imaging via MANTA, the Libin Cardiovascular Institute platform partnering with VITAL/GEMINI) move to TRE when Snowflake compute is insufficient. CTAP does not presume unrestricted data access—each data flow requires appropriate governance approval, extending VITAL/GEMINI's proven architecture from retrospective analytics to prospective trial intelligence.

**Strategic Differentiation:** No Canadian jurisdiction offers prospective trial feasibility simulation at population scale. International comparators (UK Biobank RAP, All of Us, FinnGen) focus on retrospective analytics. CTAP's In Silico capability positions Alberta as a trial design optimization authority—transforming population-scale EMR data from evidence after the fact into decision support before execution. Industry partners report 40-60% of trials fail to meet enrollment targets; In Silico Assessment addresses the most common cause: over-optimistic eligibility assumptions.

Conservative deployment timeline: Year 3-4 after validation against historical trial data. The In Silico Agent is a *capability* CTAP infrastructure enables, not a *promise* the proposal depends on.

**The RECOVERY Benchmark:** The RECOVERY trial wrote its first protocol draft in approximately 3 days and enrolled its first patient within 9 days. CRAIDL aims to democratize this capability—using AI to compress the "idea-to-activation" timeline—while maintaining rigorous human oversight.

**Proof-of-Concept Validation:**

The CRAIDL methodology has been validated through an investigator-developed prototype operating on local infrastructure. This proof-of-concept demonstrates working capability for four of the seven proposed agents:

| Agent                 | Prototype Capability                                                    | Validation Evidence                                     |
| --------------------- | ----------------------------------------------------------------------- | ------------------------------------------------------- |
| Protocol Agent        | SPIRIT 2025-compliant protocol generation from 12-domain Trial Registry | Complete protocols with 11 auto-generated include files |
| Data Management Agent | SAP generation with Bayesian assurance; DMP per ICH E6(R3)              | Full SAP documents; sample size via R-Stats integration |
| Ethics Agent          | HREB application auto-population; 7 consent document types              | REB responses, ICF, assent, biospecimen consent         |
| Regulatory Agent      | ClinicalTrials.gov XML export; REDCap data dictionary generation        | Registration-ready XML; validated data dictionaries     |

The prototype leverages integrated literature search (PubMed, OpenAlex, Semantic Scholar, Europe PMC, ClinicalTrials.gov), regulatory reference retrieval (ICH E6(R3), SPIRIT 2025, TCPS2), and a Protocol Elements library of pre-approved, regulatory-aligned boilerplate. This demonstrates that AI can compress months of trial development work into hours—**not as future promise, but as present reality**.

**The Scaling Gap:** The prototype operates on a single investigator's machine without enterprise security, multi-user governance, Connect Care integration, or AHS data access. CFI investment transforms this proven methodology into institutional infrastructure accessible across the research enterprise.

#### Living Biorepository Concept

CTAP introduces a fundamental reconceptualization that transforms biospecimen management from static storage into an intelligent, continuously-updated discovery engine:

1. **Real-Time EMR Linkage**: Specimens remain continuously linked to participants' Connect Care records via FHIR API
2. **Automated Outcome Annotation**: Trial samples are automatically annotated with long-term outcomes from provincial health records (5-10 year follow-up without participant re-contact)
3. **Predictive Inventory Management**: AI predicts sample depletion, suggests optimal aliquoting strategies
4. **Consent-Aware Sample Routing**: Specimens flow automatically to approved studies based on consent scope; new uses trigger re-consent workflows

**The Distinction:** Rather than point-in-time snapshots, the Living Biorepository enables retrieval based on clinical outcomes that emerge years after collection.

#### Three-Zone TRE Architecture

Building on international best practices (UK Biobank RAP, All of Us, FinnGen, Genomics England) and Alberta's Health Information Act:

- **Zone 1 (Identifiable)**: AHS custodian-controlled; no researcher access
- **Zone 2 (Controlled Processing)**: De-identification, OMOP transformation, AI agent processing
- **Zone 3 (Research Environment)**: De-identified trial data lake, researcher workspaces

**Innovation:** Unlike retrospective TREs, CTAP extends the architecture with a "Trials Zone" supporting prospective data capture with 21 CFR Part 11 compliance.

#### Research Security: Infrastructure as Compliance Engine

In the current geopolitical climate, health data is classified as a **national security asset**. CTAP's infrastructure is designed from the ground up to serve as a **compliance engine**—automatically enforcing federal (STRAC/NSGRP) and provincial (HIA) security safeguards.

**Why This Matters:**

- Health data is "dual-use"—valuable for both research and national security
- Aggregated health datasets are essential for training AI models; foreign adversaries could use Canadian health data for competitive biopharma AI or population vulnerability analysis
- CTAP's use of Artificial Intelligence (CRAIDL), Advanced Data Computing (GPU secure compute), and Large-Scale Data Analytics (OMOP) places this work in **Sensitive Technology Research Areas (STRA)** under federal STRAC policy

**TRE as Security Infrastructure:**

| Security Requirement                        | TRE Implementation                                                         |
| ------------------------------------------- | -------------------------------------------------------------------------- |
| **HIA: Least Privilege**              | Zone 1 custodian control; researchers access only de-identified data       |
| **STRAC: Prevent Knowledge Transfer** | Airlock output controls; no bulk data export; reviewed outputs only        |
| **Data Sovereignty**                  | AWS Canada Central; AHS-controlled encryption; Canadian legal jurisdiction |
| **AI Model Security**                 | UofA-owned models in private VPC; no public model endpoints                |
| **Alberta Data Residency**            | All clinical data remains in Alberta; AI Scribe certified Alberta-only     |

**Centralized Biobanking Security:**

Centralized biorepository management addresses physical security vulnerabilities inherent in distributed biobanking:

| Risk                              | Centralized Safeguard                                                    |
| --------------------------------- | ------------------------------------------------------------------------ |
| **Sample Loss/Degradation** | 24/7 temperature monitoring with remote alarming; automatic backup power |
| **Unauthorized Access**     | Badge + biometric access control; unified security perimeter             |
| **Sample Diversion**        | Full chain of custody via barcode/RFID; ISBER-compliant traceability     |
| **Catastrophic Failure**    | Redundant storage; off-site backup protocols                             |

**Strategic Positioning:** In an era of strict federal security guidelines (STRAC) and provincial privacy laws (HIA), "downloading data to a laptop" is a liability. The TRE centralizes security, ensuring that even if a researcher's account is compromised, the raw data remains locked behind AHS custodian firewalls. This architecture positions CTAP as the **safest place in Canada** to conduct AI-enabled health research.

#### Local Compliance, International Harmonization

CTAP implements a "local compliance, international harmonization" regulatory framework—meeting Alberta/Canadian requirements as mandatory baseline while enabling seamless global collaboration:

**Privacy-by-Design for Global Collaboration:**

- **Local First**: Health Canada Division 5, ICH E6(R3), TCPS2, and HIA form the mandatory compliance foundation for all trials
- **International Modules**: Optional 21 CFR Part 11 (FDA) and EU Annex 11 (EMA) compliance modules activated only when required for multi-jurisdictional submissions
- **Federation Standards**: OMOP CDM, CDISC, HL7 FHIR, and FAIR principles enable data sharing without data movement

**Why This Enables Global Collaboration:**
International partners (DHDP, OHDSI, disease-specific consortia) can collaborate with CTAP **because** of its rigorous privacy architecture—not despite it. The TRE's three-zone model and federated query capabilities allow:

- Multi-site feasibility analyses without patient-level data leaving Alberta
- AI model training across jurisdictions via federated learning
- Regulatory submissions to multiple agencies from a single compliant data source

**Key Insight:** The highest international TRE standards (UK Biobank RAP, All of Us, FinnGen) are defined by their security and privacy controls. CTAP's architecture meets or exceeds these benchmarks, making it an attractive partner for global clinical trials networks.

#### Core Facility Model

CTAP is inherently core-facility-based, ensuring the requested infrastructure will enable multiple research and technology-development programs—not a single narrow project:

- Cost-recovery user fees
- Transparent access policies
- Training programs for HQP
- Robust quality management systems
- Institutional (not PI-only) ownership

---

## 3. Core Objectives (Canonical)

*Source of truth: Google Sheets CFI_CTAP_Data > Objectives tab*
*Include file: `derived/includes/objectives.md`*

By 2031, CTAP will:

1. **Reduce clinical trial start-up timelines by 40-50%** for UofA-led trials through streamlined UACT processes, harmonized SOPs, and embedded provincial workflows—with a stretch goal of idea to first site activation within 4 weeks via AI-augmented design.

   - *Target: startup time reduced from 12+ months to 6 months*
   - *Benchmark: RECOVERY trial*
2. **Double trial recruitment efficiency** and create a patient engagement model that serves as a national resource, with explicit targets for Indigenous (15%), rural (20%), and pediatric participation.

   - *Target: patient engagement model adopted by 3+ national networks*
3. **Enable first-in-human and advanced-therapy trials** through Canada's first academic human challenge facility, integrated cell therapy manufacturing (ACTM), and the API biomanufacturing partnership—creating a complete discovery-to-production pathway.

   - *Target: 5+ first-in-human trials including 2+ vaccine challenge studies*
   - *Target: 3+ cell therapy trials*
   - *Target: 2+ products advancing to CMPC scale-up*
4. **Integrate biospecimens, multi-omics, and real-world data** so that 70% or more of interventional trials have pre-planned biospecimen pipelines, FAIR-compliant data, and RWD-based follow-up linked to Connect Care. Manufacturing batch QC specimens will be archived for outcome correlation, enabling continuous process optimization.

   - *Target: batch-to-outcome traceability for 100% of API-manufactured products*
5. **Embed AI across trial design, enrollment, monitoring, and analysis**, creating a continuously learning clinical trials system with 8 deployable CRAIDL agents accessible as national infrastructure via ACT-AEC. The Living Digital Twin will integrate trial outcomes with API's QSP platform for population-level prediction refinement.

   - *Target: 8 agents deployed*
   - *Target: adopted by 5+ institutions*
6. **Establish vaccine challenge trial capacity** through the Challenge Trial Unit, supporting PRAIRIE Hub vaccine programs with human challenge studies for non-airborne pathogens (HCV, enteric infections). This strategic focus—aligned with Houghton's Nobel Prize-winning HCV research—provides efficacy signals in months rather than years for blood-borne and enteric vaccine candidates.

   - *Target: 3+ controlled human infection model protocols validated (HCV, enteric pathogens)*
   - *Target: first HCV challenge study supporting Houghton vaccine program*
7. **Create a nationally interoperable clinical trials backbone**, serving as a Western anchor for ACT-AEC, PRAIRIE Hub, and RareKids-CAN, with 10+ institutional partners. CTAP will function as the clinical validation engine connecting PRAIRIE Hub discoveries to API manufacturing to population-scale production.
8. **Train 150+ highly qualified personnel** in AI-enabled trial design and operations, including clinician-scientists and data scientists, with 20% from Indigenous communities and underrepresented groups. Shared GMP training rotations with API will create dual-competent personnel bridging clinical and manufacturing domains.

   - *Target: training curriculum adopted nationally*
   - *Target: 25+ personnel completing cross-sector rotations*

---

## 4. Infrastructure Model

![CTAP Infrastructure Overview](figures/ctap-overall-prefered.png)

*Figure 1: CTAP Infrastructure Overview. The platform integrates four infrastructure suites around a central AI-enabled operations hub, connected to Alberta's discovery ecosystem (PRAIRIE Hub, Li Ka Shing Institute), biomanufacturing capacity (API, ACTM), provincial health system (Connect Care), and AI/compute infrastructure (Amii, AWS). The Key Pathway ribbon illustrates the end-to-end discovery-to-production pathway that CTAP enables.*

### 4.1 Five Integrated Domains

CTAP operates through five tightly coupled domains, unified by an integrated data architecture that connects clinical data sources, biospecimen systems, omics facilities, and AI agents through a three-zone Trusted Research Environment (TRE).

| Domain                                        | Function                                                    | Suite   | CFI Request         |
| --------------------------------------------- | ----------------------------------------------------------- | ------- | ------------------- |
| **1. AI-Enabled Operations Hub**        | CRAIDL agents, trial operations, regulatory navigation      | Suite 4 | Included in Suite 4 |
| **2. Living Biorepository**             | EMR-linked biospecimens, outcome annotation                 | Suite 2 | $2,510,000          |
| **3. Secure Research Data Environment** | Three-zone TRE, OMOP, Connect Care integration              | Suite 4 | $1,338,000          |
| **4. Open Science Infrastructure**      | FAIR data, CDISC, regulatory compliance                     | Suite 4 | Included in Suite 4 |
| **5. Integrated Molecular Phenotyping** | Cryo-EM, glycomics, metabolomics                            | Suite 3 | $555,000            |
| **Clinical Trials Infrastructure**      | Non-airborne CHIM, rare disease unit, autonomic labs        | Suite 1 | $1,640,000          |
| **CRAIDL AI Agent Software Contract**   | Contracted AI software development (Amii)                   | Suite 4 | $650,000            |
| **Remote and Decentralized Trials**     | Digital health, wearables, decentralized trials             | Suite 5 | $376,000            |
| **Renovation Contingency**              | 13% contingency for renovation estimates                    |         | $1,250,000          |

**Total CFI Request: $8,318,879 CAD** (40% CFI + 60% matching)

*Note: Suite 1 reduced by $650,000 through non-airborne CHIM design (blood-borne/enteric focus); savings reallocated to CRAIDL AI Agent Software Development Contract.*

*Note: Budget figures sourced from Google Sheets RTA Budget (source of truth)*

**SDRE Partnership:** Suite 4 leverages the University of Alberta's Sensitive Data Research Environment (SDRE), launching January 2026, for developmental data science and AI model development workloads. This reduces the CFI request by ~$850,000 while increasing capability through access to institutional HPC infrastructure. CTAP retains dedicated on-premise infrastructure for clinical trials-specific systems requiring 24/7 availability (OpenSpecimen, CRAIDL inference servers) and regulatory-compliant platforms (21 CFR Part 11 EDC). See Suite 4 Section 2A for detailed workload allocation.

**CRAIDL AI Agent Software Contract:** CTAP includes $650,000 for contracted development of CRAIDL AI agent software through Amii—enabled through strategic reallocation from Suite 1's Challenge Trial Unit (non-airborne design reduces infrastructure requirements). This contract delivers 8 production-ready clinical trial AI agents with perpetual institutional licenses, accelerating deployment by 6-9 months per agent. Amii CEO Cam Linke has provided formal commitment via letter of support (January 2026), confirming software deliverables, source code delivery, perpetual licensing, and SDRE compute access for development and testing. The $650,000 investment yields capital software assets—not ongoing personnel costs—creating Canada's first dedicated clinical trials AI infrastructure. See Suite 4 Section 4B for detailed contract structure and deliverables.

### 4.2 Domain Descriptions (Full)

*See Suite documents for detailed specifications:*

- `core/suites/suite_1_clinical_trials_infrastructure.md`
- `core/suites/suite_2_living_biorepository.md`
- `core/suites/suite_3_translational_science.md`
- `core/suites/suite_4_data_platform.md`
- `core/suites/suite_5_trial_innovation.md`

*See include files for synchronized summaries:*

- `derived/includes/suite_1_description.md`
- `derived/includes/suite_2_description.md`
- `derived/includes/suite_3_description.md`
- `derived/includes/suite_4_description.md`
- `derived/includes/suite_5_description.md`

### 4.3 Integration Points

**Data Flow Architecture:**

```
Connect Care (Epic) ─── FHIR API ──┬── Zone 1 (Identifiable)
                                   │
                                   ▼
                              Zone 2 (Controlled)
                              - De-identification
                              - OMOP transformation
                              - CDISC conversion
                              - CRAIDL agent processing
                                   │
                                   ▼
                              Zone 3 (Research)
                              - Trial data lake
                              - OMOP analytics
                              - Researcher workspaces
```

**Key Integration Standards:**

| Standard                           | Applies To                            | Implementation                                |
| ---------------------------------- | ------------------------------------- | --------------------------------------------- |
| **Health Canada Division 5** | All drug clinical trials              | CTA support, GCP inspection readiness         |
| **ICH E6(R3)**               | All trial data (mandatory April 2026) | Quality-by-design, risk-based monitoring      |
| **TCPS2 (2022)**             | Research ethics                       | REB workflow, consent, privacy                |
| **HIA**                      | All Alberta health data               | Three-zone TRE model                          |
| **CAN/CGSB-72.34-2017**      | Electronic records                    | Audit trails, e-signatures                    |
| **21 CFR Part 11**           | FDA submissions only                  | Optional compliance module                    |
| **CDISC**                    | Regulatory submissions                | Automated CDASH → SDTM pipeline              |
| **HL7 FHIR**                 | Connect Care integration              | Real-time + batch APIs                        |
| **OMOP CDM**                 | Analytics, federation                 | Full ETL from Connect Care                    |
| **NIST CSF 2.0**             | Security framework                    | STRAC/NSGRP compliance baseline               |
| **STRAC/NSGRP**              | Research security                     | TRE as compliance engine; partnership vetting |

**Federation Layers:**

1. **Intra-Alberta:** CBSR sites, AHS facilities, U Calgary, U Lethbridge via shared OMOP
2. **National:** PRAIRIE Hub, CGEn, CCTG, ACT-AEC, RareKids-CAN via federated queries
3. **International:** OHDSI network, disease-specific consortia via aggregate results only

### 4.4 Flagship Programs

CTAP will be operationalized through five high-impact flagship programs representing Alberta's research strengths, each serving as living testbeds for CRAIDL agent development and validation:

| Program                                                               | Leadership and Partnership                                                                                                                                                                                                                                                                                                                                                                                        | CTAP Role                                                                                                                                                                                    |
| --------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Applied AI Innovation in Healthcare**                         | PHAIR Lab (Ross Mitchell, CIFAR AI Chair); AI + Health Hub (Neesh Pannu, Gillian Lemermeyer—Kipnes Institute); Amii Fellows (Lazar Atanackovic, Mohamed Abdalla); Queen's radiomics collaboration (Amber Simpson, CRC); AHS Clinical AI Deployment                                                                                                                                                              | Science of AI implementation in clinical trials; CRAIDL agent development and validation; AI Scribe integration; translating AI research to clinical deployment at scale                     |
| **Neuro-immunology, MS Cell Therapies & Autonomic Dysfunction** | MS Centre (Cris Power, Anatasia Voronova, 29 affiliates); Autonomic Function Labs (Lawrence Richer); collaboration with UCSF - Quantitative Biosciences Institute; leveraging translational core facilities including Cell Imaging Facilities, Advanced Cell Exploration Core, Glycomics Institute of Alberta, The Metabolomics Innovation Centre (TMIC), Alberta Proteomics and Mass Spectrometry (APM), Cryo-EM | Accelerated human trials for innovative cell therapies, deep phenotyping via Omics Integration Hub; Long COVID/POTS trials via Autonomic Function Labs                                       |
| **Hepatitis C & Vaccine Trials**                                | Hepatitis C (Michael Houghton; Nobel 2020), Li Ka Shing Institute, PRAIRIE Hub (Joanne Lemieux, Maya Shmulevitz)                                                                                                                                                                                                                                                                                                  | Alberta's first academic Challenge Trial Unit; accelerated CHIM protocols                                                                                                                    |
| **Cardio-Renal-Metabolic Population Health**                    | Canadian VIGOUR Centre (Justin Ezekowitz), Alberta Diabetes Institute, Connect1d Canada, Islet Cell Core (Peter Senior, Patrick Macdonald)                                                                                                                                                                                                                                                                        | Pragmatic trials, decentralized designs, trial innovation suite for innovative remote monitoring (e.g. novel continuous glucose monitoring), wearables integration, digital health platforms |
| **Pediatric Rare Disease**                                      | Stollery Children's Hospital (1 of 2 Canadian Phase I sites), Women and Children's Health Research Institute - Translational Genomics Hub, RareKids-CAN - national trials network for pediatric rare disease                                                                                                                                                                                                      | Pediatric Rare Disease Trials Unit, accelerated patient impact                                                                                                                               |

#### Applied AI Innovation in Healthcare

**The science of AI implementation is itself a research frontier.** Most AI tools fail to translate from research to clinical deployment—not because the algorithms underperform, but because implementation science is underdeveloped. The Applied AI Innovation flagship program addresses this gap directly, making CTAP not just a consumer of AI tools but a **generator of new knowledge about how AI systems succeed or fail in clinical trials settings**.

**PHAIR Lab Leadership:** Dr. Ross Mitchell's Precision Health AI Research (PHAIR) Lab anchors this program. As Canada CIFAR AI Chair and Alberta Health Services Chair in AI in Health, Dr. Mitchell brings 30+ years of expertise from Mayo Clinic, Moffitt Cancer Center, and University of Calgary. His AI Scribe ("Jenkins")—already deployed across 10 Alberta emergency departments with 58 physicians and 7,500+ clinical conversations—demonstrates what implementation success looks like: banking/military-grade security, physician adoption, and measurable workflow improvement (approximately 3 additional patients seen per physician per shift).

**AI + Health Hub Integration:** The AI + Health Hub, launched May 2025 within the Kipnes Institute and led by **Dr. Neesh Pannu** and **Dr. Gillian Lemermeyer**, provides the institutional home for this flagship. The Hub's mission—"to bridge the gap between academic research and clinical deployment of AI and digital tools for precision health"—aligns precisely with CTAP's objectives. With seed grants already supporting AI-enabled health translation (Hartling, Laratta), the Hub provides governance, community, and institutional support for implementation research.

**CFI Investment → Research Innovation:** This flagship exemplifies the direct relationship between CFI infrastructure investment and innovative research outcomes. CTAP infrastructure enables research that cannot occur without it:

| CFI-Funded Infrastructure | Research Innovation Enabled |
|--------------------------|----------------------------|
| TRE with Connect Care integration | AI algorithm validation at population scale (4.4M Albertans) |
| GPU compute cluster | CRAIDL agent training on real clinical trials data |
| Living Biorepository | Outcome-linked biomarker discovery for AI model development |
| OMOP CDM infrastructure | Federated learning research across OHDSI network (100+ sites) |
| Digital Twin Engine | Synthetic control arm generation for rare disease trials |

**Research Outputs:**

1. **Implementation Science Publications:** Rigorous studies of CRAIDL agent deployment—success factors, failure modes, adoption barriers—generating generalizable knowledge for AI implementation in healthcare
2. **Algorithm Development:** Novel AI methods for clinical trials, building on Atanackovic's generative models, Simpson's radiomics, Abdalla's de-identification, and Mitchell's clinical NLP
3. **Benchmark Datasets:** Curated, de-identified trial datasets enabling reproducible AI research across the community
4. **Open-Source Tools:** CRAIDL agents released as open-source infrastructure, extending Alberta's AI innovations nationally via ACT-AEC

**Collaborator Network:**

- **Dr. Amber Simpson** (Queen's University, CRC in Biomedical Computing): Radiomics and computational biomarkers for imaging-based trial endpoints
- **Dr. Lazar Atanackovic** (Amii Fellow, ECE/Biochemistry): Generative AI, Digital Twin Engine, synthetic control arms
- **Dr. Mohamed Abdalla** (CIFAR AI Chair): Clinical NLP, de-identification, privacy-preserving AI
- **Dr. Randy Goebel** (Amii Co-Founder): Explainable AI, AI governance

**Patient Partnership:**

- AI ethics advisory including patient representatives
- Transparent AI development with explainability requirements
- Patient input on acceptable AI use cases in clinical trials
- Community Advisory Board ensuring AI development reflects diverse perspectives

#### Neuro-immunology, MS Cell Therapies, and Autonomic Dysfunction

Building on the University of Alberta's **MS Centre**—one of Canada's premier MS research hubs with 29 multidisciplinary affiliates spanning neuroimaging, neuroimmunology, glial biology, and clinical care—ACTM-manufactured cell products (regulatory T-cells, engineered lymphocytes) will be tested in early-phase MS and neuro-inflammatory trials. The MS Experimental Therapeutics Program (Giuliani) provides clinical trial expertise, while longitudinal immune profiling via GlycoNet glycomics (Mahal), TMIC metabolomics, and cryo-EM-supported structural insights enable comprehensive patient characterization. **CHARM Synergy:** Dr. Voronova's CHARM platform (CFI IF 2025)—a hiPSC-based precision medicine infrastructure—complements CTAP by providing patient-derived neural and glial models for MS therapeutic target validation.

**Autonomic Dysfunction Research Program:**

Long COVID and diabetic neuropathy frequently manifest as autonomic dysfunction, including postural orthostatic tachycardia syndrome (POTS). These conditions share neuro-immunological mechanisms with MS and other neuroinflammatory conditions, making them a natural extension of this flagship program. CTAP's **Autonomic Function Laboratories**—one adult lab at Kaye Edmonton Clinic and one pediatric lab at Stollery Hospital 1D—provide research-grade autonomic testing infrastructure for clinical trials.

**Exemplar Trial ([NCT06721949](https://www.clinicaltrials.gov/study/NCT06721949)):** Dr. Lawrence Richer's Phase 2/3 trial "Taurine Supplementation as a Novel Therapeutic Approach for Neurocognitive Symptoms in Long COVID" (n=300, recruiting) demonstrates the immediate need for this infrastructure. The trial evaluates taurine's effects on autonomic dysfunction and cognitive symptoms in Long COVID patients, requiring rigorous assessment of autonomic function as a key secondary outcome.

**Autonomic Lab Capabilities:**

- **Tilt Table Testing**: Gold standard POTS diagnosis with research-grade 60-70° controlled positioning
- **QSART**: Quantitative sudomotor axon reflex testing for small fiber neuropathy assessment
- **Continuous Hemodynamics**: Beat-to-beat blood pressure monitoring via Finapres for adrenergic function
- **Cerebral Monitoring**: Transcranial Doppler and NIRS for cerebral autoregulation during orthostatic stress

**Patient Partnership:**

- MS patient advisory committee for protocol design, building on MS Society of Canada partnerships
- Long COVID patient advocacy groups informing autonomic dysfunction trial design
- Lived experience input on outcome measures (fatigue, cognition, quality of life, orthostatic intolerance)
- Patient-reported outcomes as co-primary or key secondary endpoints
- Community Advisory Board with MS patients, Long COVID patients, caregivers, and advocates

#### Hepatitis C and Vaccine Trials

Led by Dr. Michael Houghton (Nobel laureate 2020 for Hepatitis C virus discovery), this program leverages Canada's first academic **Vaccine Challenge Trial Unit**—a controlled human infection model (CHIM) facility focused on non-airborne pathogens (blood-borne and enteric). This strategic focus enables accelerated vaccine efficacy evaluation for HCV and enteric infections with dramatically smaller participant numbers and compressed timelines, while avoiding duplication of airborne pathogen facilities available elsewhere in Canada.

**Infrastructure:**

- PRAIRIE Hub, Alberta Cryo-EM Facility, GlycoNet, TMIC for structure-guided design
- Li Ka Shing Applied Virology Institute for challenge protocol development
- API/CMPC for large-scale vaccine manufacturing (70M+ doses/year)

**Patient Partnership:**

- Community engagement with populations affected by hepatitis C (people with lived experience of injection drug use, Indigenous communities)
- Patient advocates on trial steering committees
- Harm reduction-informed recruitment strategies
- Community Advisory Board ensuring culturally safe and non-stigmatizing trial conduct

#### Precision Cardio-Renal-Metabolic Population Health

CVC-anchored pragmatic trials and registries combined with CBSR biospecimens, TMIC metabolomics, APM proteomics, and AI-based risk prediction.

**Key Exemplar - Connect1d Canada:**

- Pan-Canadian Type 1 Diabetes patient registry transitioning to Alberta Diabetes Institute leadership under Dr. Peter Senior
- Demonstrates Suite 4 data integration: patient-reported data, CGM wearable data, and Connect Care EHR data flow through TRE
- Enables decentralized diabetes trials reaching patients nationally
- Testbed for Suite 5 Digital Health Device Validation Program (Light/Baghelani microwave glucose sensor)

**Indigenous Co-Design:**

- Culturally safe protocols and governance developed with Indigenous communities
- Indigenous data sovereignty principles embedded
- ICTU consultation for diabetes trials involving Indigenous participants

**Patient Partnership:**

- Diabetes Action Canada SPOR network integration (Alberta SPOR Support Unit collaboration)
- Connect1d patient registry co-designed with patient partners
- Community Advisory Board with diabetes patients, caregivers, and Indigenous health advocates
- Patient-identified outcomes prioritized (quality of life, treatment burden, hypoglycemia fear)

#### Pediatric Rare Disease Trials (RareKids-CAN)

CTAP establishes a dedicated **Pediatric Rare Disease Clinical Trials Unit** at the Stollery Children's Hospital—one of only two Canadian pediatric hospitals authorized for Phase I trials.

**Stollery Advantages:**

- Largest pediatric catchment in North America (4 provinces, 3 territories, 316,000+ patients annually)
- Located in existing Clinical Investigation Unit (Oilers Ambulatory Clinic)
- WCHRI Translational Genomics Hub for genomic characterization
- Data Coordinating Centre for harmonized multi-site protocols

**Funding:**

- CTAP: $200,000 (equipment)
- Stollery Foundation: $200,000 (family-friendly spaces)

**Network Role:** Western anchor for national RareKids-CAN network (SickKids Toronto coordination), supporting Canada's National Strategy for Drugs for Rare Diseases.

**Family Partnership:**

- Parent/caregiver partners on protocol committees (recognizing children cannot always self-advocate)
- Family-centered outcome measures validated with rare disease families
- Pediatric patient advisory where age-appropriate (adolescent input on trial burden, consent processes)
- Family Advisory Board with rare disease advocacy organizations (Canadian Organization for Rare Disorders)
- Plain language materials and age-appropriate consent/assent processes

#### CRAIDL AI Methodology Development

The **Applied AI Innovation in Healthcare** flagship provides the methodological foundation for CRAIDL development, while all other flagship programs serve as testbeds for agent deployment and validation. This bidirectional relationship—where PHAIR Lab develops methods and clinical flagships stress-test them—enables iterative refinement across diverse trial designs, disease areas, and regulatory contexts. The evidence base extends beyond oncology to neuro-immunology, infectious disease, cardiometabolic medicine, and pediatrics, generating implementation science knowledge that transfers nationally via ACT-AEC.

---

## 5. Benefits to Canada (Full Development)

*Include file: `derived/includes/benefits_summary.md`*

CTAP delivers transformative benefits across health, economic, and innovation dimensions—positioning Canada as a global leader in AI-enabled clinical trials while addressing critical gaps in Canadian health research infrastructure.

### 5.1 Health and Social Benefits

#### Faster Access to Life-Saving Therapies

Canadian patients currently wait years for promising therapies to complete clinical trials. CTAP's integrated infrastructure will compress this timeline dramatically:

**Trial Acceleration Metrics:**
- Trial start-up time reduced from 12-18 months to 4-6 months through CRAIDL automation
- 78% reduction in patient screening time
- 4.5-fold faster eligibility determinations
- 83% reduction in data extraction effort
- Protocol development from weeks to days

**National Impact:** If CTAP accelerates even 20% of Alberta's clinical trials by 6 months, thousands of Canadian patients will gain earlier access to therapies for cancer, rare diseases, infectious diseases, and chronic conditions.

#### Canada's Living Laboratory: Connect Care as National Asset

Alberta's **Connect Care**—the largest integrated clinical information system in Canada—provides a unique national resource. CTAP transforms this $2 billion provincial investment into research infrastructure available to investigators across Canada:

- **6+ million patient records** accessible for trial feasibility and cohort discovery
- **Real-time clinical data** enabling adaptive trial designs
- **Single-system integration** impossible in fragmented provincial systems
- **OMOP transformation** enabling federated queries with international networks

No other Canadian province can offer this combination of scale, integration, and real-time access. CTAP makes this Alberta asset a national resource through ACT-AEC partnerships.

#### Addressing Canada's Clinical Trial Gap

Canada conducts only **2% of global clinical trials** despite representing 0.5% of world population—a disproportionately low share given our research capacity. CTAP addresses systemic barriers:

- **Regulatory efficiency:** AI-assisted Health Canada submissions reduce approval timelines
- **Industry attraction:** Integrated infrastructure makes Alberta competitive with global trial hubs
- **Academic empowerment:** Democratized access to trial design tools enables smaller centres
- **Patient access:** Decentralized designs extend trials to rural and remote communities

**Target:** Increase Alberta's share of Canadian clinical trials from 10% to 15% by 2031, generating an additional 50-100 trials annually.

#### Indigenous Health Equity

CTAP directly addresses the Truth and Reconciliation Commission's Calls to Action and CIHR's commitment to Indigenous health research:

**ICTU Partnership:** Canada's first Indigenous Clinical Trials Unit ensures:
- Community-led research design respecting Indigenous self-determination
- OCAP principles technically enforced through TRE architecture
- Indigenous Data Stewardship with IAM-controlled access
- Consent materials in Cree, Dene, Blackfoot, and Michif

**Explicit Targets:**
- 15% Indigenous participant enrollment (reflecting Alberta population)
- 20% rural/remote participant enrollment
- Indigenous representation on all governance committees
- Community benefit agreements ensuring research results return to communities first

**National Significance:** CTAP establishes replicable models for Indigenous clinical trial participation that can be adopted across ACT-AEC and other Canadian networks.

#### Health Equity Across Underserved Populations

CTAP's infrastructure specifically addresses systemic barriers affecting:

- **Pediatric populations:** RareKids-CAN network and Stollery CIU enable Canadian children to access trials previously available only in the United States
- **Rural and remote communities:** Decentralized trial designs, telehealth integration, and CRAIDL-enabled protocol translation reduce geographic barriers
- **Pregnant women:** Protocol templates enabling ethically appropriate inclusion where historically excluded
- **2SLGBTQIA+ communities:** AI bias auditing ensures equitable representation
- **Racialized communities:** Diverse training datasets and stratified performance testing

#### Cloud as Equity Enabler

CTAP's cloud architecture is not merely a technical choice—it is an equity strategy. Traditional on-premise academic infrastructure creates geographic hierarchies: researchers at major centres have direct access; those at smaller institutions, rural hospitals, and northern communities do not.

Cloud-based TRE eliminates this hierarchy. A researcher in Fort McMurray accesses the same infrastructure as a researcher at the University of Alberta. A clinical site in Nunavut participates in trials through the same platform as the Stollery CIU. Indigenous communities maintain data sovereignty through OCAP-compliant governance arrangements that cloud architecture enables.

**Northern Health Security:** The Government of Canada is investing significantly in northern communications infrastructure, framed as national security and defence of the North. CTAP leverages these investments:

- Store-and-forward data synchronization works with intermittent connectivity—telehealth kits capture data during available bandwidth windows
- Voice-first AI documentation (AI Scribe) reduces the transcription burden that connectivity-dependent systems impose
- OCAP-compliant governance ensures improved connectivity strengthens rather than threatens Indigenous data sovereignty
- Data remains in Canadian jurisdiction (AWS Calgary region) under Canadian law

This is not theoretical equity—it is architectural equity, built into the infrastructure from day one.

### 5.2 Economic and Innovation Benefits

#### Strengthening Canada's Biopharmaceutical Competitiveness

Canada faces an urgent competitive challenge: global pharmaceutical R&D is concentrating in jurisdictions with integrated trial infrastructure. CTAP directly addresses this by creating Canada's most advanced clinical trials platform:

**Industry Attraction:**
- Integrated infrastructure (clinical sites + biobanking + AI tools) reduces industry site selection barriers
- Connect Care access enables rapid feasibility queries and cohort identification
- CRAIDL reduces industry's trial design costs by 40-60%
- One-stop infrastructure replaces fragmented negotiations with multiple service providers

**Economic Impact Projections (by 2031):**
- 20% increase in industry-sponsored trials in Alberta (current: ~$30M/year → projected: ~$36M/year)
- $6M additional annual research revenue and overhead
- 50+ new research positions supported by industry contracts
- $100M+ in pharmaceutical R&D investment attracted to Alberta

**ATIS Alignment:** CTAP directly supports Alberta Technology and Innovation Strategy goals to diversify Alberta's economy and establish the province as a global innovation hub.

#### Intellectual Property and Commercialization

CTAP will generate significant IP with national commercialization potential:

**CRAIDL IP Portfolio:**
- 8 AI agent architectures for clinical trial automation
- Training datasets curated from Alberta clinical practice
- Validation benchmarks and performance standards
- Integration APIs and platform specifications

**Commercialization Pathways:**
- Technology licensing to CROs, pharmaceutical companies, and academic institutions
- Spin-off potential for CRAIDL-based services
- Open-source core agents with commercial premium features
- TEC Edmonton and UAlberta Innovation support for IP development

**National Deployment:** CRAIDL agents developed under CTAP will be deployed across the ACT-AEC network, creating a Canadian national asset while retaining Alberta IP leadership.

#### Addressing Canada's Brain Drain in Clinical Research

Canada loses clinical research talent to US and European institutions with better infrastructure. CTAP creates compelling reasons for Canadian researchers to stay and international researchers to come:

**Talent Attraction:**
- World-class AI infrastructure through Amii collaboration (Canada's largest AI institute)
- Connect Care access unavailable elsewhere
- Integration with PRAIRIE Hub ($57M pandemic preparedness) and other national networks
- Competitive salaries enabled by diversified revenue streams

**Training Pipeline:**
- 150+ highly qualified personnel trained by 2031
- Graduate students (60), postdocs (30), clinical research professionals (40), technicians (20)
- 20% from Indigenous communities and underrepresented groups
- Skills in AI/ML, clinical informatics, biostatistics, regulatory science—globally competitive

**National Curriculum:** Training programs designed for adoption across ACT-AEC, creating national capacity in AI-enabled clinical trials.

#### Biomanufacturing Ecosystem Integration

CTAP positions Alberta as Canada's only end-to-end advanced therapeutics corridor:

**Discovery → Manufacturing → Trials → Market:**
- **PRAIRIE Hub** ($57M CBRF): Pandemic preparedness, vaccine development
- **ACTM**: GMP cell therapy manufacturing (only facility in Western Canada)
- **IsletCore**: International islet distribution, cryopreservation expertise
- **CTAP**: Clinical trial infrastructure to validate advanced therapeutics

**National Significance:** No other Canadian jurisdiction offers this integration. Cell therapies, gene therapies, and advanced biologics developed anywhere in Canada can access Alberta's manufacturing-to-trials infrastructure.

**Vaccine Challenge Capability:** The Challenge Trial Unit's focus on non-airborne pathogens (HCV, enteric infections) enables rapid vaccine efficacy evaluation—advancing Houghton's Nobel Prize-winning HCV vaccine program while creating challenge study expertise applicable to future blood-borne and enteric pathogen threats.

### 5.3 Knowledge Mobilization and National Leadership

#### CTAP as National Network Anchor

CTAP serves as the Western Canadian anchor for multiple national research networks, multiplying Canadian research impact:

**ACT-AEC (Accelerating Clinical Trials - Across Eastern Canada):**
- CTAP extends ACT-AEC's reach to Western Canada
- Shared CRAIDL agents create a national AI-enabled trials capability
- Federated data access across provinces
- Coordinated HQP training and curriculum

**PRAIRIE Hub ($57M CBRF):**
- Comparative Vaccine Platform Program integration
- Challenge trial validation capabilities (non-airborne pathogens)
- HCV vaccine development pathway (Houghton program)
- Virology-to-trials coordination

**RareKids-CAN:**
- Stollery Children's Hospital as Western anchor
- Rare disease trial coordination across Canada
- Genomic characterization pipeline
- National pediatric trial access

**Connect1D Canada:**
- National T1D registry (11,000+ participants)
- Decentralized trial methodologies
- Digital health and remote monitoring protocols
- Patient-partnered governance model

**VITAL (Canadian OHDSI Network):**
- OMOP-transformed Connect Care data joins national federated network
- Canadian cohort discovery capabilities
- International OHDSI network participation (100+ institutions)

#### Open-Source CRAIDL: Democratizing Trial Design Nationally

CRAIDL represents a fundamental shift in clinical trial accessibility:

**National Deployment Strategy:**
- Core agents released under open-source licenses
- Documentation and training materials freely available
- ACT-AEC network sites trained in CRAIDL deployment
- Technical support for Canadian academic institutions

**Democratization Impact:**
- Small centres gain access to sophisticated trial design capabilities
- Indigenous communities can adapt agents for culturally appropriate research
- Rural hospitals can participate in multicentre trials
- Academic investigators without dedicated trial infrastructure can conduct rigorous studies

**International Influence:** Canada positions as a global leader in AI-enabled clinical trials, with CRAIDL methodology informing international standards development.

#### Knowledge Translation to Practice

CTAP's knowledge mobilization strategy ensures research findings translate to improved Canadian healthcare:

**Pathway to Practice:**
1. **Rapid dissemination:** Open-access publications, preprints, policy briefs
2. **Guideline integration:** Partnership with CADTH, CMA, specialty societies
3. **Provincial care standards:** Alberta Health Services pathway development
4. **Patient-facing communication:** Plain language summaries, community presentations

**Health System Transformation:**
- Connect Care integration enables direct translation of trial findings to clinical decision support
- Evidence-to-practice gap reduced through embedded researcher model
- Quality improvement cycles informed by trial evidence
- Provincial health policy informed by Alberta-generated evidence

#### Pan-Canadian Data Federation

CTAP's TRE architecture enables privacy-preserving collaboration across Canadian institutions:

**Federated Learning Capabilities:**
- AI models trained on distributed data without data movement
- Cross-provincial cohort validation
- Multi-site trial coordination
- Canadian health data remains in Canada

**Data Sovereignty:**
- Alberta data residency maintained
- Provincial jurisdiction respected
- Indigenous data sovereignty enforced
- STRAC/NSGRP compliance assured

### 5.4 Summary: CTAP's Contribution to Canadian Research Excellence

CTAP represents a strategic national investment with measurable returns across multiple dimensions:

| Benefit Category | Metric | Target by 2031 |
|-----------------|--------|----------------|
| **Health Impact** | Patients with earlier therapy access | 10,000+ annually |
| **Trial Acceleration** | Average start-up time reduction | 50-70% |
| **Industry Investment** | New pharmaceutical R&D attracted | $100M+ |
| **Economic Activity** | Additional annual research revenue | $6M+ |
| **HQP Development** | Highly qualified personnel trained | 150+ |
| **Indigenous Participation** | Clinical trial enrollment | 15% |
| **Rural Access** | Trial participant reach | 20% |
| **National Network** | Canadian sites with CRAIDL access | 20+ |
| **International Collaboration** | OHDSI network participation | 100+ institutions |

**Unique Canadian Asset:** CTAP creates infrastructure that exists nowhere else in Canada:
- Integration of Canada's largest clinical information system (Connect Care) with AI-enabled research platform
- Only end-to-end advanced therapeutics corridor (discovery → manufacturing → trials → market)
- First Indigenous Clinical Trials Unit in Canada
- Western anchor for national clinical trials network
- Challenge trial capability for pandemic preparedness

**Return on Investment:** The $10.4M CFI investment catalyzes transformation across Canadian health research, with economic returns exceeding investment within 5 years through industry attraction, IP generation, and health system efficiencies.

---

## 6. Capacity for Innovation (Full Development)

### 6.1 HQP Training

**Training Target:** 150+ highly qualified personnel by 2031

| Category                        | Target | Focus Areas                                |
| ------------------------------- | ------ | ------------------------------------------ |
| Graduate students               | 60     | AI/ML, clinical informatics, biostatistics |
| Postdoctoral fellows            | 30     | Trial methodology, data science            |
| Clinical research professionals | 40     | Trial operations, regulatory science       |
| Technicians                     | 20     | Laboratory, biomanufacturing               |

**Equity Target:** 20% from Indigenous communities and underrepresented groups

**Skills Development:**

- AI-enabled trial design
- CRAIDL agent development and deployment
- OMOP and CDISC data standards
- GCP and regulatory science
- Privacy-preserving analytics

**National Curriculum:** Training curriculum designed for national adoption through ACT-AEC network.

### 6.2 Collaboration and Access

#### Core Facility Access Model

CTAP operates as institutional (not PI-centric) infrastructure with:

- Transparent access policies
- Prioritization criteria based on scientific merit and alignment
- Fee-for-service models for sustainability
- Training requirements for users

#### Cross-Disciplinary Integration

All faculties of the College of Health Sciences participate in RCTs. CRAIDL will draw on this wealth of knowledge to suggest study designs and protocols.

#### External Access

- Industry partners (pharmaceutical, biotech, CRO)
- External academics via formal access agreements
- National networks (ACT-AEC, PRAIRIE, RareKids-CAN)

### 6.3 Management and Governance

#### Multi-Tier Governance Structure

| Committee                                     | Chair                    | Responsibility                                                       |
| --------------------------------------------- | ------------------------ | -------------------------------------------------------------------- |
| **CTAP Steering Committee**             | UACT Director            | Strategic direction, policy, priorities                              |
| **Data Access Committee**               | TBD                      | Researcher access, project-level governance, TRE workspace approvals |
| **Operations Committee**                | Program Director         | Day-to-day coordination across cores                                 |
| **CRAIDL Development Committee**        | AI/Computer Science Lead | Agent development, testing, deployment                               |
| **EDI and Indigenous Advisory Council** | Indigenous Co-Chair      | Cultural safety, data sovereignty, equity                            |
| **Scientific Advisory Board**           | External Chair           | External review, national/international perspective                  |

#### Governance Best Practices

- **UK Biobank Access Committee model** for Data Access Committee
- **FinnGen governance** for researcher workspace management
- **ACT-AEC, PRAIRIE Hub, QBI** representation on Scientific Advisory Board

### 6.4 Sustainability Model

CTAP operates as an institutional core-facility infrastructure with a diversified sustainability model:

#### Infrastructure Operating Fund (IOF)

CFI's IOF provides ongoing support for equipment maintenance, technical personnel, and operational costs—the initial sustainability mechanism for CFI-funded infrastructure.

#### Cost-Recovery Services

| Service                                      | Fee Structure                                                                                |
| -------------------------------------------- | -------------------------------------------------------------------------------------------- |
| Biobanking                                   | $35/sample processing + $5-15/year storage                                                   |
| Clinical trial facilities                    | Challenge Trial Unit, Rare Disease Trial Unit, ADI Clinical Research Unit, CIU facility fees |
| Industry feasibility queries                 | $2,500/query                                                                                 |
| TRE workspace provisioning                   | $15,000/study-year                                                                           |
| CRAIDL Agent Access                          | $5,000/study                                                                                 |
| CDISC Transformation                         | $20,000/submission                                                                           |
| Industry clinical trial revenue and overhead | 20% increase in clinical trials would bring $6 million in increased revenue                  |

#### Grant Funding

Ongoing support through Alberta Innovates, CIHR, and NFRF competitions—CTAP infrastructure enables competitive applications across these programs. Increased opportunities to leverage national programs through PRAIRIE Hub, ACT-AEC, RareKids-CAN.

#### Institutional Commitments

The University of Alberta and College of Health Sciences have committed to:

- Providing CTAP operational governance through the **Kipnes Health Research Institute**—CTAP's functional home within the College of Health Sciences
- Allocating and maintaining physical space in the Kipnes Health Research Academy and associated clinical facilities for CTAP operations
- Providing base support for key personnel (Program Director, Operations Manager, Data Architect)
- Integrating CTAP into institutional strategic plans and core-facility frameworks

#### Infrastructure Utilization Efficiency

CTAP's sustainability is strengthened by deliberate infrastructure synergies across clinical trial units—particularly for biologics and cell-based therapies:

**Shared Biologics Infrastructure:** The Pediatric Rare Disease Unit and Vaccine Challenge Unit share substantial infrastructure requirements for advanced therapies. Next-generation vaccines increasingly employ mRNA platforms, viral vectors, and cell-based immunotherapies—the same modalities used in gene and cell therapies for rare diseases. Rather than building separate capabilities, CTAP invests once in:

- **Cold chain logistics** (-80°C/-150°C storage, validated transport) serving vaccine and gene therapy programs
- **Infusion monitoring** (cardiac monitoring, anaphylaxis response) supporting both immunotherapy and cell therapy administration
- **ACTM supply chain** connecting GMP cell manufacturing to clinical trials across disease areas
- **Cytokine surveillance** (POC panels, trained staff) for vaccine reactogenicity and CAR-T safety monitoring

**Utilization Benefits:**

| Efficiency Mechanism | Impact |
|---------------------|--------|
| Equipment pooling | Specialized monitoring deployed across units based on trial schedules |
| Staff cross-training | Biologics-certified nurses support vaccine and rare disease programs |
| Fixed cost distribution | Cold chain and IP pharmacy investments serve larger trial portfolio |
| Scheduling flexibility | Challenge Unit (adult) and Rare Disease Unit (pediatric) operate on complementary schedules |

This convergence means higher equipment utilization rates, reduced per-trial infrastructure costs, and a workforce capable of supporting the full spectrum of advanced therapy trials—from vaccine challenge studies to pediatric gene therapy.

---

## 7. EDI Integration: Access, Community, and Belonging

CTAP's approach to equity, diversity, and inclusion aligns with the University of Alberta's **Access, Community, and Belonging (ACB)** framework, which focuses on the intended outcomes of EDI work. As a Dimensions Charter signatory institution, the University of Alberta commits to embedding equity into research infrastructure, team composition, and research practices.

### 7.1 Team Composition and Inclusive Environment

EDI principles are at the core of CTAP's design:

- Team composition reflects diversity across disciplines, career stages, gender, and backgrounds
- Indigenous scholars, patient partners, and community representatives serve as co-investigators and governance members—not only as advisors
- Inclusive hiring and promotion practices aligned with DoM ACB Guiding Principles
- Mentorship and leadership opportunities for equity-deserving researchers and staff
- Targeted recruitment through diverse professional networks and Indigenous research organizations
- Psychological safety training for all team members, ensuring environments where concerns can be raised without fear of disproportionate consequences

### 7.2 Systemic Barrier Recognition

We recognize systemic barriers in clinical trials and translational research—including under-representation of:

- Women including pregnant women
- Children and adolescents
- 2SLGBTQIA+ people
- Indigenous and racialized communities
- People with disabilities
- Rural and remote populations

These barriers affect both leadership positions and trial participation. CTAP addresses these through intentional infrastructure design, not retrospective accommodation.

### 7.3 Infrastructure Access

CTAP will address barriers through:

- Equity-sensitive design of all infrastructure (physical, digital, cognitive accessibility)
- Accessible consent processes (plain language at Grade 6-8 reading level, multiple languages, formats)
- Language access: English, French, and Indigenous languages (Cree, Dene, Blackfoot, Michif) via Suite 5
- Participant supports (travel, childcare where permissible)
- Geographic access: Cloud-based TRE enables researchers from rural Alberta and Northern communities to access data without physical presence at U of A or U of C
- Reserved compute resources ("Equity Priority Projects") for underfunded researchers and community-based studies

### 7.4 Research Design: Patient-Oriented Research

CTAP operationalizes CIHR's **Strategy for Patient-Oriented Research (SPOR)**, recognizing patients as partners rather than subjects. This represents a fundamental shift from consultation to collaboration.

**Patient Partnership Model:**

- Patient partners serve as co-investigators with voting rights on steering committees
- Community Advisory Boards (CABs) for each flagship program (MS, Hepatitis C/Vaccines, Cardio-Renal-Metabolic, Rare Disease)
- Patient-identified research priorities incorporated into CRAIDL training data
- Lived Experience Experts (LEEs) on governance committees with compensated participation
- Patient co-authorship on publications arising from CTAP research

**SPOR Alignment:**

| SPOR Principle                | CTAP Implementation                                                           |
| ----------------------------- | ----------------------------------------------------------------------------- |
| Patients as partners          | Co-investigators, CAB members, governance roles                               |
| Patient-identified priorities | Priority-setting exercises per flagship; patient-validated outcome measures   |
| Multidisciplinary teams       | Health researchers + patients + community members + AI experts                |
| Culturally safe engagement    | Indigenous co-design, ICTU collaboration, community-led knowledge translation |
| Diverse patient inclusion     | Explicit targets: 15% Indigenous, 20% rural/remote participation              |

### 7.5 Indigenous Clinical Trials: ICTU Collaboration

CTAP benefits from UACT's **Indigenous Clinical Trials Unit (ICTU)**—Canada's first Indigenous-designed clinical trials infrastructure. ICTU enables self-determination in health research innovation and ensures Indigenous communities lead research that affects them.

**CTAP-ICTU Integration:**

- ICTU consultation required for all studies involving Indigenous populations
- Indigenous Data Steward role embedded in TRE governance with IAM-enforced access controls
- Culturally safe protocols co-designed with Indigenous communities before ethics submission
- Indigenous health navigators supporting participant recruitment and retention
- Community benefit agreements ensuring research results return to communities first
- Indigenous language options (Cree, Dene, Blackfoot, Michif) for consent and participant materials

**OCAP Principles (Ownership, Control, Access, Possession):**
The TRE architecture technically enforces OCAP through AWS IAM roles:

- Indigenous data tagged and segregated within Zone 2
- Access requires digital approval from designated Indigenous governing body
- Data custody determined by community preference, not institutional convenience
- Infrastructure transforms from "passive storage" to "active enforcer of Indigenous rights"

### 7.6 AI Equity: Bias Audit Framework

CRAIDL agents undergo systematic bias auditing to ensure AI tools do not perpetuate or amplify health disparities.

**Pre-Deployment Bias Testing:**

- All models tested for performance across demographic groups before release
- Fairness metrics: equal opportunity, demographic parity, calibration across subgroups
- Validation datasets include diverse populations, not just well-represented majority groups
- Community advisory review of AI-generated outputs for cultural appropriateness

**Algorithmic Accountability by Agent:**

| Agent                 | Equity Risk                                  | Mitigation                                              |
| --------------------- | -------------------------------------------- | ------------------------------------------------------- |
| Protocol Agent        | Exclusion criteria bias; underrepresentation | Community review of eligibility criteria; SGBA+ prompts |
| Data Management Agent | Training data underrepresentation            | Diverse validation datasets; stratified testing         |
| Events Agent          | Differential adverse event detection         | Stratified performance testing across demographics      |
| Ethics Agent          | Cultural bias in consent language            | Indigenous/community review; plain language validation  |
| Regulatory Agent      | Access barriers to regulatory knowledge      | Multi-language support; accessibility features          |

**Ongoing Monitoring:**

- Post-deployment surveillance for performance drift
- Annual equity audits with public reporting
- Feedback mechanisms for researchers to report bias concerns
- Iterative retraining based on identified gaps

### 7.7 Sex, Gender, and SGBA+ Integration

All CTAP trials incorporate **Sex and Gender-Based Analysis Plus (SGBA+)**, a CIHR mandatory requirement recognizing that sex (biological) and gender (social) influence health outcomes.

**SGBA+ Framework:**

- CRAIDL Protocol Agent includes SGBA+ prompts during protocol generation
- Sex-disaggregated data collection standard for all trials
- Gender-diverse recruitment strategies with attention to 2SLGBTQIA+ health needs
- Analysis plans pre-specified for sex/gender subgroup analyses
- Reporting templates include SAGER (Sex and Gender Equity in Research) guidelines

### 7.8 Broader Impact and Accountability

By extending AI-enabled trial capabilities beyond oncology and well-resourced academic centres, CTAP will help address the current concentration of evidence and broaden the populations who benefit from AI-enhanced clinical research.

**Accountability Mechanisms:**

- Annual equity metrics publicly reported (team composition, trial participation, HQP diversity)
- Community Advisory Board feedback incorporated into governance decisions
- Longitudinal tracking against 2031 targets (15% Indigenous participation, 20% rural, 20% HQP diversity)
- Independent equity audit at Years 2 and 5

**Key Quote:**

> "We are not just building a server farm; we are building a socio-technical system. By embedding EDI principles directly into the code (via IAM roles and bias auditing) and the governance (via Patient Partners), CTAP will ensure that the benefits of AI in healthcare are shared equitably across all populations, particularly those historically harmed or excluded by medical research."

---

## 8. Feasibility and Risk

### 8.1 Operational Feasibility

CTAP is intentionally built on existing, operational strengths, significantly de-risking feasibility:

| Component                        | Current Status                               | CTAP Role                                                       |
| -------------------------------- | -------------------------------------------- | --------------------------------------------------------------- |
| **UACT/CTO**               | Operational; coordinated trial front door    | Expansion and AI integration                                    |
| **Canadian VIGOUR Centre** | 50+ trials designed and delivered            | Ground-truth data for CRAIDL training                           |
| **Kipnes Institute**       | Active; Health Research Translation Unit     | Governance and operational framework                            |
| **CBSR**                   | Functioning facility with external clients   | Expansion and EMR integration                                   |
| **ACTM**                   | Operational GMP cell therapy                 | Expansion and trial integration                                 |
| **Amii/CIFAR AI Chairs**   | World-class AI expertise                     | CRAIDL co-development                                           |
| **GlycoNet, TMIC, Cryo-EM** | CFI-funded core facilities                   | Pipeline connection to trials                                   |
| **AWS clean room/DARC**    | Functioning secure data environments         | TRE deployment                                                  |
| **CRAIDL Prototype**       | Investigator-developed; 4 agents operational | Enterprise scaling, Connect Care integration, multi-user access |

**Clinical Proof-of-Concept:**
The efficacy of the proposed data architecture is validated by the **GEMINI (General Medicine Inpatient Initiative)** network, a core CTAP partner. Using a similar integrated data backbone, GEMINI deployed the "Chartwatch" AI early warning system at St. Michael's Hospital, achieving a **26% reduction in unexpected deaths** (published in *CMAJ*). This demonstrates that the proposed integration of clinical data, trusted research environments, and AI analytics is not theoretical—it is a proven pathway to improved health outcomes.

**Phased Implementation:** Early wins (improved trial start-up metrics, initial CRAIDL agent deployment, integrated trial-biobank workflows) achievable within first 18-24 months.

### 8.2 Technical Feasibility

#### CRAIDL Development

**Approach:**

- Incremental deployment starting with lower-risk applications
- CVC's 50+ trial templates as ground truth for training and validation
- Close partnership with Amii for technical guidance

**Risk Mitigation:**

- Context-specific validation protocols
- Human-in-the-loop evaluation systems
- Iterative refinement based on real-world performance metrics

#### Data Integration

**Connect Care Integration:**

- Bulk extract pathway (weekly/daily) for population analytics
- FHIR API pathway (real-time) for enrolled participants
- Platform-level AHS data governance agreement (not per-study)

**OMOP Implementation:**

- Leverages foundational work funded through VITAL/GEMINI project
- Reduces implementation risk and accelerates deployment

### 8.3 Risk Registry

#### Operational Risks

| Risk                                | Likelihood | Impact | Mitigation                                               |
| ----------------------------------- | ---------- | ------ | -------------------------------------------------------- |
| Infrastructure procurement delays   | Medium     | High   | Phased implementation, early engagement with procurement |
| Workforce recruitment/retention     | Medium     | High   | Competitive salary, training programs  |
| Connect Care integration complexity | Medium     | Medium | Dedicated integration team, early proof-of-concept       |

#### Technical Risks

| Risk                           | Likelihood | Impact | Mitigation                                                                                                             |
| ------------------------------ | ---------- | ------ | ---------------------------------------------------------------------------------------------------------------------- |
| Heterogeneous data integration | Medium     | Medium | OMOP CDM adoption, dedicated engineering resources                                                                     |
| CRAIDL performance variability | Medium     | Medium | Context-specific validation, human-in-the-loop                                                                         |
| Novel agentic AI design        | Medium     | Medium | **Prototype validates core methodology**; CVC templates as ground truth; Amii software contract for enterprise development |

#### Strategic Risks

| Risk                                          | Likelihood | Impact | Mitigation                                                                                                                                                                  |
| --------------------------------------------- | ---------- | ------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Evolving regulatory environment               | Medium     | Medium | Modular platform design, active Health Canada engagement                                                                                                                    |
| Regulatory acceptance of AI-generated content | High       | High   | **Human-in-the-loop mandatory review**; Agents defined as "assistants" not authors; Validation against ground-truth CVC templates; Audit trails for all agent outputs |
| AI regulatory restrictions (emerging)         | Medium     | High   | TRE sandboxing; Zone 2 audit trails; model registry with version control; human oversight mandatory; see §8.3.1                                                            |
| Funding sustainability                        | Low        | High   | Diversified revenue, institutional commitment                                                                                                                               |
| Training data access                          | Medium     | Medium | Open-source requirements, data sharing agreements                                                                                                                           |

#### 8.3.1 Navigating AI Regulatory Evolution

The regulatory landscape for AI in healthcare is evolving rapidly. Health Canada's "Good Machine Learning Practice" guidance (2021), the FDA's evolving SaMD (Software as a Medical Device) framework, and anticipated AI-specific regulations will require infrastructure capable of:

- **Algorithm Auditing**: Tracking which AI models were used, on what data, with what parameters
- **Explainability**: Documenting the reasoning chain for AI-assisted decisions
- **Performance Monitoring**: Detecting model drift and bias emergence over time
- **Sandboxed Development**: Testing new AI capabilities without risking patient safety

**Suite 4 as Regulatory Enabler:**

The Three-Zone TRE architecture is designed for regulatory compliance by construction:

- **Zone 2 (Controlled Processing)**: All AI agent operations logged with full audit trails meeting ICH E6(R3) requirements
- **Output Airlocks**: Every AI-generated output reviewed before researcher access—human-in-the-loop by design, not as afterthought
- **Model Registry**: Version control for all deployed CRAIDL agents, with rollback capability and performance baselines
- **Sandbox Environments**: New agent versions tested in isolated environments with synthetic data before production deployment

This architecture transforms regulatory compliance from burden to capability—allowing Canada to confidently deploy AI in clinical trials while maintaining the oversight that public trust requires. Rather than fearing emerging AI regulation, CTAP is positioned to *enable* effective regulation by providing the infrastructure that makes AI governance practical.

### 8.4 Research Security Compliance

CTAP will comply fully with federal research security frameworks, with the TRE and centralized biobanking infrastructure serving as automatic compliance mechanisms:

**Policy on Sensitive Technology Research and Affiliations of Concern (STRAC):**

- CTAP's use of AI, Advanced Data Computing, and Large-Scale Analytics places this work in Sensitive Technology Research Areas (STRA)
- No team member may hold affiliations with Named Research Organizations (NRO) linked to foreign military/security apparatuses
- All personnel undergo STRAC screening via the UofA Safeguarding Research Office (SRO)

**National Security Guidelines for Research Partnerships (NSGRP):**

- Partnerships with private-sector entities (AWS, equipment vendors, pharma sponsors) undergo rigorous risk assessment
- IP and data protection mechanisms reviewed before partnership agreements
- SRO consultation required for all partnerships involving data access or technology transfer

**Partnership Vetting:**
All CTAP partnerships are reviewed in consultation with the UofA Safeguarding Research Office:

- **AWS**: Canadian region, encryption key custody, data residency commitments
- **Equipment Vendors**: NSGRP risk assessment, IP protection review
- **Pharma Sponsors**: Data access scope, publication rights, IP ownership
- **International Collaborators**: NRO screening, data sharing limitations, federated-only access where appropriate

### 8.5 Timeline

**Estimated Timeframe:** 4-5 years from initiation to fully operational platform

**Early Milestones (18-24 months):**

- Digital trial-operations platform deployed
- Modest CBSR expansion completed
- Initial AWS integrations operational
- First CRAIDL agent deployments

---

## 9. Cross-Document Alignment Matrix

This matrix shows where each strategic element appears across CTAP documents:

| Strategic Element                 | MASTER Section | RTA Section       | Full App | Exec Brief | Suite Briefs     | Include File               |
| --------------------------------- | -------------- | ----------------- | -------- | ---------- | ---------------- | -------------------------- |
| **Competitive Opportunity** | §1            | §2.1-2.2         | TBD      | §2        | -                | -                          |
| **Why Now**                 | §2.1          | §2.4 (condensed) | TBD      | §3        | -                | `why_now.md`             |
| **Why UAlberta**            | §2.2          | §2.4 (condensed) | TBD      | §3        | -                | `why_ualberta.md`        |
| **Why This Team**           | §2.3          | §3               | TBD      | §4        | -                | `team_overview.md`       |
| **Why This Approach**       | §2.4          | §2.3-2.4         | TBD      | §5        | -                | -                          |
| **Core Objectives**         | §3            | §2.5             | TBD      | All        | All              | `objectives.md`          |
| **Five Domains Overview**   | §4.1          | §2.3             | TBD      | §5        | -                | `project_overview.md`    |
| **Domain Descriptions**     | §4.2          | §6               | TBD      | -          | Each suite       | `suite_*_description.md` |
| **Integration Points**      | §4.3          | §2.3             | TBD      | -          | -                | -                          |
| **Flagship Programs**       | §4.4          | §2.6             | TBD      | -          | Relevant         | -                          |
| **Benefits Summary**        | §5            | §5               | TBD      | §6        | -                | `benefits_summary.md`    |
| **Health/Social Benefits**  | §5.1          | §5               | TBD      | §6        | -                | -                          |
| **Economic Benefits**       | §5.2          | §5               | TBD      | §6        | -                | -                          |
| **Knowledge Mobilization**  | §5.3          | §5               | TBD      | §7        | -                | -                          |
| **HQP Training**            | §6.1          | §7 (brief)       | TBD      | §8        | -                | -                          |
| **Collaboration/Access**    | §6.2          | §7               | TBD      | -          | -                | -                          |
| **Governance**              | §6.3          | §7               | TBD      | §7        | -                | -                          |
| **Sustainability**          | §6.4          | §7               | TBD      | §7        | -                | `funding_summary.md`     |
| **EDI**                     | §7            | §4               | TBD      | §8        | -                | -                          |
| **Feasibility**             | §8.1-8.2      | §2.8             | TBD      | -          | -                | -                          |
| **Risks**                   | §8.3          | §8.7             | TBD      | -          | -                | -                          |
| **Research Security**       | §2.4, §8.4   | §8.4             | TBD      | §3        | Suite 2, Suite 4 | -                          |
| **Regulatory Compliance**   | §2.4, §4.3   | §3A              | TBD      | -          | Suite 4          | -                          |

---

## 10. Document Extraction Guide

### 10.1 RTA Extraction Rules

| RTA Section                  | Page Limit     | MASTER Source       | Extraction Notes                         |
| ---------------------------- | -------------- | ------------------- | ---------------------------------------- |
| Strategic Alignment          | 1-2 paragraphs | §1.1, §2.1, §2.2 | Highly condensed; institutional focus    |
| Research Plan                | 3 pages        | §1, §4, §4.4     | Focus on opportunity, domains, flagships |
| Research Team                | 1 page         | §2.3               | Key contributors only                    |
| EDI                          | 1-2 paragraphs | §7                 | Principles and commitments               |
| Benefits                     | 1 page         | §5                 | Condensed to key impacts                 |
| Infrastructure Justification | 3 pages        | §4.1, §4.2        | Suite summaries                          |
| Sustainability               | 2 pages        | §6.3, §6.4        | Governance and O&M                       |

### 10.2 Full Application Extraction Rules

Full Application has no page limits on most sections—expand from MASTER:

- Full competitive landscape (§1.2)
- Complete team descriptions (§2.3)
- Detailed domain descriptions (§4.2)
- Complete risk registry (§8.3)
- Detailed sustainability projections (§6.4)

### 10.3 Brief Extraction Rules

| Brief                     | Audience                          | Focus                      | MASTER Sources               |
| ------------------------- | --------------------------------- | -------------------------- | ---------------------------- |
| **Executive Brief** | Institutional leadership, funders | Strategic vision, benefits | §1, §2, §3, §5           |
| **Suite Briefs**    | Technical stakeholders            | Domain-specific            | §4.2 (relevant suite) + §3 |

---

## Appendix: Source Documents

| Document                | Location                                                          | Role                               |
| ----------------------- | ----------------------------------------------------------------- | ---------------------------------- |
| RTA (current)           | `derived/rta/rta.md`                                              | Application document (constrained) |
| Suite 1                 | `core/suites/suite_1_clinical_trials_infrastructure.md`           | Technical specification            |
| Suite 2                 | `core/suites/suite_2_living_biorepository.md`                     | Technical specification            |
| Suite 3                 | `core/suites/suite_3_translational_science.md`                    | Technical specification            |
| Suite 4                 | `core/suites/suite_4_data_platform.md`                            | Technical specification            |
| Suite 5                 | `core/suites/suite_5_remote_decentralized_trials.md`              | Technical specification            |
| CFI Evaluation Criteria | `reference/competition_instructions/cfi_evaluation_criteria.md`   | Assessment framework               |
| CFI Proposal Outline    | `reference/competition_instructions/cfi_proposal_outline.md`      | Submission structure               |
| Google Sheets           | CFI_CTAP_Data                                           | Budget, participants, equipment    |

---

*Last updated: 2026-01-06*
*Version: 1.2 (SDRE integration)*
