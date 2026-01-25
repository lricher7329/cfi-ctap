# Infrastructure Request Justification

> **Source**: Google Doc `Richer_Infrastructure-Justification_2026-01-25`
> **Doc ID**: `1bE3fYvLPeIBBN1Dpn2Wu8kF4IOiKg5dMySLk24_i_mU`
> **Last synced**: 2026-01-25

---

**Total Request:** $8,318,879 CAD (including 13% renovation contingency), organised into five integrated infrastructure suites aligned with the platform's clinical, biological, translational, and data domains.

---

## Suite 1: Clinical Trials Participant & Procedure Infrastructure – $1,640,000

This suite strengthens an existing tri-unit clinical research network and establishes specialised units for early-phase, high-risk, and precision trials. The investment leverages Alberta's unique provincial health system: Connect Care (Epic-based EMR spanning 682 AHS sites, 4.4 million Albertans) enables population-scale recruitment and real-time safety monitoring.

**Adult Clinical Investigation Unit (MacKenzie Centre) – $1,200,000:** Point-of-care laboratory ($200K), IP pharmacy automation ($300K), continuous vital signs monitoring ($260K), infusion pumps ($140K), resuscitation equipment ($100K), clinical renovations ($200K).

**Pediatric CIU (Stollery):** No equipment requested; Stollery Foundation in-kind (~$200K) meets needs.

**ADI Clinical Research Unit (Li Ka Shing) – $114,452:** Bariatric-capable furnishings ($41K), IP pharmacy storage ($21K), monitoring systems ($25K), vascular access equipment ($14K), specimen handling ($13K)—enabling trials for underrepresented populations.

**Vaccine Challenge Trial Unit – $340,000:** Western Canada's first academic CHIM unit, focused on non-airborne pathogens (blood-borne, enteric). Aligned with Dr. Houghton's Nobel Prize-winning HCV vaccine research. Non-airborne design saves $650K (reallocated to Suite 4 AI infrastructure) while avoiding duplication of airborne facilities elsewhere in Canada.

**Autonomic Function Laboratory – $261,000:** Tilt testing, beat-to-beat BP monitoring, sudomotor testing, HRV/ECG, cerebral hemodynamics—serving post-COVID, diabetes, and neurodegenerative populations.

**Pediatric Rare Disease Unit – $170,000:** Long-term monitoring and Connect Care integration for gene/cell therapy trials requiring 15+ years of follow-up. Anchors RareKids-CAN participation.

**Shared Biologics Synergy:** The Challenge Unit and Rare Disease Unit share infrastructure for mRNA vaccines, viral vectors, and cell therapies—enabling shared cold chain, infusion monitoring, and ACTM supply chain coordination with higher utilization and reduced per-trial costs.

---

## Suite 2: Living Biorepository – $2,510,000

The Living Biorepository transforms static sample storage into a continuously updated discovery engine with dynamic linkages to participants' evolving health records—enabling retrieval based on outcomes that emerge years after collection.

**Five Core Capabilities:**
1. **Real-Time EMR Linkage:** FHIR API connection to Connect Care enables outcome-based retrieval
2. **Automated Outcome Annotation:** Provincial health records, Vital Statistics, Cancer Registry linkage
3. **Predictive Inventory Management:** AI-driven sample depletion forecasting and aliquoting optimization
4. **Consent-Aware Routing:** Granular consent preferences with automated re-consent workflows
5. **Radiogenomic Integration:** Specimens "twinned" with corresponding imaging data

**Sample Processing & Storage – $2,175,000:** Automated liquid handling ($447K); 20× −80°C freezers with CO₂ backup ($1,107K)—75-90% supporting PRAIRIE Hub; LN₂ vapour-phase storage ($190K); biosafety cabinets/centrifuges ($172K); environmental monitoring ($216K); microscopy/IT ($43K).

**Biobank LIMS – $335,000:** OpenSpecimen (5-year, 21 CFR Part 11 compliant), Connect Care FHIR integration, dynamic consent module, CBSR/APL Biobank migration.

**Institutional Integration:** Integrates with $400M+ in CFI-funded facilities—GlycoNet, TMIC (50,000 samples/year), ACTM, PRAIRIE Hub, APM, Li Ka Shing Institute of Virology.

---

## Suite 3: Translational Science Integration Hub – $555,000

This suite connects clinical trials with institutional omics, imaging, and preclinical platforms through integration rather than duplication—ensuring CFI's prior investments (Cryo-EM, TMIC, GlycoNet, CBSR) flow into clinical validation pathways.

**Imaging Integration (PAMRC) – $250,000:** 10 Gbps secure link to TRE; NVMe storage + LORIS deployment; Orthanc research PACS ($50K); DICOM-to-OMOP mapping ($40K). Rawdiomics architecture preserves CT sinograms and MRI k-space for frontier imaging AI research.

**Cold-Chain & Quality Systems – $200,000:** Standardised logistics (Credo Cubes, data loggers, validated containers) ensuring sample integrity across decentralised sites—critical for biologics where temperature excursions invalidate investigational products.

**AI/ML Development – $75,000:** Six CRAIDL workstations (2 at PAMRC for imaging AI; 4 at Kipnes for clinical agents).

**Collaboration Infrastructure – $30,000:** Hybrid conferencing with real-time translation for remote community participation.

---

## Suite 4: Data Platform, Secure Environments, and AI/HPC – $1,988,000

This suite delivers a unified digital backbone linking trials, biorepository, and AI-enabled analytics. The platform builds on $850K secured AWS/institutional investment ($350K direct + $500K in-kind credits supporting AI Scribe across 10 Alberta EDs), with $500K+ additional credits in discussion.

**Clinical Trials Platform – $1,218,000:** 21 CFR Part 11-compliant EDC (3-year); AWS TRE infrastructure; Bedrock reserved AI capacity; ProServe consulting; zero-trust networking.

**Per-Trial Cost Model:** Genomics ~$24K/year; Imaging ~$20K/year; Standard ~$8K/year.

**Data Integration – $120,000:** OpenSpecimen, Connect Care FHIR, AHS Snowflake, SDRE orchestration.

**CRAIDL AI Agent Software Contract – $650,000:** Contracted development of 8 production-ready clinical trial AI agents through Amii, with perpetual institutional licenses. Deliverables: Protocol, Data Management, Ethics, Regulatory, Statistical, Events, Budget, and Imaging agents—each with defined acceptance criteria and source code delivery. Amii CEO Cam Linke's letter of support confirms deliverables, perpetual licensing, and SDRE compute access. This investment creates Canada's first dedicated clinical trials AI infrastructure.

---

## Suite 5: Trial Innovation Tools and Wearables – $376,000

This suite enables decentralised, patient-centric trials—critical for equity objectives: 15% Indigenous and 20% rural participation targets.

**eConsent Platform – $180,000:** REDCap/DocuSign → TRE integration ($60K); Pediatric Assent Orchestrator ($40K); Indigenous Language Module—Cree, Blackfoot, Dene, Michif ($40K); CRAIDL/AI Scribe integration ($40K). AI Scribe's voice-first documentation creates regulatory-compliant consent audit trails; local data processing addresses Indigenous data sovereignty requirements.

**Remote Monitoring – $201,000:** Telehealth kits for 20 rural/Indigenous sites ($100K) with store-and-forward capability; tablets and kiosks ($100K); study smartphones ($20K); wearables (ECG, BP, actigraphy, CGM).

**Device Validation – $175,000:** Integration APIs ($75K), validation protocol library ($25K), reference devices ($75K)—positioning CTAP as the clinical validation hub for UAlberta's digital health innovations.

**Pediatric Rare Disease:** Caregiver-first design including multi-caregiver access, pediatric assent orchestration, and home procedures logistics.
