<!-- Suite 4 shared description - used by RTA and suite 4 concept brief -->
<!-- Source of truth: rta/rta.md Section 6 -->

## Suite 4: Data Platform, Secure Environments, AI/HPC

**Budget: $3,155,000**

This suite builds the unified data architecture integrating clinical trial operations with the three-zone Trusted Research Environment, OMOP Common Data Model, and CRAIDL AI agent infrastructure. Building on the University of Alberta's AWS TRE Assessment, Suite 4 positions CTAP alongside international leaders (UK Biobank RAP, All of Us, FinnGen, Genomics England) while serving Canada's unique regulatory context. This is the digital backbone of CTAP.

### Learning Health System Architecture

Suite 4 operationalizes the learning health system model proven by Ontario's GEMINI project, which achieved a 26% reduction in unexpected deaths through the Chartwatch AI early warning system. The architecture enables a closed-loop cycle:

```
Clinical Data → TRE Research → AI Insights → Clinical Action → Outcomes → (loop)
```

CTAP extends this model beyond quality improvement into clinical trials, adding regulatory-grade data capture meeting Health Canada Division 5 and ICH E6(R3) requirements, CDISC transformation for submissions, and prospective trial endpoints—capabilities that GEMINI's retrospective architecture cannot support.

### Three-Zone TRE for Clinical Trials

CTAP implements a three-zone Trusted Research Environment aligned with international best practices (UK Biobank RAP, All of Us, FinnGen) and Alberta's Health Information Act:

* **Zone 1 (Identifiable)**: AHS custodian-controlled; Connect Care extracts, consent registry; no researcher access
* **Zone 2 (Controlled Processing)**: De-identification pipelines, OMOP transformation, CDISC conversion, real-time safety monitoring, AI agent processing; Health Canada GCP/ICH E6(R3) compliant with optional 21 CFR Part 11 for FDA submissions; audit-logged access
* **Zone 3 (Research Environment)**: Trial data lake, OMOP analytics, researcher workspaces; airlock-style output review

Unlike retrospective TREs, CTAP extends the architecture with a "Trials Zone" supporting prospective data capture with regulatory compliance.

**Local Compliance, International Harmonization**: CTAP's compliance framework prioritizes Canadian regulatory requirements (Health Canada Division 5, ICH E6(R3), TCPS2, HIA) while providing optional international harmonization modules (21 CFR Part 11, EU Annex 11) for multi-jurisdictional trials. This tiered approach ensures Alberta-based trials meet all mandatory Canadian standards while seamlessly participating in international collaborations.

**Research Security**: CTAP's TRE serves as security compliance infrastructure, automatically enforcing federal (STRAC/NSGRP) and provincial (HIA) safeguards. Airlock output controls prevent unauthorized data export, while AWS Canada Central region and AHS-controlled encryption ensure Canadian data sovereignty. This positions CTAP as the safest place in Canada to conduct AI-enabled health research.

### OMOP Common Data Model Strategy

* Full ETL pipeline from Connect Care (demographics, conditions, medications, procedures, labs)
* OHDSI tooling (ATLAS, Achilles) for cohort discovery and data quality
* Federation capability with VITAL, OHDSI network (100+ global institutions), PRAIRIE Hub, RareKids-CAN
* **Leveraged Investment**: Builds on VITAL/GEMINI's existing OMOP ETL infrastructure, reducing implementation risk

### Pan-Canadian Integration

* **DHDP Partnership**: Strategic alignment with Digital Health and Discovery Platform ($49M+ federal investment) for federated learning across 97 consortium partners
* **Selective Use Cases**: Rare disease multi-provincial feasibility, AI biomarker development, MS cell therapy trials
* **Standards Leadership**: CTAP's OMOP expertise positions Alberta to influence national data harmonization

### Infrastructure Components

* **On-Premises Secure Data Environment** - Compute and storage nodes tied to SDRE/RDSS for Zone 2/3 hosting
* **Security Infrastructure** - Networking, firewalls, VPN, zero-trust identity management (NIST CSF 2.0 aligned)
* **Core Clinical Trial Data Platform** - EDC, eSource, metadata catalog, APIs, audit trails meeting Health Canada GCP requirements (optional 21 CFR Part 11 for FDA trials)
* **CDISC Transformation Pipeline** - Automated CDASH → SDTM conversion for regulatory submissions
* **GPU-Enabled Secure Compute** - AI development infrastructure for CRAIDL agent development and LLM inference
* **AWS Professional Services** - Architecture, security, and MLOps pipeline consulting (DHDP-compatible)
* **AWS Cloud Credits** - 5-year committed spend for compute, storage, and AI services (Calgary region)
* **BioBank-TRE Integration** - OpenSpecimen API endpoints, FHIR interfaces, Zone 2/3 data flows

### CRAIDL Agent Maturity and Data Access Framework

CRAIDL agents represent a spectrum of development maturity, from production-deployed systems to research prototypes. This transparency ensures reviewers understand that CTAP proposes staged deployment of AI assistants, not autonomous trial design:

| Agent | TRL | Validation Status | Anchor/Ground Truth |
|-------|-----|-------------------|---------------------|
| AI Scribe (Jenkins) | 9 | AHS production (10 EDs) | AHS production operations |
| Protocol Agent | 6 | Prototype validated | CVC 50+ templates, SPIRIT 2025 |
| Data Management Agent | 6 | Prototype validated | SPIRIT 2025, ICH E6(R3), R-Stats |
| Ethics Agent | 6 | Prototype validated | HREB application templates |
| Regulatory Agent | 5 | Design validated | CDISC, ClinicalTrials.gov |
| Events Agent | 4 | Concept demonstrated | EMR safety signal detection |
| Budget & Contracts Agent | 4 | Concept demonstrated | CVC industry benchmarks |
| In Silico Agent | 3 | Research prototype | Meta Flow Matching |

**Staged Deployment:** Production-validated agents (AI Scribe) anchor the system. Prototype-validated agents (Protocol, Data Management, Ethics, Regulatory) deploy in Years 1-2. Earlier-stage agents (Events, Budget, In Silico) deploy in Years 3-4 following validation against CVC's completed trial archive.

| Agent | Data Access | TRE Zone | Compliance |
|-------|-------------|----------|------------|
| Protocol Agent | Literature, prior protocols | Zone 3 | N/A |
| Data Management Agent | CVC templates, OMOP aggregates | Zone 3 | N/A |
| Events Agent | EDC, EMR safety signals | Zone 2 | ICH E6(R3), ICH E2B; optional 21 CFR 11 |
| Ethics Agent | Consent templates, regulations | Zone 3 | TCPS2 |
| Regulatory Agent | CDISC datasets, regulatory DB | Zone 2/3 | CDISC |
| Budget & Contracts Agent | Industry benchmarks, rates | Zone 3 | N/A |
| In Silico Agent | AHS aggregates (behind firewall) | Zone 3 | AHS data governance |

**In Silico Assessment Agent:** Canada's first prospective trial intelligence capability. Operates within a tiered data governance model: population-level queries run in AHS/Research Snowflake returning aggregates; identified cohorts may be shared via TRE with per-study approval; compute-intensive datasets (imaging, multi-omics) move to TRE when Snowflake compute is insufficient. This follows VITAL/GEMINI patterns including the MANTA imaging platform (Libin Cardiovascular Institute). Stress-tests proposed protocols for feasibility, recruitment projections, and endpoint realism before patient enrollment—addressing the 40-60% trial failure rate from over-optimistic eligibility assumptions.

### Connect Care Integration

* **Bulk Extract Pathway**: Weekly/daily batch for population analytics and trial feasibility
* **FHIR API Pathway**: Real-time for enrolled trial participants only
* **Platform-Level Agreement**: AHS data governance covering all CTAP trials (not per-study)
* **Synthetic Control Arms for Rare Disease**: Connect Care's 4.4M records enable regulatory-grade external controls for adult rare disease trials (<5 per 10,000 population) where placebo arms are ethically problematic. For pediatric rare diseases, Alberta's ~950,000 children and the Stollery catchment (~1.6M pediatric population) provide appropriate denominators. Federated queries through RareKids-CAN extend reach nationally for ultra-rare conditions.
* **Connect1d Exemplar**: Type 1 Diabetes registry integration demonstrating multi-source data fusion (patient registry + CGM wearables + EHR)
* **Device Data Integration**: Suite 5's Digital Health Device Validation Program data flows into TRE for validation and analysis (glucose sensors, wound sensors, VR systems, wearables)
* **AI Scribe Integration**: Dr. Ross Mitchell's voice-first clinical documentation platform (deployed in 10 Alberta EDs) enables automated trial visit documentation and consent conversation capture with Alberta-only data residency

### BioBank-TRE Integration

* **OpenSpecimen API**: REST integration with Suite 2's Living Biorepository for specimen-phenotype linkage
* **Zone Mapping**: Identifiable specimen data in Zone 1, de-identification and OMOP transformation in Zone 2, research access in Zone 3
* **FHIR Specimen Resources**: Connect Care integration for sample collection context
* **Dynamic Consent**: Real-time consent status verification before specimen release

### Feasibility Validation

The AWS TRE architecture has been validated through a formal assessment comparing CTAP's proposed infrastructure against international benchmarks:

**International Alignment:**
- **UK Biobank RAP**: Mandatory "bring researchers to the data" model—CTAP mirrors this architecture
- **All of Us (USA)**: Tiered access with OMOP CDM and integrated cohort builder—CTAP implements equivalent capabilities
- **FinnGen (Finland)**: Nationally certified sandbox with no raw data export—CTAP's airlock controls replicate this model
- **Genomics England**: Secure environment linking WGS + NHS records—CTAP extends this to multi-omics + clinical trials

**Platform Readiness:**
- AWS Canada Central region operational with HIA-compatible data residency
- Hybrid cloud + on-premises GPU strategy validated for cost optimization
- OMOP CDM tooling (OHDSI/ATLAS) integration pathway confirmed
- Snowflake complement (not replacement) for structured analytics

**Identified Investments:** The assessment identified five gap areas that CTAP infrastructure will address: formalized governance committees, project-level isolation with cost attribution, real-time data patterns, metadata cataloging, and sustainability funding—all included in CTAP's implementation plan.

### Objectives Supported

- **Objective 1**: AI-augmented trial design reducing startup by 40-50%
- **Objective 4**: FAIR-compliant data with Connect Care linkage via OMOP
- **Objective 5**: CRAIDL agent development and national deployment
- **Objective 6**: Federation with OHDSI, VITAL, PRAIRIE Hub, RareKids-CAN

### Partner Infrastructure

- Amazon Web Services (Calgary region)
- RDSS (Research Data Storage System)
- Amii (Alberta Machine Intelligence Institute) — including Dr. Ross Mitchell's AI Scribe platform
- Connect Care (provincial EMR, 4.4M patients)
- AHS Data Governance

### Sustainability

Industry feasibility queries ($2,500/query), TRE workspace provisioning ($15,000/study-year), CRAIDL agent access ($5,000/study), CDISC transformation ($20,000/submission).
