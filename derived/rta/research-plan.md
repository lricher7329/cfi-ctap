# Research Plan

> **Source**: Google Doc `Richer_Research-Plan_2026-01-25`
> **Doc ID**: `1iuEJfiDXvEGg8wC_iEVdJJ-mLTuHryA1ePOECu7aJ_c`
> **Last synced**: 2026-01-25

---

## The Opportunity: Accelerating Translation from Discovery to Patient Impact

The primary bottleneck in transforming scientific breakthroughs into patient benefit is no longer discovery—it is validation. Advances in AI, molecular biology, and biomanufacturing have dramatically expanded pipelines of vaccines, biologics, and cell-based therapies. Yet clinical trials remain manual, fragmented, and slow. Operational delays in protocol development, ethics review, patient identification, data access, and biospecimen coordination now represent the dominant constraint on clinical translation, extending timelines by years and contributing to widespread trial failure.

The University of Alberta is uniquely positioned to address this challenge. It combines province-wide health system integration through Connect Care, spanning 682 sites and 4.4 million Albertans, with internationally recognised AI leadership through Amii and more than ten CIFAR AI Chairs. These assets are complemented by over $400 million in discovery and translational infrastructure, including PRAIRIE Hub, Alberta Cell Therapy Manufacturing, the Li Ka Shing Institute of Virology, SPP-ARC/Cryo-EM, GlycoNet, and TMIC, as well as proven large-scale AI deployment in clinical settings, such as AI scribe implementation across multiple Alberta emergency departments. No other Canadian institution brings together unified health data, advanced biomanufacturing, structural and systems biology, and production-scale AI within a single ecosystem.

The **Clinical Trials Acceleration Platform (CTAP)** is designed to convert this convergence into a coherent, **AI-native clinical trials infrastructure**. CTAP is not a collection of tools but an integrated platform that embeds AI into the foundational operations of trial design, recruitment, execution, and analysis, transforming how rapidly discoveries move from bench to bedside.

## From Translational Friction to Integrated Acceleration

Translating a laboratory discovery into patient benefit remains a 10–15-year process, dominated by regulatory, operational, and recruitment delays rather than scientific uncertainty. A representative example is the ongoing taurine supplementation trial for Long COVID. Gavin Oudit's team identified that SARS-CoV-2 infection depletes taurine, a molecule essential for mitochondrial function and cellular energy metabolism. Pre-clinical studies demonstrated that taurine supplementation restores mitochondrial activity and normalises cellular metabolism. Despite strong biological rationale and a low-risk intervention, it has taken 18 months to enrol the first patient under conventional trial infrastructure.

*CTAP fundamentally alters this trajectory.* Protocol development, which typically takes months, is compressed to weeks through AI-enabled drafting, feasibility assessment, and the generation of regulatory-ready documentation. Patient identification shifts from manual chart review to real-time cohort discovery across the provincial health system. Biospecimen management moves from static frozen samples to an EMR-linked Living Biorepository that enables longitudinal, outcome-aligned sampling. Data capture becomes fully digital and voice-first, producing structured, analysis-ready data at the point of care. Collectively, these capabilities transform a fragmented process into an integrated pathway from discovery to first-in-human evaluation.

CTAP builds on and extends existing provincial and national initiatives, including Alberta Fast-track to Accelerate Start-up of clinical Trials (Alberta FAST) and the VITAL/GEMINI federated analytics platforms, positioning Alberta as a national leader in rapid, AI-enabled trial activation.

## The Integrated Infrastructure Model

CTAP operates through four tightly coupled domains unified by a three-zone Trusted Research Environment (TRE).

First, **CRAIDL provides AI-enabled trial operations**. A suite of specialised AI agents supports protocol development, ethics submissions, regulatory documentation, safety monitoring, data management, and analysis. These agents operate in a human-in-the-loop model, where all outputs are reviewed and approved by experts, reducing startup timelines by an estimated 40–50% while maintaining regulatory rigour.

Second, the **Living Biorepository** transforms biospecimen management from passive storage into an active discovery engine. Real-time EMR linkage enables automated outcome annotation, consent-aware sample routing, and longitudinal integration with clinical events, dramatically increasing the scientific value of each collected sample.

Third, the **Trusted Research Environment** provides the secure backbone for all trial activity. Building on prior institutional investment, the three-zone architecture separates identifiable data, protected AI processing, and de-identified research outputs. CTAP extends this model with a dedicated Trials Zone designed to meet Health Canada Division 5 and ICH E6(R3) requirements. Critically, this architecture can enable Indigenous data sovereignty in practice: custodianship and access control can be governed by Indigenous partners through formal agreements, addressing the absence of Indigenous identifiers in existing health systems and supporting OCAP-aligned governance.

Fourth, **translational integration** connects clinical trials directly to the University of Alberta's core facilities and biomanufacturing assets. Trials are no longer isolated from metabolomics, glycomics, proteomics, imaging, or GMP manufacturing. Instead, CTAP provides standardised interfaces that align protocols, data flows, and quality systems across discovery, manufacturing, and clinical execution.

*These domains are interdependent.* Without a Living Biorepository, biospecimens lose their linkage to outcomes. Without a TRE, data access delays stall research for months. Without CRAIDL, investigators repeatedly rebuild protocols and documentation from scratch. Without translational integration, core facilities remain siloed. Without trial innovation tools, rural and Indigenous communities are excluded from participation. CTAP addresses these failures as a unified system rather than as isolated fixes.

### Infrastructure Designed for Northern and Rural Reality

CTAP is explicitly designed for operational realities beyond urban academic centres. Northern and Indigenous research contexts impose distinct constraints that conventional digital platforms fail to address. Future studies, such as the Haemophilus influenzae type A vaccine trial in Nunavut, demonstrate both the feasibility of clinical research in these settings and the need for infrastructure that tolerates intermittent connectivity, limited hardware, and constrained staffing.

Previous mobile health deployments in similar contexts failed because they assumed continuous connectivity and imposed workflows that increased the burden on frontline teams. CTAP adopts a different design philosophy. The TRE supports store-and-forward data capture during connectivity windows. Telehealth and data collection kits prioritise reliability, durability, and ease of use over feature richness. This is infrastructure built for real-world conditions, enabling equitable participation across rural, remote, and Indigenous communities.

## Projects Enabled

**Types of Clinical Trials Enabled:** CTAP infrastructure enables multiple categories of clinical research across the translational continuum.

- **First-in-Human and Challenge Trials:** CTAP supports early-phase and controlled human infection studies through a dedicated Vaccine Challenge Trial Unit focused on non-airborne pathogens (blood-borne and enteric). This strategic focus—aligned with Houghton's Nobel Prize-winning hepatitis C research—enables accelerated vaccine efficacy evaluation while avoiding duplication of airborne pathogen facilities elsewhere in Canada. Integrated biospecimen and data capture support controlled human infection model protocols for HCV and enteric vaccine candidates.

- **Novel Therapies including Cell and Gene Therapy Trials:** Integration with Alberta Cell Therapy Manufacturing enables autologous and allogeneic cell and gene therapy trials with full GMP alignment. The Pediatric Rare Disease Unit at the Stollery Clinical Investigation Unit anchors national networks for rare disease and gene therapy trials requiring long-term clinical and biospecimen follow-up. Critically, the Challenge Unit and Rare Disease Unit share substantial biologics infrastructure—cold chain logistics, infusion monitoring, cytokine surveillance, and ACTM supply chain coordination—as next-generation vaccines increasingly employ the same mRNA, viral vector, and cell-based modalities used in gene therapies. This convergence achieves higher equipment utilization and reduced per-trial costs across both programs.

- **Biomarker-Driven Trials:** CTAP enables trials in which participant selection, treatment assignment, or outcome assessment is guided by predefined biological markers reflecting disease biology or therapeutic response. Integration with the Living Biorepository supports longitudinal, outcome-linked biospecimen analysis, enabling efficient precision-medicine studies with improved biological signal detection.

- **Decentralised and Pragmatic Trials:** CTAP supports real-world and decentralised trial designs through remote data capture, patient-reported outcomes, and EMR linkage. Platforms such as Connect1D Canada (Senior) demonstrate scalable home-based data collection, while Trial Innovation Tools extend participation to rural, northern, and Indigenous communities using store-and-forward telehealth and voice-first documentation (Clark).

### Representative Flagship Programs:

- **Applied AI Innovation (PHAIR Lab) and Digital Health:** Clinical AI development, validation, and deployment, generating implementation science and real-world evidence (Mitchell, Abdalla, Ferrera, and Clark)

- **Long COVID Translational Pipeline:** Actively enrolling taurine trial (NCT06721949) demonstrating CTAP acceleration from bench to bedside (Richer, Oudit)

- **Hepatitis C Vaccine Challenge Trials:** Nobel laureate Houghton's Health Canada-reviewed CHIM protocols (Houghton)

- **Precision Cardio-Renal-Metabolic:** Connect1D registry, Alberta Diabetes Institute innovations, Canadian VIGOUR Centre pragmatic trials (Ezekowitz, Senior, Acker)

- **Pediatric Rare Disease (RareKids-CAN):** Stollery Phase I capability, WCHRI Translational Genomics Hub, national data coordinating centre (Richer)
