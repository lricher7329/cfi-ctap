# Suite 4: Data Platform, Secure Environments, AI/HPC

## Comprehensive Technical Specification

**Budget: $3,455,000 CAD** (includes $650,000 CRAIDL AI Agent Software Development Contract funded via non-airborne CHIM reallocation)

**Version:** 2.0
**Date:** January 2026
**Status:** Draft for CFI IF2027 RTA

---

## Executive Summary

Suite 4 establishes the digital backbone of the Clinical Trials Acceleration Platform (CTAP), creating Canada's first AI-native clinical trials data infrastructure. This suite addresses a critical gap: while the University of Alberta possesses exceptional discovery assets (Cryo-EM, TMIC, GlycoNet) and manufacturing capabilities (ACTM, CMPC), there is no unified data architecture that connects these upstream investments to downstream clinical validation.

Suite 4 integrates three previously fragmented components:

1. **Trusted Research Environment (TRE)** - Secure, privacy-preserving analytics adapted for prospective clinical trials. Already partially deployed in AWS Cloud with expert assistance from AWS ProServe (~$500k in -kind)
2. **OMOP Common Data Model** - Canonical representation enabling federation with OHDSI, VITAL, and international networks
3. **CRAIDL AI Agent Framework** - Seven coordinated AI agents with defined data access patterns, TRE zone assignments, and regulatory compliance

The result is a unified data platform where trial data flows seamlessly from enrollment through regulatory submission, biospecimens link to evolving clinical outcomes, and AI agents accelerate every stage of the RCT lifecycle.

### Institutional Investment Foundation

CTAP's TRE infrastructure builds on substantial prior institutional investment, demonstrating proven technology and reducing implementation risk:

| Investment | Amount | Type | Status | Purpose |
|------------|--------|------|--------|---------|
| TRE Architecture & Setup | $350,000 | Direct | Deployed | Three-zone architecture, security controls, AHS integration |
| AWS Credits (UofA/Amii) | $500,000 | In-kind | Active | AI Scribe development, TRE compute, pilot operations |
| AWS Credits (CTAP) | $500,000+ | In-kind | In discussion | CTAP infrastructure expansion, production deployment |
| **Total Secured** | **$850,000** | | | |
| **Total (incl. in discussion)** | **$1,350,000+** | | | |

This foundation demonstrates:

1. **Proven technology stack** - Architecture validated in production with AI Scribe across 10 Alberta emergency departments
2. **Institutional commitment** - University of Alberta and Amii have invested substantially before CFI request
3. **CFI as scale investment** - Request extends proven infrastructure to clinical trials, not funding experiments
4. **Reduced risk** - TRE concepts operational; CFI funds production-grade expansion

**Leverage Ratio:** CFI's $550K AWS infrastructure request builds on $850K secured investment ($350K direct + $500K in-kind credits) with $500K+ additional credits in discussion (1.5:1 secured leverage, 2.5:1 including credits in discussion).

---

## 1. Unified Data Architecture

### 1.1 Design Principles

CTAP's data architecture is built on five foundational principles:

1. **Trial-Centric Design** - Unlike retrospective research platforms, CTAP is optimized for prospective clinical trials with regulatory-grade data capture
2. **Privacy by Architecture** - Three-zone TRE model ensures identifiable data never leaves custodian control
3. **AI-Native Integration** - CRAIDL agents are first-class citizens with defined access patterns, not afterthoughts
4. **Federation-Ready** - OMOP CDM enables seamless participation in national and international networks
5. **Local Compliance, International Harmonization** - Health Canada Division 5, ICH E6(R3), TCPS2, and HIA requirements as primary compliance, with optional international modules (21 CFR Part 11, EU Annex 11) for multi-jurisdictional trials

### 1.2 Data Flow Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           CLINICAL DATA SOURCES                              │
├─────────────────┬─────────────────┬─────────────────┬───────────────────────┤
│   Connect Care  │     REDCap      │   Lab Systems   │   Trial EDC           │
│   (4.4M pts)    │   (prospective) │   (LIMS)        │   (eSource)           │
└────────┬────────┴────────┬────────┴────────┬────────┴───────────┬───────────┘
         │                 │                 │                     │
         ▼                 ▼                 ▼                     ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                    ZONE 1: IDENTIFIABLE DATA (Custodian Control)            │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │  AHS Data Governance  │  Consent Registry  │  Identity Resolution   │    │
│  └─────────────────────────────────────────────────────────────────────┘    │
└────────────────────────────────┬────────────────────────────────────────────┘
                                 │ De-identification Pipeline
                                 ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                    ZONE 2: CONTROLLED PROCESSING                            │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐    │
│  │ OMOP CDM     │  │ CDISC        │  │ Safety       │  │ AI Agent     │    │
│  │ Transform    │  │ Transform    │  │ Monitoring   │  │ Processing   │    │
│  └──────────────┘  └──────────────┘  └──────────────┘  └──────────────┘    │
└────────────────────────────────┬────────────────────────────────────────────┘
                                 │ Governed Release
                                 ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                    ZONE 3: RESEARCH ENVIRONMENT                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐    │
│  │ Trial Data   │  │ OMOP         │  │ Biospecimen  │  │ CRAIDL       │    │
│  │ Lake         │  │ Analytics    │  │ Registry     │  │ Outputs      │    │
│  └──────────────┘  └──────────────┘  └──────────────┘  └──────────────┘    │
└────────────────────────────────┬────────────────────────────────────────────┘
                                 │ Airlock Review
                                 ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                           OUTPUTS                                           │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐    │
│  │ Regulatory   │  │ Federation   │  │ Researcher   │  │ Participant  │    │
│  │ Submissions  │  │ Queries      │  │ Portal       │  │ Portal       │    │
│  └──────────────┘  └──────────────┘  └──────────────┘  └──────────────┘    │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 1.3 Integration Points

| Component               | Data Flow Direction | Integration Mechanism             | Frequency     |
| ----------------------- | ------------------- | --------------------------------- | ------------- |
| Connect Care → TRE     | Inbound             | Bulk extract via AHS              | Weekly/Daily  |
| Connect Care → REDCap  | Inbound             | FHIR API (enrolled pts only)      | Real-time     |
| Living Biobank → TRE   | Bidirectional       | BioBank software API              | Real-time     |
| Omics Facilities → TRE | Inbound             | Secure file transfer              | Per-batch     |
| Device Data → TRE      | Inbound             | Custom APIs (Suite 5)             | Per-device    |
| AI Scribe → TRE        | Inbound             | Jenkins API (voice-to-structured) | Real-time     |
| TRE → Regulatory       | Outbound            | CDISC submission packages         | Per-milestone |
| TRE → Federation       | Outbound            | OMOP queries (aggregates)         | On-demand     |

**Device Data Integration:** Suite 5's Digital Health Device Validation Program generates data streams from novel devices (glucose sensors, wound sensors, VR systems, wearables). These flow through Suite 5's data integration APIs into TRE Zone 2 for validation and de-identification, then to Zone 3 for research analysis.

**AI Scribe Integration:** Dr. Ross Mitchell's AI Scribe ("Jenkins")—developed with Amii and deployed across 10 Alberta emergency departments—provides a transformative pathway for voice-first clinical trial data capture. AI Scribe uses large language models to transcribe and structure clinician-patient conversations in real-time, with all data remaining within Alberta (banking/military-grade security). CTAP will integrate AI Scribe for: (1) automated trial visit documentation flowing directly to EDC, (2) AI-assisted consent conversations with audit trail generation, and (3) natural language adverse event capture from clinical encounters. This partnership with Amii Fellow Dr. Mitchell extends CTAP's AI-first vision from trial design (CRAIDL) to real-time clinical data capture.

### 1.4 BioBank-TRE Integration Architecture

Suite 4's data platform provides the integration layer between Suite 2's Living Biorepository (OpenSpecimen-based) and the broader CTAP data ecosystem. This integration enables the critical capability of linking biospecimens to evolving clinical outcomes—a defining feature of CTAP.

#### Three-Zone Integration Model

```
┌─────────────────────────────────────────────────────────────────┐
│                    Zone 1: Identifiable                          │
│  ┌─────────────────┐        ┌─────────────────────────────┐     │
│  │   OpenSpecimen  │◄──────►│  Connect Care (Epic/FHIR)   │     │
│  │   (BioBank 2.0) │        └─────────────────────────────┘     │
│  │   Participant ID│                                            │
│  │   Sample ID     │                                            │
│  └────────┬────────┘                                            │
└───────────┼─────────────────────────────────────────────────────┘
            │ Participant ID + Sample ID
            ▼
┌───────────────────────────────────────────────────────────────┐
│                   Zone 2: Controlled                           │
│  ┌─────────────────────────────────────────────────────────┐  │
│  │          De-identification & Linkage Engine              │  │
│  │   - ARX/OHDSI anonymization                              │  │
│  │   - OMOP CDM transformation                              │  │
│  │   - Sample-phenotype linkage                             │  │
│  │   - Consent status verification                          │  │
│  └─────────────────────────────────────────────────────────┘  │
└───────────────────────────────────────────────────────────────┘
            │ Pseudonymized ID + Linked Data
            ▼
┌───────────────────────────────────────────────────────────────┐
│                   Zone 3: Research                             │
│  ┌──────────────┐  ┌──────────────┐  ┌─────────────────┐      │
│  │ S3 Data Lake │  │  SageMaker   │  │ OHDSI/ATLAS     │      │
│  │ (specimens,  │  │  (AI/ML)     │  │ (cohort builder)│      │
│  │  multi-omics)│  │              │  │                 │      │
│  └──────────────┘  └──────────────┘  └─────────────────┘      │
└───────────────────────────────────────────────────────────────┘
```

#### Integration Capabilities

| Integration Point                 | Technology          | Function                                |
| --------------------------------- | ------------------- | --------------------------------------- |
| **OpenSpecimen REST API**   | HTTPS/JSON          | Specimen metadata, sample requests      |
| **FHIR Specimen Resource**  | HL7 FHIR R4         | Connect Care sample collection context  |
| **Zone 2 Linkage Engine**   | Custom ETL          | Pseudonymized sample-to-phenotype links |
| **OMOP Specimen Extension** | CDM v5.4            | Standardized specimen representation    |
| **Dynamic Consent Module**  | OpenSpecimen plugin | Renewable consent workflows             |

#### Key Integration Use Cases

1. **Outcome-Annotated Biospecimens**: Trial specimens linked to 5-year clinical outcomes via Connect Care without re-identification
2. **AI-Driven Biomarker Discovery**: Multi-omics data (genomics, proteomics) linked to clinical phenotypes for CRAIDL model training
3. **Remnant Sample Research**: Clinical remnant samples linked to EHR data under broad consent framework
4. **Dynamic Consent Tracking**: Real-time consent status verification before specimen release

#### AWS Services Mapping

| BioBank Function       | AWS Service      | Notes                          |
| ---------------------- | ---------------- | ------------------------------ |
| Specimen metadata      | RDS (PostgreSQL) | OpenSpecimen backend           |
| Multi-omics storage    | S3               | Genomics, proteomics, images   |
| Compute                | EC2, SageMaker   | Analysis workloads             |
| Workflow orchestration | Step Functions   | Sample processing pipelines    |
| API Gateway            | API Gateway      | FHIR, OpenSpecimen REST        |
| Authentication         | Cognito          | Researcher identity            |
| Monitoring             | CloudWatch       | Temperature alerts, audit logs |

This integration architecture follows the UK Biobank Research Analysis Platform model while adapting for Canadian regulatory context and CTAP's prospective clinical trial focus.

---

## 2. Three-Zone Trusted Research Environment

### 2.1 Zone Architecture

Suite 4 implements a three-zone TRE model aligned with international best practices (UK Biobank RAP, All of Us Researcher Workbench, FinnGen) and Alberta's Health Information Act.

#### Zone 1: Identifiable Data (Custodian Control)

**Purpose:** Maintain identifiable health data under custodian governance

**Components:**

- AHS data extracts (Connect Care, Snowflake)
- Provincial registry linkages (Vital Statistics, Cancer Registry)
- Consent and identity resolution services

**Access:** Custodian staff only; no researcher access

**Location:** AHS-controlled infrastructure (Snowflake or AHS data centres)

#### Zone 2: Controlled Processing

**Purpose:** Execute transformations requiring linkage keys before de-identification

**Components:**

- De-identification pipelines (k-anonymity, differential privacy where appropriate)
- OMOP transformation engine
- CDISC (CDASH → SDTM) transformation pipeline
- Real-time safety signal detection
- AI agent processing (for agents requiring controlled access)

**Access:** Approved CTAP data engineers; audit-logged

**Location:** University of Alberta Sensitive Data Research Environment (SDRE) with network isolation

**SDRE Integration:** Zone 2 developmental workloads (OMOP ETL, AI model training, batch analytics) leverage SDRE's secure HPC infrastructure, available January 2026. CTAP retains dedicated on-premise infrastructure for operational systems requiring 24/7 availability (OpenSpecimen, CRAIDL inference servers) and regulatory-compliant EDC platforms (21 CFR Part 11). This hybrid model reduces CFI infrastructure costs by ~$850,000 while increasing capability through access to SDRE's GPU clusters and high-performance storage.

**Compliance:** Health Canada GCP audit trails; HIA-compliant handling; ICH E6(R3) data integrity; optional 21 CFR Part 11 for FDA-bound trials

#### Zone 3: Research Environment

**Purpose:** Enable researcher analytics on de-identified data

**Components:**

- Trial data lake (de-identified)
- OMOP CDM analytics instance
- Biospecimen registry (linked by study ID, not patient ID)
- CRAIDL agent outputs and dashboards
- Jupyter/RStudio workspaces

**Access:** Approved researchers via application; project-isolated workspaces

**Location:** AWS Calgary region (secure VPC) + on-premises GPU cluster

**Controls:** Airlock-style output review; no bulk data export

### 2.2 Trials Zone Extension

Unlike retrospective TREs, CTAP requires a "Trials Zone" within Zone 2 that supports prospective data capture with regulatory compliance:

| Capability                  | Description                                        | Compliance                                             |
| --------------------------- | -------------------------------------------------- | ------------------------------------------------------ |
| **EDC Integration**   | Bidirectional sync with trial EDC systems          | Health Canada GCP, ICH E6(R3); optional 21 CFR Part 11 |
| **eSource Capture**   | Direct from Connect Care for enrolled participants | ICH E6(R3), Health Canada Division 5                   |
| **Safety Monitoring** | Real-time AE detection from EMR feeds              | ICH E2A, Health Canada C.05.014                        |
| **CDISC Transform**   | Automated CDASH → SDTM conversion                 | Health Canada/FDA/EMA submissions                      |
| **Audit Trails**      | Complete data lineage for regulatory inspection    | ICH E6(R3), CAN/CGSB-72.34-2017                        |
| **E-Signatures**      | Compliant electronic signatures for key documents  | CAN/CGSB-72.34-2017; optional 21 CFR Part 11           |

### 2.3 Comparison with International Models

| Feature                  | CTAP TRE                             | UK Biobank RAP | All of Us     | FinnGen       |
| ------------------------ | ------------------------------------ | -------------- | ------------- | ------------- |
| Zone model               | 3-zone                               | 2-zone         | 3-tier        | Sandbox       |
| Prospective trials       | **Yes**                        | Limited        | Limited       | No            |
| Real-time EMR            | **Yes** (enrolled)             | Periodic       | Periodic      | Periodic      |
| OMOP CDM                 | Yes                                  | No             | Yes           | Partial       |
| AI agents                | **Native**                     | Add-on         | Add-on        | No            |
| Regulatory grade         | **HC Division 5 + ICH E6(R3)** | Research only  | Research only | Research only |
| International compliance | Optional 21 CFR Part 11/EU Annex 11  | N/A            | N/A           | N/A           |

### 2.4 AWS TRE Assessment Foundation

Suite 4's architecture builds upon the University of Alberta's AWS Trusted Research Environment Assessment, which evaluated institutional readiness for secure, cloud-based health research analytics. This foundational work positions CTAP alongside international best practices.

![AWS TRE Architecture](../background/aws_tre_diagram.png)

#### Alignment with Alberta Health Information Act (HIA)

The three-zone architecture ensures full HIA compliance:

| HIA Principle         | TRE Implementation                              |
| --------------------- | ----------------------------------------------- |
| Data minimization     | Zone 2 de-identification before research access |
| Proportionality       | Access granted only for approved use cases      |
| Auditability          | Complete audit trails across all zones          |
| Controlled disclosure | Airlock-style output review in Zone 3           |
| Custodian control     | Zone 1 remains under AHS governance             |

#### International Benchmarking

The AWS TRE Assessment benchmarked UAlberta against leading international biobanks:

| Platform                   | Model                      | Key Parallel                             | Key Difference                                                   |
| -------------------------- | -------------------------- | ---------------------------------------- | ---------------------------------------------------------------- |
| **UK Biobank RAP**   | AWS + DNAnexus             | "Bring researchers to data"              | UK Biobank is fully centralized; CTAP is regionally governed     |
| **All of Us**        | Cloud Researcher Workbench | OMOP CDM, tiered access, cohort builder  | All of Us is US-focused; CTAP serves Canadian regulatory context |
| **FinnGen**          | Certified sandbox          | National registry linkage, no raw export | FinnGen leverages national ID; CTAP uses consent-based linkage   |
| **Genomics England** | NHS-linked TRE             | WGS + clinical records, airlock outputs  | Similar hybrid custodian-academic model                          |

#### CTAP's Response to Identified Gaps

The AWS TRE Assessment identified five gaps that CTAP specifically addresses:

| Identified Gap                               | CTAP Investment                                     |
| -------------------------------------------- | --------------------------------------------------- |
| Formalized access and governance committees  | CTAP Steering Committee, Data Access Committee      |
| Project-level isolation and cost attribution | Per-project workspaces with usage tracking          |
| Real-time / streaming data patterns          | Suite 5 wearables integration, Connect1d data feeds |
| Metadata catalog and dataset discoverability | OMOP-based catalog, ATLAS cohort tools              |
| Long-term sustainability funding model       | CFI operations funding + industry service revenue   |

### 2.5 Snowflake Complementarity

AHS Connect Care data resides in Snowflake for clinical operations. CTAP's AWS TRE complements rather than replaces this infrastructure:

| Dimension          | AHS Snowflake                     | CTAP AWS TRE                                     |
| ------------------ | --------------------------------- | ------------------------------------------------ |
| Primary role       | Clinical data warehouse           | Research compute environment                     |
| Compute capability | SQL analytics, limited Python     | Arbitrary compute, GPU, AI/ML                    |
| Data types         | Structured clinical data          | Structured + unstructured (imaging, omics)       |
| Governance         | AHS operational                   | Research ethics + regulatory                     |
| Best use           | Standardized analytics, reporting | Discovery, AI model development, trial pipelines |

**Integration Model:** Zone 1 receives bulk extracts from AHS Snowflake. The TRE provides advanced analytics capabilities that Snowflake's warehouse-native tools cannot support, including GPU-accelerated AI, multi-modal data fusion, and regulatory-grade audit trails.

### 2.6 Clinical Proof-of-Concept: GEMINI and the Learning Health System Model

The value of integrated research data environments has been decisively demonstrated in Ontario through the **GEMINI (General Medicine Inpatient Initiative)** project—providing the clinical proof-of-concept for CTAP's data architecture.

#### GEMINI Scale and Impact

| Metric                       | Achievement                                                 |
| ---------------------------- | ----------------------------------------------------------- |
| **Hospital Coverage**  | 30+ hospitals, ~70% of Ontario's medical hospital beds      |
| **Data Access**        | Near real-time research access to clinical data             |
| **Chartwatch Outcome** | **26% reduction in unexpected deaths** (CMAJ study)   |
| **Standardization**    | Harmonized data enabling cross-hospital quality improvement |

#### The Chartwatch Model

Chartwatch, an AI-based early warning system developed using GEMINI data at St. Michael's Hospital, exemplifies what is possible when researchers gain near real-time access to hospital data:

- **Input**: Structured clinical data (vitals, labs, nursing assessments)
- **AI Model**: Deep learning trained on GEMINI's multi-hospital dataset
- **Output**: Real-time deterioration risk scores for hospitalized patients
- **Result**: 26% reduction in unexpected deaths—published in *Canadian Medical Association Journal*

This is not theoretical—it is operational evidence that integrated data architecture saves lives.

#### CTAP's Extension of the GEMINI Model

CTAP builds on GEMINI's proof-of-concept while addressing its limitations:

| GEMINI Capability            | CTAP Extension                                    |
| ---------------------------- | ------------------------------------------------- |
| Structured clinical data     | + Unstructured data via AWS Bedrock NLP           |
| Hospital inpatient focus     | + Clinical trials across care settings            |
| Retrospective analytics      | + Prospective trial data capture (21 CFR Part 11) |
| Ontario provincial           | + Pan-Canadian federation via VITAL/DHDP          |
| Clinical quality improvement | + Regulatory-grade trial endpoints                |
| OMOP CDM foundation          | + CDISC transformation for submissions            |

#### The Learning Health System Closed Loop

CTAP operationalizes the learning health system model that GEMINI pioneered:

```
┌─────────────────────────────────────────────────────────────────────┐
│                    LEARNING HEALTH SYSTEM LOOP                      │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│   ┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐    │
│   │ Clinical │───▶│   TRE    │───▶│    AI    │───▶│ Clinical │    │
│   │   Data   │    │ Research │    │ Insights │    │  Action  │    │
│   └──────────┘    └──────────┘    └──────────┘    └──────────┘    │
│        ▲                                               │           │
│        └───────────────────────────────────────────────┘           │
│                         Outcomes Data                               │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

This architecture enables continuous improvement: clinical data generates research insights, insights inform clinical action, outcomes refine future models.

---

## 2A. SDRE Partnership: Leveraged HPC Infrastructure

### 2A.1 Strategic Context

The University of Alberta's **Sensitive Data Research Environment (SDRE)**, launching January 2026, provides secure, scalable HPC infrastructure specifically designed for research involving sensitive data governed by legislation, regulatory frameworks, and contractual obligations. CTAP leverages SDRE for developmental data science and AI model development workloads, avoiding duplication of general-purpose HPC infrastructure.

This partnership exemplifies efficient use of CFI funds: CTAP's request focuses on clinical trials-specific systems requiring dedicated infrastructure, while SDRE provides shared institutional resources for compute-intensive batch workloads.

### 2A.2 SDRE Capabilities

| Capability                  | SDRE Provision                                | CTAP Utilization                                                     |
| --------------------------- | --------------------------------------------- | -------------------------------------------------------------------- |
| **GPU Compute**       | Hopper (H200) and Blackwell architecture GPUs | CRAIDL LLM training, model fine-tuning, radiomics feature extraction |
| **Secure Storage**    | Petabyte-scale storage with HIA compliance    | OMOP data lake archives, rawdiomics cold storage                     |
| **Physical Security** | Secured data centre, strict access controls   | Meets CTAP Zone 2 security requirements                              |
| **Cybersecurity**     | Regular evaluations, comprehensive governance | Aligns with TRE NIST CSF 2.0 controls                                |
| **Data Transfer**     | Globus integration                            | High-speed movement between SDRE and CTAP TRE                        |

### 2A.3 Workload Allocation Model

CTAP implements a hybrid infrastructure model that optimizes cost while maintaining operational requirements:

| Workload Type                                 | Infrastructure   | Rationale                                                     |
| --------------------------------------------- | ---------------- | ------------------------------------------------------------- |
| **CRAIDL LLM training/fine-tuning**     | SDRE             | Batch workloads, flexible scheduling, GPU-intensive           |
| **CRAIDL agent inference (production)** | CTAP on-prem     | Real-time response, 24/7 availability for clinical operations |
| **OMOP ETL (bulk transforms)**          | SDRE             | Large dataset processing, scheduled batch jobs                |
| **OMOP queries (operational)**          | CTAP TRE Zone 3  | Low-latency research access, interactive analytics            |
| **Radiomics feature extraction**        | SDRE             | GPU-intensive batch processing                                |
| **OpenSpecimen operations**             | CTAP on-prem     | Mission-critical biorepository, 24/7 availability             |
| **EDC/eSource platforms**               | CTAP cloud (AWS) | 21 CFR Part 11 compliance, regulatory audit trails            |
| **AI Scribe integration**               | CTAP on-prem     | Alberta data residency, banking-grade security                |
| **AHS Snowflake integration**           | CTAP Zone 2      | Secure pipeline for Connect Care bulk extracts                |

### 2A.4 Infrastructure Cost Optimization

The SDRE partnership reduces CTAP's CFI infrastructure request while increasing overall capability:

| Original Item                | Original Cost                                        | Revised Item | Revised Cost | Savings              |
| ---------------------------- | ---------------------------------------------------- | ------------ | ------------ | -------------------- |
| GPU-Enabled Compute Nodes    | $800,000 | CRAIDL Inference Servers | $200,000       | $600,000     |              |                      |
| Secure Storage Nodes         | $400,000 | TRE Zone 2 Operational Storage | $150,000 | $250,000     |              |                      |
| Radiomics GPU Compute        | $200,000 | SDRE GPU Allocation | $0                  | $200,000     |              |                      |
| Raw Sensor Data Storage      | $150,000 | Rawdiomics Hot Cache | $50,000            | $100,000     |              |                      |
| **Subtotal Reduction** |                                                      |              |              | **$1,150,000** |

**New Integration Items:**

| Item                               | Cost               | Purpose                                                            |
| ---------------------------------- | ------------------ | ------------------------------------------------------------------ |
| SDRE Integration & Access          | $100,000           | Reserved capacity allocation, access fees, integration development |
| AI Scribe-EDC Integration          | $75,000            | Voice-to-structured clinical trial data pipeline                   |
| CRAIDL LLM Development Environment | $50,000            | SDRE GPU allocation for model versioning and evaluation            |
| AHS Snowflake Integration          | $75,000            | Secure pipeline for Zone 1 bulk extracts from Connect Care         |
| **Subtotal New Items**       | **$300,000** |                                                                    |

**Net Reduction: $850,000** (from original $3,655,000 to $2,805,000)

### 2A.5 Integration Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                    CTAP-SDRE HYBRID INFRASTRUCTURE                           │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  CTAP ON-PREMISE / AWS                    SDRE (UAlberta HPC)               │
│  ┌────────────────────────────┐          ┌────────────────────────────┐    │
│  │ Zone 2 Operational         │          │ Developmental Compute       │    │
│  │ ─────────────────────────│          │ ─────────────────────────│    │
│  │ • CRAIDL inference servers │◄────────▶│ • LLM training/fine-tuning  │    │
│  │ • OpenSpecimen servers     │  Globus  │ • Radiomics batch extraction│    │
│  │ • AI Scribe integration    │  High-   │ • OMOP bulk ETL             │    │
│  │ • AHS Snowflake pipeline   │  Speed   │ • Model evaluation          │    │
│  └────────────────────────────┘  Link    └────────────────────────────┘    │
│                                                                              │
│  ┌────────────────────────────┐          ┌────────────────────────────┐    │
│  │ Zone 3 Research (AWS)      │          │ SDRE Secure Storage         │    │
│  │ ─────────────────────────│          │ ─────────────────────────│    │
│  │ • Trial data lake          │◄────────▶│ • OMOP archives             │    │
│  │ • OHDSI/ATLAS analytics    │          │ • Rawdiomics cold storage   │    │
│  │ • Researcher workspaces    │          │ • Model checkpoints         │    │
│  │ • EDC (21 CFR 11)          │          │ • Training datasets         │    │
│  └────────────────────────────┘          └────────────────────────────┘    │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 2A.6 Governance and Access

| Aspect                      | CTAP Responsibility                             | SDRE Responsibility                                   |
| --------------------------- | ----------------------------------------------- | ----------------------------------------------------- |
| **Capacity Planning** | Forecast compute needs, reserve SDRE allocation | Manage overall capacity, allocate resources           |
| **Security**          | TRE zone controls, data classification          | Physical security, network isolation, access controls |
| **Data Governance**   | Clinical trial data governance, HIA compliance  | Sensitive data governance framework                   |
| **Cost Recovery**     | Track usage, allocate to projects               | Usage metering, billing                               |
| **Integration**       | Build pipelines, maintain APIs                  | Provide endpoints, documentation                      |

### 2A.7 Timeline Alignment

| Milestone                      | Date         | Implication                                           |
| ------------------------------ | ------------ | ----------------------------------------------------- |
| SDRE available for researchers | January 2026 | Aligns with CTAP Year 1 infrastructure deployment     |
| CTAP procurement complete      | Month 12     | On-prem infrastructure ready; SDRE integration begins |
| Full SDRE-CTAP integration     | Month 18     | Hybrid workload allocation operational                |
| CRAIDL agents on SDRE          | Month 24     | LLM training leveraging SDRE GPUs                     |

---

## 2B. AWS Per-Trial Cloud Cost Framework

### 2B.1 Per-Trial Cost Philosophy

Based on AWS guidance, CTAP models cloud infrastructure costs on a per-trial basis rather than as aggregate platform costs. This approach:

- **Ties costs to research activity** rather than fixed infrastructure, enabling transparent cost recovery
- **Demonstrates scalability** as trial volume increases
- **Supports accountability** by linking infrastructure spending directly to research output
- **Aligns with CFI's value-for-money expectations** through activity-based budgeting

### 2B.2 Compute vs Storage Cost Balance

For modern AI-enabled clinical research platforms, **compute costs materially exceed storage costs**. This reflects:

- CRAIDL agent inference requiring sustained GPU/CPU resources
- Real-time OMOP ETL and population-scale cohort queries
- Radiomics feature extraction and deep learning inference
- LLM-based workflows for protocol assistance and adverse event coding

CTAP's cost structure intentionally emphasizes compute allocation over storage, reflecting contemporary AI-enabled trial operations rather than legacy data warehouse assumptions.

### 2B.3 Trial Category Stratification

CTAP's flagship programs span three distinct trial categories with different infrastructure profiles:

| Trial Category | Example Programs | Compute Profile | Storage Profile | Primary Cost Driver |
|----------------|------------------|-----------------|-----------------|---------------------|
| **Genomics Trials** | PRAIRIE Hub vaccine trials, precision oncology | Burst GPU workloads for WGS pipelines, variant calling, AI interpretation | Moderate (compressed BAM/CRAM, VCF) | **Compute-dominant** |
| **Imaging Trials** | Radiomics biomarker studies, cardiac MRI | Batch GPU for feature extraction, DL segmentation | High (DICOM, longitudinal series) | **Balanced** |
| **Standard Clinical** | Taurine Long COVID, diabetes trials, RareKids-CAN | AI text processing, EDC operations, cohort queries | Low (structured clinical data, PROs) | **Operational** |

### 2B.4 Growth Model and Scaling Assumptions

| Year | Active Trials | Growth | Genomics | Imaging | Standard |
|------|---------------|--------|----------|---------|----------|
| 1 | 5 | Baseline | 1 | 1 | 3 |
| 2 | 8 | +50% | 2 | 2 | 4 |
| 3 | 12 | +50% | 3 | 3 | 6 |
| 4 | 18 | +50% | 4 | 5 | 9 |
| 5 | 27 | +50% | 6 | 7 | 14 |

This 50% year-over-year growth reflects realistic programmatic scaling once CTAP infrastructure and workflows are established, aligned with the ramp-up of flagship programs (PRAIRIE Hub vaccines, RareKids-CAN, Connect1D expansion).

### 2B.5 Per-Trial Cost Estimates

| Trial Category | Compute (Annual) | Storage (Annual) | Total Per-Trial | Compute % |
|----------------|------------------|------------------|-----------------|-----------|
| **Genomics** | $18,000 | $6,000 | $24,000 | 75% |
| **Imaging** | $12,000 | $8,000 | $20,000 | 60% |
| **Standard** | $6,000 | $2,000 | $8,000 | 75% |

*Notes: Estimates based on AWS reserved capacity pricing for Calgary region; actual costs will vary based on workload intensity and data volumes. Genomics estimates assume burst GPU for pipeline execution; imaging assumes periodic batch processing with cold storage tiering.*

---

## 2C. Cloud Infrastructure Rationale: Why AWS for Clinical Trials

### 2C.1 Northern and Remote Community Reach

Cloud-based infrastructure is essential for CTAP's commitment to 15% Indigenous and 20% rural/remote trial participation. The TRE's architecture directly enables this:

**Store-and-Forward Data Synchronization:** Unlike traditional on-premise systems requiring persistent connectivity, CTAP's cloud architecture supports data capture during connectivity windows. Telehealth kits deployed to rural/Indigenous sites (Suite 5) synchronize when bandwidth is available, eliminating the requirement for reliable real-time connections that do not exist in many northern communities.

**Voice-First AI Documentation:** AI Scribe's voice-first data capture reduces connectivity burden further—clinicians speak rather than type, with transcription and structuring occurring during available bandwidth.

**Lessons from Northern Experience:** Previous REDCap deployments in similar settings failed because of connectivity constraints and workflows that increased burden. CTAP's cloud architecture learns from this: infrastructure realism over feature richness. The Hemophilus influenzae type A vaccine trial in Nunavut demonstrates that northern clinical research is feasible with appropriate technical approaches.

### 2C.2 Indigenous Data Sovereignty and OCAP

Cloud architecture strengthens rather than threatens Indigenous data sovereignty by enabling technical enforcement of OCAP principles:

**Ownership:** TRE Zone 1 can be custodian-controlled by Indigenous governance bodies (First Nations Health Consortium), not merely AHS. Indigenous communities retain ownership of their data at the governance level.

**Control:** IAM roles technically enforce that Indigenous-identified data requires explicit approval from Indigenous Data Stewards before researcher access. This is not merely policy—it is architecture.

**Access:** Cloud enables data to remain under Indigenous control while being accessible for community-approved research. Researchers "come to the data" rather than data being extracted to academic centres.

**Possession:** Data remains in Canadian jurisdiction (AWS Calgary) under Canadian law. Physical possession is distributed but legally possession is unambiguous.

**Contrast with On-Premise:** Traditional on-premise academic infrastructure would require Indigenous data to physically move to University data centres—placing possession control in institutional hands. Cloud's virtual architecture enables Indigenous bodies to maintain data custody while enabling approved research.

### 2C.3 Canadian Data Residency

- **AWS Canada West (Calgary Region):** All CTAP clinical data remains within Canadian legal jurisdiction
- **AHS-Controlled Encryption:** Encryption keys remain under Alberta custodian control
- **Health Information Act Compliance:** Three-zone architecture meets HIA data minimization and proportionality requirements
- **Health Canada Division 5:** Audit trail and data integrity requirements satisfied
- **STRAC/NSGRP Compliance:** No data accessible from foreign infrastructure; AI models run in private VPC

### 2C.4 Cloud Economics for Clinical Trials

Clinical trial workloads are inherently **burst-intensive**:

- Enrollment periods generate high data capture volume
- Interim analyses require concentrated compute for OMOP queries and statistical processing
- Regulatory submissions demand CDISC transformation capacity
- Between milestones, infrastructure utilization drops significantly

**On-Premise Alternative:** Would require provisioning for peak demand, resulting in 60-80% underutilization during normal operations. Capital cost would be higher; operational flexibility lower.

**Hybrid Model:** CTAP's architecture pairs:
- **SDRE** for sustained batch workloads (LLM training, OMOP bulk ETL, radiomics batch processing)
- **AWS** for elastic operational needs (EDC, real-time safety monitoring, burst analytics)

This hybrid model optimizes both cost and capability, avoiding duplication while ensuring appropriate infrastructure for each workload type.

---

## 3. OMOP Common Data Model Strategy

### 3.1 Why OMOP

The OMOP (Observational Medical Outcomes Partnership) Common Data Model enables:

1. **Federated Queries** - Participate in OHDSI network (100+ institutions globally)
2. **Trial Feasibility** - Standardized cohort definitions across Connect Care
3. **Real-World Evidence** - Generate RWE from provincial health data
4. **AI Training** - Consistent data representation for CRAIDL model development
5. **Network Effects** - Join VITAL, TriNetX, and emerging Canadian networks

### 3.2 Implementation Scope

| Data Domain  | OMOP Tables          | Source                  | Priority |
| ------------ | -------------------- | ----------------------- | -------- |
| Demographics | Person               | Connect Care            | P1       |
| Conditions   | Condition_occurrence | Connect Care ICD-10     | P1       |
| Medications  | Drug_exposure        | Connect Care Rx         | P1       |
| Procedures   | Procedure_occurrence | Connect Care            | P1       |
| Labs         | Measurement          | Connect Care, LIMS      | P1       |
| Vital Signs  | Measurement          | Connect Care, wearables | P2       |
| Visits       | Visit_occurrence     | Connect Care            | P1       |
| Biospecimens | Specimen (extension) | CBSR                    | P2       |
| Genomics     | Genomic (extension)  | Omics facilities        | P3       |

### 3.3 OMOP Tooling

Suite 4 deploys the OHDSI tool stack:

| Tool                             | Purpose                             | Deployment |
| -------------------------------- | ----------------------------------- | ---------- |
| **ATLAS**                  | Cohort definition, characterization | Zone 3     |
| **Achilles**               | Data quality, profiling             | Zone 2/3   |
| **WhiteRabbit**            | ETL specification                   | Zone 2     |
| **Usagi**                  | Vocabulary mapping                  | Zone 2     |
| **Data Quality Dashboard** | Ongoing monitoring                  | Zone 3     |

### 3.4 Federation Participation

CTAP's OMOP implementation enables participation in:

| Network                | Scope                     | Query Type          | Timeline |
| ---------------------- | ------------------------- | ------------------- | -------- |
| **OHDSI**        | Global (100+ sites)       | Federated analytics | Year 2   |
| **VITAL**        | Canadian multi-provincial | Federated analytics | Year 2   |
| **TriNetX**      | Industry feasibility      | Aggregate counts    | Year 3   |
| **PRAIRIE Hub**  | Western Canada pandemic   | Custom federation   | Year 1   |
| **RareKids-CAN** | Pediatric rare disease    | Phenotype sharing   | Year 2   |

### 3.5 VITAL/GEMINI Leveraged Investment

CTAP's data platform builds on substantial provincial and federal investments already operational in Alberta, eliminating the need for OMOP ETL infrastructure that VITAL has already deployed.

#### Provincial Data Infrastructure Already in Place

| Investment | Status | CTAP Leverage |
| ---------- | ------ | ------------- |
| **VITAL Federated Infrastructure** | Operational | OMOP ETL pipelines, vocabulary management, OHDSI tooling (Achilles, ATLAS) already deployed; CTAP uses existing mappings |
| **AHS Research Snowflake Instance** | Operational | Provincial data warehouse with Connect Care extracts; CTAP accesses via approved research protocols |
| **GEMINI Multi-Hospital Network** | Operational | Proven federated query architecture; CTAP joins as Alberta node |
| **DHDP National Federation** | Deploying 2025-26 | Pan-Canadian federated learning infrastructure; CTAP participates without separate investment |

#### What CTAP Adds (Not Duplicates)

CTAP investments focus exclusively on capabilities not provided by existing infrastructure:

| Capability | Why Needed | Existing Gap |
| ---------- | ---------- | ------------ |
| **Clinical Trials Zone** | Prospective data capture with GCP audit trails | VITAL/Snowflake designed for retrospective research |
| **CDISC Transformation** | CDASH → SDTM → ADaM for regulatory submission | Not part of OMOP workflow |
| **Real-time Safety Monitoring** | ICH E2A compliant adverse event detection | Existing systems batch-oriented |
| **Regulatory-Grade E-Signatures** | CAN/CGSB-72.34-2017 compliance | Research platforms lack this |
| **AI Agent Integration** | CRAIDL agents with defined TRE zone access | Novel capability |

#### Strategic Implications

**No OMOP ETL Investment Required:** VITAL has validated OMOP deployment in Canadian healthcare settings and operates production ETL pipelines. CTAP extends existing mappings with trial-specific concept additions rather than building from scratch.

**Snowflake as Zone 1 Source:** AHS's research Snowflake instance provides the data source for CTAP's Zone 1, with approved bulk extracts flowing through established governance. This eliminates need for separate AHS data integration.

**Federation Without Infrastructure:** VITAL's federated query infrastructure enables cross-site trial feasibility queries using existing network architecture. CTAP joins as a participant node, not a separate network.

**Partnership Evidence:** Cross-project coordination demonstrates Alberta's commitment to national health data infrastructure and provides sustainability beyond CFI funding.

---

## 3A. Regulatory Governance: Local Compliance, International Harmonization

CTAP implements a tiered regulatory compliance framework designed for Alberta-based trials while enabling seamless international collaboration and multi-jurisdictional submissions. This "local compliance, international harmonization" approach ensures every CTAP trial meets Canadian requirements while providing optional compliance pathways for international regulatory acceptance.

### 3A.1 Primary Compliance Framework (Canadian)

All trials conducted through CTAP meet Canadian regulatory requirements as the mandatory baseline:

| Regulation                             | Authority                               | Scope                    | CTAP Implementation                                                                          |
| -------------------------------------- | --------------------------------------- | ------------------------ | -------------------------------------------------------------------------------------------- |
| **Health Canada Division 5**     | Health Canada                           | All drug clinical trials | Clinical Trial Application (CTA) support, 15-year record retention, GCP inspection readiness |
| **ICH E6(R3)**                   | Health Canada (mandatory April 1, 2026) | Good Clinical Practice   | Quality-by-design, Critical to Quality Factors, risk-based monitoring                        |
| **TCPS2 (2022)**                 | Tri-Council (CIHR, NSERC, SSHRC)        | Research ethics          | REB submission support, consent documentation, privacy safeguards                            |
| **Health Information Act (HIA)** | Alberta                                 | AHS custodian data       | Three-zone TRE architecture, AHS data custodianship                                          |
| **CAN/CGSB-72.34-2017**          | Canadian Standards Board                | Electronic records       | Audit trails, e-signatures, system validation                                                |

### 3A.2 International Harmonization Layer

For trials requiring multi-jurisdictional submissions or international collaboration, CTAP provides optional compliance modules:

| Standard                  | Jurisdiction  | When Required                                                 | CTAP Support                                          |
| ------------------------- | ------------- | ------------------------------------------------------------- | ----------------------------------------------------- |
| **21 CFR Part 11**  | USA (FDA)     | FDA submissions, US-sponsored trials, dual HC/FDA submissions | Optional compliance module with enhanced audit trails |
| **EU Annex 11**     | EMA (Europe)  | European submissions                                          | GMP computerized systems alignment                    |
| **CDISC SDTM/ADaM** | International | Regulatory submissions (HC, FDA, EMA)                         | Automated transformation pipeline                     |
| **OHDSI/OMOP**      | International | Federated research                                            | Native CDM implementation                             |
| **ICH E2B**         | International | Safety reporting                                              | Automated adverse event transmission                  |

### 3A.3 Compliance Architecture

```
┌─────────────────────────────────────────────────────────────────────┐
│                    CTAP COMPLIANCE LAYERS                            │
├─────────────────────────────────────────────────────────────────────┤
│  Layer 1: Alberta/Canadian (MANDATORY - ALL TRIALS)                 │
│  • Health Canada Division 5 • ICH E6(R3) • TCPS2 • HIA • CGSB      │
├─────────────────────────────────────────────────────────────────────┤
│  Layer 2: International Harmonization (AS REQUIRED)                 │
│  • 21 CFR Part 11 (FDA) • EU Annex 11 (EMA) • ICH E2B (safety)     │
├─────────────────────────────────────────────────────────────────────┤
│  Layer 3: Federation Standards (FOR COLLABORATION)                  │
│  • OMOP CDM • CDISC • HL7 FHIR • FAIR principles                   │
└─────────────────────────────────────────────────────────────────────┘
```

### 3A.4 ICH E6(R3) Readiness

Health Canada has announced mandatory implementation of ICH E6(R3) effective **April 1, 2026**. CTAP is designed for E6(R3) compliance from day one:

| E6(R3) Requirement                    | CTAP Implementation                                              |
| ------------------------------------- | ---------------------------------------------------------------- |
| **Quality-by-Design**           | Risk-based protocol design integrated into CRAIDL Protocol Agent |
| **Critical to Quality Factors** | Explicit CTQ documentation in data management plans              |
| **Risk-Based Monitoring**       | Automated centralized monitoring with targeted on-site visits    |
| **Data Governance**             | Defined data flows, validation, and integrity controls           |
| **Technology Flexibility**      | eConsent, wearables, decentralized trial support (Suite 5)       |

### 3A.5 When 21 CFR Part 11 Applies

21 CFR Part 11 is a **US FDA regulation** and is not required for Canadian-only trials. CTAP activates 21 CFR Part 11 compliance modules for:

- Trials with planned FDA submission for US market access
- Industry-sponsored trials with US regulatory obligations
- Multi-national trials including US sites
- Dual Health Canada/FDA submission strategies

For trials not requiring FDA submission, CTAP's Canadian compliance framework (Health Canada Division 5, ICH E6(R3), CAN/CGSB-72.34-2017) provides equivalent data integrity protections aligned with international standards.

---

## 3B. Research Security: TRE as Compliance Engine

In the current geopolitical climate, health data is classified as a **national security asset**. CTAP's Three-Zone TRE serves as critical security infrastructure—automatically enforcing federal (STRAC/NSGRP) and provincial (HIA) safeguards.

### 3B.1 Sensitive Technology Classification

CTAP's use of the following technologies places this work in **Sensitive Technology Research Areas (STRA)** under the federal Policy on Sensitive Technology Research and Affiliations of Concern (STRAC):

| Technology                           | CTAP Application           | Security Control                              |
| ------------------------------------ | -------------------------- | --------------------------------------------- |
| **Artificial Intelligence**    | CRAIDL agents, AI Scribe   | Private VPC execution; no public endpoints    |
| **Advanced Data Computing**    | GPU-enabled secure compute | On-premises isolation; no external access     |
| **Large-Scale Data Analytics** | OMOP population analytics  | Airlock output review; aggregate-only release |

This classification requires that no team member hold affiliations with Named Research Organizations (NRO) linked to foreign military/security apparatuses, and that all partnerships undergo rigorous National Security Guidelines for Research Partnerships (NSGRP) vetting.

### 3B.2 TRE Security Alignment Matrix

| Regulatory Requirement                      | TRE Technical Implementation                                               |
| ------------------------------------------- | -------------------------------------------------------------------------- |
| **HIA: Least Privilege**              | Zone 1 custodian control; researchers access only de-identified data       |
| **STRAC: Prevent Knowledge Transfer** | Airlock output controls; no bulk data export; reviewed outputs only        |
| **Data Sovereignty**                  | AWS Canada Central; AHS-controlled encryption; Canadian legal jurisdiction |
| **AI Model Security**                 | UofA-owned models in private VPC; Bedrock/SageMaker isolation              |
| **Alberta Data Residency**            | All clinical data remains in Alberta; AI Scribe certified Alberta-only     |

### 3B.3 Strategic Positioning

> "In an era of strict federal security guidelines (STRAC) and provincial privacy laws (HIA), 'downloading data to a laptop' is a liability. The TRE centralizes security, ensuring that even if a researcher's account is compromised, the raw data remains locked behind the AHS Ingestion Account firewalls. It is the only architecture robust enough to handle Sensitive Technology (AI) research on health data."

This architecture positions CTAP as the **safest place in Canada** to conduct AI-enabled health research.

---

## 4. CRAIDL AI Agent Framework

### 4.1 Agent Inventory

CRAIDL (Clinical Research Assistants for Intelligent Design and anaLysis) comprises eight coordinated AI agents. An investigator-developed prototype has validated the core methodology for four of these agents:

| Agent                                | Function                                                                                                          | Primary Use Case                            | Validation Status               |
| ------------------------------------ | ----------------------------------------------------------------------------------------------------------------- | ------------------------------------------- | ------------------------------- |
| **In Silico Assessment Agent** | Digital twin generation, synthetic control arms, causal treatment effect estimation, trial feasibility simulation | Trial design, patient stratification        | Planned                         |
| **Protocol Agent**             | Hypothesis-to-protocol conversion                                                                                 | Trial design                                | **Prototype operational** |
| **Data Management Agent**      | Statistical design, EDC creation                                                                                  | Data capture                                | **Prototype operational** |
| **Events Agent**               | Endpoint capture, adjudication                                                                                    | Safety monitoring                           | Planned                         |
| **Ethics Agent**               | REB submissions, consent generation                                                                               | Regulatory prep                             | **Prototype operational** |
| **Regulatory Agent**           | Health Canada/FDA compliance                                                                                      | Submissions                                 | **Prototype operational** |
| **Budget & Contracts Agent**   | Fair market value budgeting                                                                                       | Feasibility                                 | Planned                         |
| **Imaging/Radiomics Agent**    | Quantitative imaging analysis, radiomic biomarkers                                                                | Patient identification, surrogate endpoints | Planned                         |

### 4.1A In Silico Assessment Agent: Digital Twin Engine

The In Silico Assessment Agent represents CTAP's most ambitious AI capability—leveraging generative modeling and causal inference to simulate trial outcomes before patient enrollment. Development is led by **Dr. Lazar Atanackovic** (Amii Fellow, ECE/Biochemistry), whose expertise in Meta Flow Matching and GFlowNets enables a new class of clinical trial simulation tools.

#### Core Capabilities

| Capability                                   | Description                                                                                                                                               | Application                                 |
| -------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------- |
| **Digital Twin Generation**            | Creates patient-specific computational models from multi-omics baseline data (genomics, metabolomics, glycomics) to predict individual treatment response | Patient stratification, enriched enrollment |
| **Synthetic Control Arms**             | Generates synthetic control cohorts from historical RWE data using generative AI, reducing placebo group requirements                                     | Rare disease trials, ethical considerations |
| **Causal Treatment Effect Estimation** | Uses flow matching and GFlowNet methods to infer treatment effects at the individual patient level                                                        | Precision medicine, adaptive design         |
| **Trial Feasibility Simulation**       | Runs Monte Carlo simulations of enrollment, dropout, and endpoint timing using de-identified historical outcomes                                          | Protocol optimization, resource planning    |

#### Digital Twin Workflow

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                     DIGITAL TWIN ENGINE WORKFLOW                             │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  1. INPUT                    2. DIGITIZATION              3. DATA FUSION    │
│  ┌──────────────┐           ┌──────────────────┐         ┌──────────────┐  │
│  │ Patient      │           │ Multi-Omics:     │         │ Patient Data │  │
│  │ Biopsy +     │──────────▶│ • DNA (genomics) │────────▶│ Cube (OMOP   │  │
│  │ Blood Sample │           │ • NMR (TMIC)     │         │ CDM unified) │  │
│  │ (Suite 2)    │           │ • Glycan (GlycoNet) │      │              │  │
│  └──────────────┘           └──────────────────┘         └──────┬───────┘  │
│                                                                  │          │
│  4. GENERATIVE MODEL                         5. OUTPUT          │          │
│  ┌────────────────────────────────┐         ┌──────────────────┐│          │
│  │ Flow Matching / Diffusion      │◀────────│ Response Score   ││          │
│  │ models simulate drug mechanism │         │ for stratification│◀─────────┘│
│  │ against patient profile        │────────▶│ & adaptive design │          │
│  └────────────────────────────────┘         └──────────────────┘           │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### Technical Foundation

| Method                                            | Application                                                                  | Reference                 |
| ------------------------------------------------- | ---------------------------------------------------------------------------- | ------------------------- |
| **Meta Flow Matching**                      | Learning dynamics on Wasserstein manifolds for patient trajectory prediction | Atanackovic et al. (2024) |
| **DynGFN (GFlowNets)**                      | Bayesian inference of gene regulatory networks for mechanistic modeling      | Atanackovic et al. (2024) |
| **SuperDiff**                               | Superposition of diffusion models for multi-modal data fusion                | Atanackovic et al. (2024) |
| **Quantitative Systems Pharmacology (QSP)** | Mechanistic endpoint modeling for treatment response                         | Standard methodology      |

#### Integration with CTAP Infrastructure

| Suite                                     | Integration Point                                    |
| ----------------------------------------- | ---------------------------------------------------- |
| **Suite 2 (Living Biorepository)**  | Multi-omics sample processing → Digital Twin input  |
| **Suite 3 (Translational Science)** | Cryo-EM, TMIC, GlycoNet molecular data → Patient profile |
| **Suite 4 (TRE)**                   | Historical RWE → Synthetic control generation       |
| **Suite 5 (Decentralized Trials)**  | Digital endpoints → Response prediction validation  |

#### Synthetic Data Generation

Where real patient data cannot be released (Zone 3 airlock restrictions), the Digital Twin Engine deploys generative AI to create synthetic datasets that preserve statistical properties while ensuring differential privacy:

- **Tabular data synthesis** using diffusion models
- **Synthetic imaging data** for algorithm development and validation
- **Privacy-preserving federated learning** with synthetic pre-training
- **Validation pipelines** ensuring synthetic data fidelity to original distributions

*Development led by Dr. Lazar Atanackovic leveraging Meta Flow Matching and SuperDiff architectures.*

#### Rare Disease Application

For rare disease trials where placebo controls are ethically problematic, the Digital Twin Engine generates synthetic control arms from historical RWE data, enabling single-arm trials with rigorous causal inference. This capability is particularly relevant for the RareKids-CAN flagship program (Suite 1).

#### Clinical-QSP Loop

The Digital Twin Engine connects to Applied Pharmaceutical Innovation (API)'s Quantitative Systems Pharmacology (QSP) division to create a "Living Digital Twin" that refines with every patient treated in Alberta:

1. **Connect Care Integration**: Real-time clinical outcomes flow from Connect Care
2. **QSP Model Refinement**: API's mathematical models incorporate actual patient response data
3. **Predictive Improvement**: Each treated patient improves population-level predictions
4. **Feedback Loop**: Refined models enable more accurate trial simulation for subsequent patients

This closed-loop architecture transforms standard clinical data into a continuously improving prediction engine.

### 4.1B Living Digital Twin: API Manufacturing Integration

The Living Digital Twin concept described above becomes operational through CTAP's formal partnership with Applied Pharmaceutical Innovation (API). This section defines the specific data flows, governance framework, and technical integration that transform aspirational QSP integration into a functioning manufacturing intelligence system.

#### Operational Data Flow Architecture

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                  LIVING DIGITAL TWIN: CTAP ↔ API DATA FLOWS                     │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                  │
│  CTAP TRIAL DATA                      API MANUFACTURING                         │
│  ┌──────────────────┐                 ┌──────────────────┐                      │
│  │ TRE Zone 2       │                 │ QSP Division     │                      │
│  │ ────────────────│   De-identified │ ────────────────│                      │
│  │ • Demographics   │◀═══════════════▶│ • Patient models │                      │
│  │ • Outcomes       │   QSP-Ready    │ • Drug response  │                      │
│  │ • Biomarkers     │   Dataset       │ • Dose optimize  │                      │
│  │ • PK/PD data     │                 │                  │                      │
│  └────────┬─────────┘                 └────────┬─────────┘                      │
│           │                                    │                                 │
│           ▼                                    ▼                                 │
│  ┌──────────────────┐                 ┌──────────────────┐                      │
│  │ Living           │  Batch QC       │ DDIC/CMPC        │                      │
│  │ Biorepository    │◀═══════════════│ Manufacturing    │                      │
│  │ (Suite 2)        │   Specimens     │ Batches          │                      │
│  └────────┬─────────┘                 └────────┬─────────┘                      │
│           │                                    │                                 │
│           ▼                                    ▼                                 │
│  ┌─────────────────────────────────────────────────────────────────────────┐   │
│  │                    OMOP Manufacturing Extension                          │   │
│  │  • Manufacturing_batch (batch_id, product_id, production_date, lot_no)  │   │
│  │  • Batch_exposure (person_id, batch_id, exposure_start, quantity)       │   │
│  │  • Batch_qc_specimen (batch_id, specimen_id, qc_result, qc_date)       │   │
│  │  • Outcome_batch_link (outcome_id, batch_id, correlation_flag)          │   │
│  └─────────────────────────────────────────────────────────────────────────┘   │
│                                                                                  │
└─────────────────────────────────────────────────────────────────────────────────┘
```

#### OMOP CDM Manufacturing Extension Schema

CTAP extends the OMOP Common Data Model with manufacturing-specific tables to enable batch-to-outcome traceability:

| Table                               | Purpose                                          | Key Fields                                                                         | Integration                   |
| ----------------------------------- | ------------------------------------------------ | ---------------------------------------------------------------------------------- | ----------------------------- |
| **manufacturing_batch**       | Track API-produced batches                       | batch_id, product_concept_id, lot_number, production_date, expiry_date, batch_size | Links to OMOP drug_concept    |
| **batch_exposure**            | Link participants to specific batches            | person_id, batch_id, drug_exposure_id, quantity_administered                       | Extension of drug_exposure    |
| **batch_qc_specimen**         | QC specimens archived in Living Biorepository    | batch_id, specimen_id, qc_type_concept_id, result_value, specification_met         | Links to Suite 2 OpenSpecimen |
| **batch_outcome_correlation** | Correlate manufacturing parameters with outcomes | batch_id, outcome_occurrence_id, correlation_type, statistical_measure             | Enables process improvement   |

This extension follows OHDSI conventions for CDM extensions and will be submitted for community review.

#### QSP Data Access Governance

Data flows between CTAP and API operate under defined governance aligned with the MOU framework (RTA Section 2.2.1):

| Data Type                              | Direction   | Governance                     | Access Mechanism                      |
| -------------------------------------- | ----------- | ------------------------------ | ------------------------------------- |
| **De-identified trial outcomes** | CTAP → API | Data Access Committee approval | Scheduled batch transfer (weekly)     |
| **PK/PD parameters**             | CTAP → API | Per-study consent + DAC        | Real-time API (FHIR-based)            |
| **QSP model outputs**            | API → CTAP | API data sharing agreement     | Dosing recommendations via TRE Zone 2 |
| **Batch QC results**             | API → CTAP | Manufacturing data agreement   | Linked to batch_exposure records      |
| **Process optimization signals** | CTAP → API | Aggregated, non-identifiable   | Quarterly analysis reports            |

**Key Governance Principle:** All data flows occur through TRE Zone 2, with API QSP staff accessing de-identified datasets only. Manufacturing batch data entering CTAP is linked to participant exposures through the batch_exposure table, but API cannot re-identify participants.

#### Manufacturing Intelligence Layer

The Living Digital Twin enables a manufacturing intelligence capability that connects clinical outcomes to production optimization:

| Intelligence Type              | Data Sources                               | Output                                   | Frequency      |
| ------------------------------ | ------------------------------------------ | ---------------------------------------- | -------------- |
| **Demand Forecasting**   | Trial enrollment curves, protocol pipeline | CMPC production scheduling               | Monthly        |
| **Process Optimization** | Batch-to-outcome correlations              | Manufacturing parameter adjustments      | Quarterly      |
| **Regulatory Support**   | Trial outcomes linked to batches           | Post-market surveillance data packages   | Per-submission |
| **Quality Correlation**  | Biorepository QC specimens + outcomes      | Specification refinement recommendations | Annual         |

#### Integration with Suite 2 Living Biorepository

The Living Biorepository (Suite 2) maintains manufacturing batch QC specimens in a dedicated archive:

1. **Batch Receipt**: When API manufacturing batches enter CTAP trials, QC retention samples are transferred to the Living Biorepository
2. **Outcome Linkage**: As trial participants receive batch-specific product, the batch_exposure table links batch_id to person_id
3. **Long-term Follow-up**: Connect Care integration (5-10 year outcome annotation) enables correlation of manufacturing parameters with long-term clinical outcomes
4. **Process Improvement**: Aggregated batch-outcome correlations (non-identifiable) inform API manufacturing process optimization

#### API Partnership Data Exchange Specifications

| Exchange Type               | Format                | Encryption                          | Frequency | Retention         |
| --------------------------- | --------------------- | ----------------------------------- | --------- | ----------------- |
| QSP-ready datasets          | OMOP CDM + extensions | AES-256 at rest, TLS 1.3 in transit | Weekly    | 15 years          |
| PK/PD parameters            | CDISC SDTM            | Same                                | Per-visit | 15 years          |
| Dosing recommendations      | JSON via secure API   | Same                                | Real-time | 15 years          |
| Batch QC certificates       | PDF + structured data | Same                                | Per-batch | Product lifecycle |
| Outcome correlation reports | Markdown + CSV        | Same                                | Quarterly | Indefinite        |

#### Compliance Framework

Living Digital Twin data flows comply with all applicable regulations:

| Regulation                         | Requirement                             | Implementation                                                          |
| ---------------------------------- | --------------------------------------- | ----------------------------------------------------------------------- |
| **Health Canada Division 5** | Drug accountability, batch traceability | batch_exposure table links trial product to manufacturing lot           |
| **ICH E6(R3)**               | Data integrity, quality-by-design       | Immutable batch-outcome linkages, validated QSP interfaces              |
| **HIA**                      | Health data custodianship               | All identifiable data remains in TRE Zone 1; API accesses Zone 2/3 only |
| **GMP (API facilities)**     | Manufacturing records                   | CTAP receives batch certificate data; does not access raw GMP records   |

### 4.2 Data Access Framework

Each CRAIDL agent has defined data access patterns specifying what data it can access, in which TRE zone, and under what compliance requirements:

| Agent                                | Data Sources                                                       | TRE Zone | Access Type     | Compliance                              |
| ------------------------------------ | ------------------------------------------------------------------ | -------- | --------------- | --------------------------------------- |
| **In Silico Assessment Agent** | De-identified historical outcomes, multi-omics data, RWE databases | Zone 2/3 | Read + simulate | OMOP CDM, differential privacy          |
| **Protocol Agent**             | Literature, prior protocols, trial registry                        | Zone 3   | Read-only       | N/A                                     |
| **Data Management Agent**      | CVC trial database, statistical templates, OMOP aggregates         | Zone 3   | Read-only       | N/A                                     |
| **Events Agent**               | Trial EDC, AE reports, EMR safety signals                          | Zone 2   | Read + flag     | ICH E2B, Health Canada C.05.014         |
| **Ethics Agent**               | Consent templates, REB requirements, regulations                   | Zone 3   | Read-only       | TCPS2, Health Canada Division 5         |
| **Regulatory Agent**           | CDISC datasets, regulatory databases, submission templates         | Zone 2/3 | Read + generate | CDISC, Health Canada, FDA (as required) |
| **Budget & Contracts Agent**   | Industry benchmarks, institutional rates, prior contracts          | Zone 3   | Read-only       | N/A                                     |
| **Imaging/Radiomics Agent**    | PACS images, radiomic feature databases, imaging protocols         | Zone 2/3 | Read + extract  | DICOM, Connect Care imaging             |

### 4.3 Agent Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                     CRAIDL ORCHESTRATION LAYER                  │
│  ┌──────────────────────────────────────────────────────────┐   │
│  │  Agent Coordinator  │  Task Queue  │  Human-in-Loop UI   │   │
│  └──────────────────────────────────────────────────────────┘   │
└─────────────────────────────────┬───────────────────────────────┘
                                  │
        ┌─────────────────────────┼─────────────────────────┐
        ▼                         ▼                         ▼
┌───────────────┐         ┌───────────────┐         ┌───────────────┐
│ Protocol      │         │ Data Mgmt     │         │ Events        │
│ Agent         │         │ Agent         │         │ Agent         │
│ ─────────────│         │ ─────────────│         │ ─────────────│
│ Zone 3 only   │         │ Zone 3 only   │         │ Zone 2 + 3    │
│ Literature DB │         │ CVC templates │         │ EDC + EMR     │
│ Trial registry│         │ OMOP CDM      │         │ Safety signals│
└───────────────┘         └───────────────┘         └───────────────┘
        ▼                         ▼                         ▼
┌───────────────┐         ┌───────────────┐         ┌───────────────┐
│ Ethics        │         │ Regulatory    │         │ Budget &      │
│ Agent         │         │ Agent         │         │ Contracts     │
│ ─────────────│         │ ─────────────│         │ ─────────────│
│ Zone 3 only   │         │ Zone 2 + 3    │         │ Zone 3 only   │
│ Consent tmpl  │         │ CDISC data    │         │ Rate databases│
│ REB rules     │         │ Reg databases │         │ Prior budgets │
└───────────────┘         └───────────────┘         └───────────────┘
```

### 4.4 Audit and Compliance

All CRAIDL agent activities are logged for regulatory compliance:

| Log Element             | Description                      | Retention |
| ----------------------- | -------------------------------- | --------- |
| **Agent ID**      | Which agent performed action     | 15 years  |
| **Timestamp**     | ISO 8601 with timezone           | 15 years  |
| **Data Accessed** | Table/field references           | 15 years  |
| **Action Type**   | Read, generate, flag, recommend  | 15 years  |
| **Human Review**  | Reviewer ID, decision, timestamp | 15 years  |
| **Output Hash**   | Cryptographic hash of output     | 15 years  |

### 4.5 Human-in-the-Loop Requirements

CRAIDL agents operate under human oversight:

| Agent Output       | Review Requirement                        | Approval Authority    |
| ------------------ | ----------------------------------------- | --------------------- |
| Protocol draft     | Required before submission                | PI + CVC statistician |
| Statistical plan   | Required before implementation            | Biostatistician       |
| Safety flag        | Immediate notification; review within 24h | Medical monitor       |
| Consent form       | Required before REB submission            | Ethics coordinator    |
| Regulatory package | Required before submission                | Regulatory affairs    |
| Budget estimate    | Review before sponsor negotiation         | Contracts office      |

---

## 4A. AI Scribe: Voice-First Clinical Trial Data Capture

### 4A.1 Integration with CRAIDL Ecosystem

Dr. Ross Mitchell's **AI Scribe** ("Jenkins"), developed through the **PHAIR Lab** (Precision Health AI Research), represents a critical extension of CTAP's AI-first vision, moving AI integration beyond trial design (CRAIDL) into real-time clinical data capture. As Canada CIFAR AI Chair and Alberta Health Services Chair in AI in Health, Dr. Mitchell anchors CTAP's **Applied AI Innovation in Healthcare** flagship program—the institutional home within the AI + Health Hub (led by Drs. Neesh Pannu and Gillian Lemermeyer) that generates implementation science knowledge for clinical AI deployment.

Already deployed across 10 Alberta emergency departments with 58 physicians, AI Scribe has processed over 7,500 clinical conversations and demonstrated remarkable efficiency gains—approximately 3 additional patients seen per physician per shift. This proven track record demonstrates what successful AI implementation looks like, providing the model that CRAIDL development will follow.

**Learning Health System Connection:** AI Scribe exemplifies the learning health system model demonstrated by Ontario's GEMINI/Chartwatch project: high-quality clinical documentation flows into the research environment, enables AI-driven insights, and returns validated tools to clinical practice. Just as Chartwatch achieved 26% mortality reduction by transforming structured clinical data into actionable early warnings, AI Scribe provides the data foundation for CRAIDL's clinical trial agents—extending the learning health system from quality improvement into therapeutic innovation.

AI Scribe complements CRAIDL by addressing a different phase of the trial lifecycle:

| Phase                       | CRAIDL Agents                          | AI Scribe                                |
| --------------------------- | -------------------------------------- | ---------------------------------------- |
| **Trial Design**      | Protocol, Data Management, Statistical | N/A                                      |
| **Data Capture**      | N/A                                    | Voice-to-structured documentation        |
| **Safety Monitoring** | Events Agent                           | Real-time AE detection from conversation |
| **Regulatory**        | Regulatory Agent                       | Audit trail generation                   |
| **Ethics**            | Ethics Agent                           | Consent conversation documentation       |

### 4A.2 Clinical Trial Integration Points

| Use Case                            | AI Scribe Capability                                 | TRE Integration                   |
| ----------------------------------- | ---------------------------------------------------- | --------------------------------- |
| **Trial Visit Documentation** | Structured notes from clinician-patient conversation | Direct flow to EDC via Zone 2     |
| **Consent Process**           | Conversation transcript with comprehension markers   | Audit trail for ethics compliance |
| **Adverse Event Capture**     | Natural language detection of safety signals         | Zone 2 processing → Events Agent |
| **Patient-Reported Outcomes** | Conversational PRO collection                        | OMOP transformation in Zone 2     |
| **Remote Monitoring**         | Telehealth visit documentation                       | Suite 5 integration               |

### 4A.3 Data Security Architecture

AI Scribe's architecture aligns with CTAP's three-zone TRE model and NIST CSF 2.0 requirements:

- **Alberta Data Residency**: All data remains within Alberta—"not a single byte travels outside the province"
- **Banking/Military-Grade Security**: Same encryption and access controls as financial and defence sectors
- **Open-Source Platform**: Being released for commercial and research use, enabling CTAP customization
- **Health Canada GCP Compatible**: Audit trails, version control, and electronic signature integration meeting ICH E6(R3) and CAN/CGSB-72.34-2017 requirements; 21 CFR Part 11 modules available for FDA-bound trials

### 4A.4 Amii Collaboration and PHAIR Lab Value

The AI Scribe integration exemplifies CTAP's collaboration with Amii and the **Applied AI Innovation in Healthcare** flagship:

| Contribution                       | Description                                                                                  |
| ---------------------------------- | -------------------------------------------------------------------------------------------- |
| **Dr. Ross Mitchell (PHAIR Lab)**  | Amii Fellow, Canada CIFAR AI Chair, AHS Chair in AI in Health, AI Scribe creator           |
| **AI + Health Hub**                | Institutional home (Pannu, Lemermeyer); implementation science research framework           |
| **Existing Deployment**            | 10 Alberta ED facilities, 6,700+ clinical sessions, proven at scale                          |
| **$1M External Funding**           | Healthcare Unburdened Grant (CMA, MD Financial, Scotiabank)                                  |
| **850+ Physician Expansion**       | Roll-out to Edmonton, Calgary, Red Deer emergency departments                                |
| **Open-Source Release**            | Platform available for research and commercial adaptation                                    |
| **CIFAR AI Chair Network**         | Collaboration with Abdalla (de-identification), Atanackovic (generative AI), Simpson (radiomics) |

**CFI Investment → Research Innovation:** This partnership transforms AI Scribe from an emergency department efficiency tool into a clinical trials data capture innovation—extending Amii's health AI expertise into the regulatory-compliant trial environment. The CFI investment directly enables research that cannot occur without it: validating AI Scribe in trial settings, developing CRAIDL agents with clinical trial data, and generating implementation science publications that advance the field nationally.

---

## 4B. CRAIDL AI Agent Software Development Contract

### 4B.1 Strategic Reallocation

Suite 4 includes $650,000 for contracted CRAIDL AI agent software development through the Alberta Machine Intelligence Institute (Amii), enabled through strategic reallocation from Suite 1a. By focusing the Vaccine Challenge Trial Unit on non-airborne pathogens (hepatitis C, enteric infections), CTAP reduced containment infrastructure requirements, freeing capital for AI software assets that accelerate the entire platform.

**Reallocation Rationale:**

| Factor | Airborne CHIM Design | Non-Airborne CHIM Design | Impact |
|--------|---------------------|-------------------------|--------|
| Containment | Negative pressure, HEPA exhaust, airlocks | Standard clinical ventilation | -$550,000 infrastructure |
| Pathogen focus | Broad (respiratory, enteric, blood-borne) | HCV (Houghton), enteric pathogens | Aligned with Alberta strengths |
| Regulatory pathway | Complex (BSL-2+ airborne) | Standard (BSL-2) | Faster approval |
| Savings realized | — | — | **$650,000 → CRAIDL Software Contract** |

This reallocation demonstrates strategic resource optimization: rather than building airborne containment that duplicates other Canadian facilities, CTAP invests in AI software infrastructure that is unique nationally.

### 4B.2 Contract Structure

The CRAIDL Software Development Contract with Amii delivers production-ready clinical trial AI agent software with perpetual institutional licenses:

| Deliverable | Description | Contract Value |
|-------------|-------------|----------------|
| **Protocol Agent Software** | Production-ready software for hypothesis-to-protocol conversion; perpetual license | $100,000 |
| **Data Management Agent Software** | CDISC-compliant data dictionary generation and validation software; perpetual license | $80,000 |
| **Ethics/Regulatory Agent Software** | Automated compliance checking and submission preparation software; perpetual license | $100,000 |
| **Statistical Analysis Agent Software** | Power calculation and adaptive design software; perpetual license | $80,000 |
| **Events/Safety Monitoring Agent Software** | Real-time adverse event detection software; perpetual license | $80,000 |
| **Budget & Contracts Agent Software** | Fair market value estimation software; perpetual license | $60,000 |
| **In Silico Assessment Agent Software** | Digital twin and synthetic control generation software; perpetual license | $100,000 |
| **Imaging/Radiomics Agent Software** | Quantitative imaging analysis software; perpetual license | $50,000 |

**Software Development Milestone Schedule:**

| Year | Contract Payment | Software Deliverables (with acceptance criteria) |
|------|-----------------|--------------------------------------------------|
| Year 1 | $150,000 | Protocol Agent v1.0 (production); Data Management Agent v0.9 (beta); source code delivery |
| Year 2 | $150,000 | Ethics Agent v1.0; Regulatory Agent v1.0; integration testing complete |
| Year 3 | $150,000 | In Silico Assessment Agent v1.0; synthetic control validation against historical trials |
| Year 4 | $100,000 | Full 8-agent suite v1.0; ACT-AEC deployment packaging; documentation |
| Year 5 | $100,000 | Performance optimization; national deployment support; maintenance handoff |
| **Total** | **$650,000** | **8 production AI agents with perpetual licenses** |

### 4B.3 Amii Letter of Support

Amii has provided formal commitment to this software development contract via letter from CEO Cam Linke (January 2026), confirming:

1. **CRAIDL Software Deliverables** — Contracted development of 8 clinical trial AI agents with defined acceptance criteria
2. **Perpetual Licensing** — All delivered software licensed to University of Alberta in perpetuity
3. **SDRE Compute Access** — GPU resources for development, testing, and production deployment
4. **Source Code Delivery** — Full source code and documentation transferred upon milestone completion

**Capital Asset Classification:** The $650,000 investment yields perpetual software licenses—a capital asset—not ongoing personnel or service costs. The software becomes institutional infrastructure, deployable indefinitely without recurring licensing fees.

### 4B.4 CRAIDL Development Acceleration

The contracted Amii software development accelerates CRAIDL delivery across all eight agents:

| Agent | Without Partnership | With Partnership | Acceleration |
|-------|--------------------|--------------------|--------------|
| Protocol Agent | Month 18 | Month 12 | 6 months |
| Data Management Agent | Month 24 | Month 15 | 9 months |
| Ethics Agent | Month 24 | Month 18 | 6 months |
| Regulatory Agent | Month 30 | Month 21 | 9 months |
| In Silico Assessment Agent | Month 36 | Month 27 | 9 months |
| Events Agent | Month 36 | Month 30 | 6 months |
| Budget & Contracts Agent | Month 42 | Month 33 | 9 months |
| Imaging/Radiomics Agent | Month 42 | Month 36 | 6 months |

**Impact:** Full CRAIDL software deployment shifts from Month 42 to Month 36, enabling earlier research output and faster path to sustainability through trial service revenue. The contracted approach delivers defined software assets rather than ongoing personnel costs.

---

## 5. Connect Care Integration

Connect Care's 4.4 million patient records, combined with 5+ years of longitudinal depth, enables two distinct AI capabilities that share infrastructure but serve different purposes:

**Synthetic Control Arms (SCA):** Replace or augment randomized control groups by constructing counterfactual cohorts from real-world data. Connect Care provides the population scale (massive covariate support, rare disease coverage) and longitudinal depth (pre-treatment trend matching) essential for causal validity. This enables regulatory-grade external controls for single-arm trials, particularly in rare diseases and oncology where traditional RCTs are impractical.

**Rare Disease Focus:** SCAs are particularly transformative for rare disease trials (EU definition: <5 per 10,000 population). CTAP's population scale enables identification of viable cohorts across both adult and pediatric rare diseases:

- **Adult rare disease threshold:** Connect Care's 4.4M records enable cohort identification for diseases as rare as ~440 adult patients provincially (1 per 10,000)
- **Pediatric rare disease threshold:** Alberta's ~950,000 children (0-17 years) support cohort identification for pediatric conditions as rare as ~95 patients provincially (1 per 10,000); the Stollery catchment (4 provinces, 3 territories, ~1.6M pediatric population) extends this to ~160 patients for conditions at 1 per 10,000
- **Ultra-rare coverage:** For conditions <1 per 100,000, federated queries through RareKids-CAN and DHDP extend reach to ~8M children nationally
- **Pediatric integration:** Suite 1's Pediatric Rare Disease Clinical Trials Unit generates treatment-arm data while Connect Care provides matched natural history controls from the largest North American pediatric catchment (316,000+ patient encounters annually)
- **Regulatory acceptance:** FDA (2019), EMA (2021), and Health Canada increasingly accept external/synthetic controls for rare disease indications where placebo arms are ethically problematic or statistically impractical

**Technical Implementation for Rare Disease SCAs:**

| Challenge                     | SCA Solution                | CTAP Infrastructure            |
| ----------------------------- | --------------------------- | ------------------------------ |
| Small sample size             | Population-scale donor pool | 4.4M Connect Care records      |
| Heterogeneous phenotypes      | Multi-dimensional matching  | OMOP CDM + trajectory modeling |
| Long natural history          | Longitudinal depth          | 5+ years EMR data              |
| Pediatric-to-adult transition | Age-spanning cohorts        | Stollery + adult EMR linkage   |
| Ultra-rare conditions         | Federated queries           | RareKids-CAN, DHDP, OHDSI      |

**RareKids-CAN Integration:** As Western anchor for the national RareKids-CAN network (SickKids Toronto coordination), CTAP's SCA capability enables multi-site rare disease trials where each site contributes treatment-arm patients while the combined provincial EMR data (Alberta + Ontario + BC) provides synthetic controls with sufficient statistical power.

**In Silico Assessment Agent:** CTAP's highest-ambition capability uses the same population-scale data for prospective trial prediction—"stress testing" proposed protocols before recruiting patients. While SCAs construct *retrospective* counterfactuals for completed interventions, the In Silico Agent generates *prospective* predictions about trial feasibility, recruitment projections, and potential effect sizes. This represents Canada's first prospective trial intelligence capability—transforming population-scale EMR data from evidence after the fact into decision support before execution.

**Strategic Differentiation:** No Canadian jurisdiction offers prospective trial feasibility simulation at population scale. International comparators (UK Biobank RAP, All of Us) focus on retrospective analytics; CTAP's In Silico capability positions Alberta as a trial design optimization authority. The agent addresses the most common cause of trial failure: over-optimistic eligibility assumptions that lead to under-enrollment.

**Data Flow Architecture:** The In Silico Agent operates within a tiered data governance model aligned with VITAL/GEMINI's established patterns. Data movement depends on query type and governance requirements:

| Data Type | Location | Access Pattern |
|-----------|----------|----------------|
| Population-level queries | AHS/Research Snowflake | Aggregate statistics returned |
| Identified cohorts/subpopulations | May be shared via TRE | Per-study governance approval |
| Compute-intensive datasets (e.g., imaging) | TRE ingestion | When Snowflake compute insufficient |
| Agent training data | TRE Zone 3 | Operates on approved outputs |

This architecture follows precedent established by the MANTA imaging platform (Libin Cardiovascular Institute, University of Calgary), a VITAL/GEMINI partner that demonstrates appropriate data movement patterns for compute-intensive research requiring infrastructure beyond Snowflake's capacity.

**Governance Realism:** CTAP does not presume unrestricted data access. Each data flow requires appropriate governance approval:
- Population-level feasibility queries operate on aggregate outputs within AHS governance
- Cohort-specific analyses require per-study data sharing agreements
- Large-scale compute transfers (imaging, multi-omics) follow established research data governance pathways

**TRE Integration Points:**

| TRE Component | In Silico Agent Function |
|---------------|--------------------------|
| Zone 3 compute | Agent training on governance-approved outputs |
| OMOP CDM | Standardized feature definitions for feasibility queries |
| GPU cluster | LLM-based protocol interpretation; compute-intensive analysis |
| Audit logging | Regulatory-grade query provenance |
| Researcher workspaces | Interactive protocol optimization interface |
| Data ingestion | Large datasets (imaging, genomics) requiring extended compute |

**In Silico Agent Capabilities:**

1. **Feasibility Assessment:** Given draft inclusion/exclusion criteria, estimates true eligible population size, geographic distribution, and impact of exclusion criteria inflation
2. **Recruitment Projections:** Simulates expected monthly accrual using historical care pathways and referral patterns; outputs probabilistic distributions, not point estimates
3. **Endpoint Realism:** Estimates baseline event rates, measurement frequency, and signal-to-noise ratios for candidate endpoints before locking protocol
4. **Effect Size Ranges:** Propagates uncertainty from real-world heterogeneity to produce effect size envelopes for sample size planning
5. **Design Trade-off Exploration:** Scores alternative designs (broader/narrower eligibility, pragmatic/explanatory) on power, timelines, cost, and operational risk

**Feasibility Validation:**

- **Infrastructure readiness:** VITAL and GEMINI demonstrate that population-scale analytics within AHS infrastructure are operationally feasible. The In Silico Agent extends this proven architecture with a new analytical layer.
- **Governance pathway:** The agent operates on aggregate outputs from AHS-managed queries, not patient-level data. This maintains AHS data custodianship while enabling trial intelligence capabilities.
- **TRL progression:** The agent begins at TRL 3 (research prototype) with a defined 3-year path to TRL 6 (prototype validated) through CVC pilot trials. Validation benchmarks include retrospective prediction accuracy against completed trial enrollment data.
- **Staged deployment:** Year 1-2: Develop feasibility query engine on historical trial data. Year 3-4: Prospective validation on active CVC trials. Year 5+: Integration with industry sponsor trial design workflows.

**Quantifiable Impact:** Industry partners report 40-60% of trials fail to meet enrollment targets. In Silico Assessment can pre-screen protocols against Alberta's actual population to validate assumptions before IRB submission, reducing futile trials and improving ethical stewardship of participant burden.

Both SCA and In Silico capabilities depend on the same infrastructure: VITAL/GEMINI's proven TRE/Snowflake architecture demonstrates that population-scale EMR analytics are operationally feasible in Alberta's regulatory context. This dual capability from shared infrastructure represents compelling efficiency for CFI's investment.

### 5.1 Integration Pathways

CTAP implements two distinct Connect Care integration pathways:

#### Pathway A: Bulk Extract for Population Analytics

**Purpose:** Enable trial feasibility queries, cohort identification, and RWE generation

**Mechanism:**

- AHS provides periodic bulk extracts to TRE Zone 1
- De-identification in Zone 2 transforms to OMOP CDM
- OMOP instance in Zone 3 supports aggregate queries

**Frequency:** Weekly (standard) or daily (for active trial monitoring)

**Governance:** Platform-level AHS agreement covering all CTAP trials

**Data Scope:**

- Demographics, diagnoses, procedures, medications, labs
- Excludes free-text notes (requires separate NLP agreement)

#### Pathway B: Real-Time FHIR for Enrolled Participants

**Purpose:** Enable eSource data capture for enrolled trial participants

**Mechanism:**

- FHIR API calls for specific participants with active consent
- Data flows directly to trial EDC via REDCap integration
- Real-time safety signal monitoring

**Frequency:** Real-time (event-driven)

**Governance:** Per-study consent + AHS data sharing agreement

**Data Scope:**

- Encounters, vitals, labs, medications for enrolled participants only
- Consent-scoped: only data elements specified in protocol

#### Pathway C: PACS/DICOM Integration for Imaging AI

**Purpose:** Enable AI-driven analysis of medical images for trial eligibility screening, radiomic biomarker extraction, and surrogate endpoint development

**Mechanism:**

- Direct connection to provincial PACS infrastructure via DICOM protocol
- AI algorithms deployed within clinical workflow using Epic's Cognitive Computing framework
- Radiomic feature extraction from standard-of-care images at acquisition time

**Capabilities:**

- Automated tumor segmentation and volumetric tracking (RECIST measurements)
- Radiomic feature extraction (texture, entropy, wavelet frequencies) for computational biomarkers
- Image harmonization across sites using ComBat normalization to ensure comparability between rural and academic centres
- Storage layer for "pre-reconstruction" raw sensor data (CT sinograms, MRI k-space) required for rawdiomics approaches
- Federated learning across imaging sites without moving massive DICOM datasets

**Frequency:** Real-time (at image acquisition) or batch processing

**Governance:** Imaging-specific data sharing agreement with AHS Diagnostic Imaging

**Data Scope:**

- DICOM images for consented trial participants
- Radiomic features extracted and linked to trial outcomes
- Raw sensor data for advanced rawdiomics analysis (where available)

### 5.2 Epic Cosmos Positioning

Epic's Cosmos research network provides an alternative pathway for multi-site feasibility. CTAP positions Cosmos as **complementary** rather than competitive:

| Use Case                     | CTAP TRE       | Epic Cosmos   |
| ---------------------------- | -------------- | ------------- |
| Alberta-only feasibility     | Primary        | Alternative   |
| Multi-provincial feasibility | Via OMOP/VITAL | Primary       |
| US/international feasibility | Via OHDSI      | Primary       |
| Prospective trial data       | Primary        | Not supported |
| AI agent development         | Primary        | Not supported |
| Biospecimen linkage          | Primary        | Not supported |

### 5.3 AHS Partnership Model

CTAP proposes a platform-level partnership with AHS:

| Element               | Current State | CTAP Model                           |
| --------------------- | ------------- | ------------------------------------ |
| Data agreements       | Per-study     | Platform-level master agreement      |
| Ethics approval       | Per-study     | CTAP as approved research platform   |
| Technical integration | Ad-hoc        | Standardized APIs and pipelines      |
| Governance            | Fragmented    | Joint CTAP-AHS Data Access Committee |
| Cost recovery         | Variable      | Transparent fee schedule             |

### 5.4 Connect1d Integration: Data Platform Use Case

**Connect1d Canada** exemplifies how Suite 4's data platform enables complex multi-source integration. This pan-Canadian Type 1 Diabetes patient registry, transitioning to Alberta Diabetes Institute leadership under Dr. Peter Senior, demonstrates the "data integration layer" concept central to CTAP's value proposition.

#### Data Flow Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                    CONNECT1D DATA FLOWS                          │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  ┌──────────────┐     ┌──────────────┐     ┌──────────────┐     │
│  │ Connect1d    │     │ Wearables    │     │ Connect Care │     │
│  │ Platform     │     │ (CGM, etc.)  │     │ (AHS)        │     │
│  │ User Data    │     │ Device Data  │     │ EHR Data     │     │
│  └──────┬───────┘     └──────┬───────┘     └──────┬───────┘     │
│         │                    │                    │              │
│         ▼                    ▼                    ▼              │
│  ┌─────────────────────────────────────────────────────────────┐│
│  │              SUITE 4: TRE DATA INTEGRATION                   ││
│  │  ┌────────────────────────────────────────────────────────┐ ││
│  │  │ Zone 2: Controlled Processing                          │ ││
│  │  │ - Consent verification (dynamic consent model)         │ ││
│  │  │ - De-identification before research use                │ ││
│  │  │ - OMOP transformation (diabetes phenotypes)            │ ││
│  │  │ - Snowflake integration (AHS bulk extracts)            │ ││
│  │  └────────────────────────────────────────────────────────┘ ││
│  │  ┌────────────────────────────────────────────────────────┐ ││
│  │  │ Zone 3: Research Environment                           │ ││
│  │  │ - Integrated T1D research database                     │ ││
│  │  │ - CGM + EHR + patient-reported outcomes                │ ││
│  │  │ - Trial-ready cohorts for decentralized trials         │ ││
│  │  └────────────────────────────────────────────────────────┘ ││
│  └─────────────────────────────────────────────────────────────┘│
└─────────────────────────────────────────────────────────────────┘
```

#### Integration Capabilities

| Data Source                              | Integration Mechanism                   | Suite 4 Role                                                  |
| ---------------------------------------- | --------------------------------------- | ------------------------------------------------------------- |
| **Connect1d Platform**             | REST API                                | Patient-reported data, study matching                         |
| **CGM Devices**                    | Device data ingestion pipeline          | Continuous glucose monitoring streams                         |
| **Light/Baghelani Glucose Sensor** | Suite 5 Device APIs                     | Validation vs commercial CGM (microwave resonator technology) |
| **Connect Care**                   | FHIR API (enrolled) / Bulk (population) | Clinical outcomes, A1C, complications                         |
| **AHS Snowflake**                  | Secure bulk extract                     | Population-level phenotyping                                  |
| **Diabetes Action Canada**         | SPOR network federation                 | National cohort queries                                       |

**Device Validation Use Case:** The Connect1d integration provides an ideal testbed for validating novel diabetes devices. Dr. Peter Light and Dr. Masoud Baghelani's microwave glucose sensor (ADI/ECE) can be validated against commercial CGM devices within the same TRE environment, with Connect Care EHR data providing clinical outcome endpoints.

#### Value for Decentralized Diabetes Trials

Connect1d integration demonstrates Suite 4's capacity to support **decentralized clinical trials** (DCTs):

1. **Remote Participant Engagement**: Connect1d's digital registry enables remote screening and enrollment without site visits
2. **Wearable Data Capture**: CGM data flows directly to TRE Zone 2 for regulatory-grade processing
3. **EHR-Linked Outcomes**: Connect Care integration provides clinical endpoints without manual data collection
4. **National Recruitment**: Pan-Canadian reach through Diabetes Action Canada SPOR network

#### Cross-Suite Integration

| Suite             | Connect1d Integration Point                                              |
| ----------------- | ------------------------------------------------------------------------ |
| **Suite 4** | TRE data platform, OMOP transformation, AHS Snowflake linkage            |
| **Suite 5** | eConsent workflows, wearable data ingestion, decentralized trial tools   |
| **Suite 2** | Biospecimen linkage for T1D research (islet samples, outcome annotation) |

This integration positions Connect1d as a **proof-of-concept** for CTAP's broader vision: enabling complex multi-source trials that combine patient registries, wearable devices, and health system data within a unified, privacy-preserving architecture.

---

## 6. Regulatory Compliance Matrix

### 6.1 Standards Mapping

| Standard                               | Jurisdiction         | Applicability                               | Suite 4 Implementation                                   |
| -------------------------------------- | -------------------- | ------------------------------------------- | -------------------------------------------------------- |
| **Health Canada Division 5**     | Canada               | **All trials**                        | CTA support, 15-year retention, GCP inspection readiness |
| **ICH E6(R3)**                   | Canada/International | **All trials** (mandatory April 2026) | Quality-by-design, risk-based monitoring, CTQ factors    |
| **TCPS2 (2022)**                 | Canada               | **All trials**                        | REB workflow, consent templates, privacy safeguards      |
| **Health Information Act (HIA)** | Alberta              | **All AHS data**                      | Three-zone TRE, custodian governance                     |
| **CAN/CGSB-72.34-2017**          | Canada               | **All electronic records**            | Audit trails, e-signatures, system validation            |
| **CDISC (CDASH/SDTM)**           | International        | Regulatory submissions                      | Automated CDASH → SDTM transformation                   |
| **HL7 FHIR R4**                  | International        | EMR integration                             | Connect Care FHIR APIs                                   |
| **OMOP CDM v5.4**                | International        | Federation, analytics                       | Full ETL from Connect Care                               |
| **FAIR Principles**              | International        | All research data                           | Metadata catalog, persistent identifiers                 |
| **21 CFR Part 11**               | USA                  | FDA submissions only                        | Optional compliance module                               |
| **EU Annex 11**                  | Europe               | EMA submissions only                        | GMP computerized systems alignment                       |
| **NIST CSF 2.0**                 | International        | Cybersecurity baseline                      | Five core functions (see 6.4)                            |

### 6.4 NIST Cybersecurity Framework 2.0 Alignment

Suite 4's data platform aligns with the NIST Cybersecurity Framework 2.0, implementing all five core functions essential for international clinical trial partnerships and US federal collaboration:

| CSF Function       | Suite 4 Implementation                   | Key Controls                                            |
| ------------------ | ---------------------------------------- | ------------------------------------------------------- |
| **IDENTIFY** | Asset inventory, risk assessment         | Data classification, system catalog, dependency mapping |
| **PROTECT**  | Access control, encryption               | Zero-trust architecture, TLS 1.3, AES-256 at rest       |
| **DETECT**   | Continuous monitoring, anomaly detection | SIEM integration, AI-based threat detection             |
| **RESPOND**  | Incident response procedures             | 24/7 security operations, breach notification protocols |
| **RECOVER**  | Business continuity, disaster recovery   | Daily backups, tested failover, 4-hour RTO              |

**Rationale for NIST CSF 2.0:**

- Required for partnerships with US federal agencies (NIH, FDA, DoD)
- Aligns with Health Canada's evolving cybersecurity expectations
- Supports clinical trial data protection for multi-national sponsors
- Complements Alberta's FOIP and HIA requirements

**Research Security Alignment:** NIST CSF 2.0 alignment satisfies federal research security requirements (STRAC/NSGRP) for infrastructure hosting Sensitive Technology Research Areas (STRA), including AI and large-scale health data analytics. This positions CTAP's TRE as a compliance engine for dual-use research oversight.

### 6.2 Compliance Implementation

| Requirement       | Implementation                 | Validation       |
| ----------------- | ------------------------------ | ---------------- |
| Audit trails      | Immutable logs with timestamps | Annual audit     |
| Access controls   | Role-based, project-isolated   | Quarterly review |
| Data integrity    | Checksums, version control     | Continuous       |
| System validation | IQ/OQ/PQ per GAMP5             | Before go-live   |
| E-signatures      | Part 11 compliant module       | Validated        |
| Backup/recovery   | Daily backup, tested recovery  | Quarterly test   |
| Change control    | Documented change management   | Per change       |

### 6.3 Inspection Readiness

Suite 4 maintains inspection readiness aligned with Canadian regulatory requirements as primary, with international readiness for multi-jurisdictional trials:

**Primary (All Trials):**

- Health Canada GCP inspections (Division 5 compliance)
- AHS privacy audits (HIA compliance)
- Institutional research compliance audits
- REB/HREB annual reviews

**International (As Required):**

- FDA pre-approval inspections (for trials with US submissions)
- EMA inspections (for trials with European submissions)

---

## 7. Federation Architecture

### 7.1 Three Federation Layers

CTAP implements federation at three scales:

#### Layer 1: Intra-Alberta

**Partners:** CBSR sites, AHS facilities, U Calgary, U Lethbridge

**Mechanism:** Shared OMOP instance with institutional partitions

**Governance:** CTAP Steering Committee

**Use Cases:** Provincial feasibility, multi-site Alberta trials

#### Layer 2: National

**Partners:** PRAIRIE Hub, CGEn, CCTG, RareKids-CAN, ACT-AEC

**Mechanism:** Federated OMOP queries (no data movement)

**Governance:** Network-specific DUAs with reciprocity

**Use Cases:** Pan-Canadian trials, rare disease research

#### Layer 3: International

**Partners:** OHDSI network, disease-specific consortia

**Mechanism:** Standardized OMOP queries returning aggregates only

**Governance:** OHDSI community standards

**Use Cases:** Global evidence generation, international trials

### 7.2 Federation Governance

| Decision                | Authority                     | Process                |
| ----------------------- | ----------------------------- | ---------------------- |
| Join new network        | CTAP Steering + institutional | Formal review          |
| Execute federated query | Data Access Committee         | Application + approval |
| Share aggregate results | Study PI                      | Per-protocol           |
| Release individual data | Not permitted                 | N/A                    |

### 7.3 DHDP Pan-Canadian Integration

CTAP's federation strategy includes strategic alignment with the **Digital Health and Discovery Platform (DHDP)**, a pan-Canadian initiative funded through Innovation, Science and Economic Development Canada's Strategic Innovation Fund ($49M federal + $108M partner cash + $165M in-kind).

#### Clinical Impact: Why Federation Matters

Federation is not merely a technical architecture—it is a clinical multiplier. DHDP's 97 consortium partners represent patient populations that Alberta alone cannot reach:

- **Rare Diseases**: Conditions affecting <1 in 10,000 patients require multi-provincial cohorts for statistical power. CTAP's federated queries through DHDP can identify rare disease cohorts across 4.4M+ patients nationally.
- **AI Generalization**: Models trained on Alberta data alone may not generalize to other populations. DHDP's federated learning enables training across diverse Canadian demographics without data movement.
- **GEMINI Integration**: DHDP includes Ontario's GEMINI network. CTAP participation enables direct collaboration with the project that demonstrated 26% mortality reduction—extending that capability to clinical trials.

#### DHDP Partnership Opportunity

DHDP uses federated learning to accelerate precision medicine—patient data never leaves its site of origin while AI models train across 97 consortium partners. This architecture complements CTAP's three-zone TRE model.

| Capability                         | CTAP Suite 4                        | DHDP                            | Integration Value                |
| ---------------------------------- | ----------------------------------- | ------------------------------- | -------------------------------- |
| **Architecture**             | 3-zone TRE (local)                  | Federated appliances (national) | CTAP as Alberta node             |
| **AI Framework**             | CRAIDL agents                       | Federated ML (integrate.ai)     | Model sharing                    |
| **Data Model**               | OMOP CDM                            | Variable (GA4GH, FHIR)          | OMOP standardization             |
| **Focus**                    | Clinical trials                     | Precision medicine research     | Translational bridge             |
| **Regulatory Grade**         | HC Division 5 + ICH E6(R3)          | Research-focused                | CTAP adds trial pathway          |
| **International Compliance** | Optional 21 CFR Part 11/EU Annex 11 | N/A                             | Multi-jurisdictional submissions |
| **EMR Integration**          | Connect Care (4.4M)                 | Multi-provincial                | Expanded patient reach           |

#### Integration Model: Selective Use Cases (Recommended)

Rather than full platform integration, CTAP proposes targeted collaboration for specific high-value use cases:

**1. Rare Disease Multi-Provincial Feasibility**

- CTAP provides Alberta cohort via OMOP federated query
- DHDP aggregates national cohort across provinces
- Combined feasibility for RareKids Network trials
- Addresses sample size limitations for ultra-rare conditions

**2. AI Biomarker Development Pipeline**

- CRAIDL Protocol Agent designs validation trial
- DHDP federated learning trains biomarker model on national data
- CTAP executes prospective trial validation
- Seamless research-to-regulatory pathway

**3. MS Cell Therapy Trials**

- Aligns with DHDP's neurological disease focus
- Pre-trial biomarker identification via federated learning
- CTAP provides Health Canada GCP-compliant trial execution (with optional 21 CFR Part 11 for US submissions)
- Connects to Suite 3 ACTM cell manufacturing

**4. Connect1d Decentralized Diabetes Trials**

- Type 1 diabetes wearable data federation
- DHDP extends reach beyond Alberta
- CTAP provides regulatory-grade data management
- Dr. Peter Senior's national network integration

#### Strategic Implications

**Leveraged Investment:** DHDP's $322M total investment (federal + partner + in-kind) becomes complementary to CFI ask rather than duplicative.

**Timeline Alignment:** Both DHDP and CTAP target 2027 completion, enabling coordinated deployment.

**National Impact:** Demonstrates Alberta's commitment to pan-Canadian health data infrastructure while maintaining institutional governance.

**Standards Leadership:** CTAP's OMOP expertise positions Alberta to influence national data harmonization through DHDP network.

#### Governance Alignment

| Governance Element | CTAP                  | DHDP                       | Coordination Mechanism   |
| ------------------ | --------------------- | -------------------------- | ------------------------ |
| Data custodianship | AHS (Zone 1)          | Site-specific              | Maintained locally       |
| Access approval    | Data Access Committee | DHDP network protocols     | Harmonized DUA templates |
| Ethics             | HREB/CHR              | Multi-REB                  | Reciprocal recognition   |
| Privacy            | HIA                   | Provincial HIA equivalents | Pan-Canadian standards   |
| Sustainability     | CFI + industry        | SIF + industry             | Complementary funding    |

---

## 8. Sustainability Model

### 8.1 O&M Cost and IOF Offset

**Suite 4 O&M Requirements:**

| Component | Amount |
|-----------|--------|
| Suite 4 Capital | $2,635,000 |
| Annual O&M (12% + $40K software) | $356,200 |
| 5-Year O&M Total | $1,781,000 |

**IOF Contribution (Suite 4 share):**

Suite 4 represents 32% of total CTAP capital ($2.635M / $8.314M), receiving proportional IOF:

| Component | Amount |
|-----------|--------|
| Suite 4 IOF Share (32% of $2.49M) | ~$790,000 |
| Net Institutional O&M (5-year) | ~$991,000 |
| Net Annual Institutional Commitment | ~$198,000/yr |

*Note: Suite 4 has the highest O&M rate (12%) due to cloud compute, software maintenance, and security compliance requirements. Industry service revenue is projected to cover the majority of net institutional commitment by Year 3.*

### 8.2 Revenue Streams

| Year | CFI/IOF | Industry Services | Grants | Institutional | Total |
| ---- | ------- | ----------------- | ------ | ------------- | ----- |
| 1    | $158K   | $0                | $100K  | $100K         | $358K |
| 2    | $158K   | $100K             | $150K  | $100K         | $508K |
| 3    | $158K   | $250K             | $200K  | $100K         | $708K |
| 4    | $158K   | $400K             | $200K  | $100K         | $858K |
| 5    | $158K   | $500K             | $200K  | $100K         | $958K |
| 6+   | $0      | $600K             | $200K  | $200K         | $1,000K |

*Note: CFI/IOF reflects proportional IOF allocation (~$158K/yr for 5 years). Industry services (TRE access, CRAIDL, CDISC) projected to reach full cost recovery by Year 5.*

### 8.3 Industry Service Pricing

| Service                      | Unit           | Price      |
| ---------------------------- | -------------- | ---------- |
| Feasibility query (OMOP)     | Per query      | $2,500     |
| Cohort identification        | Per study      | $10,000    |
| TRE workspace provisioning   | Per study-year | $15,000    |
| CRAIDL agent access          | Per study      | $5,000     |
| CDISC transformation         | Per submission | $20,000    |
| Full-service data management | Per study      | Negotiated |

### 8.3 Cost Recovery Model

| Cost Category     | Recovery Mechanism             |
| ----------------- | ------------------------------ |
| Cloud compute     | Per-project usage tracking     |
| Storage           | Per-TB allocation              |
| Personnel         | Core funding + project charges |
| Software licenses | Institutional + project share  |
| Compliance/audit  | Platform overhead              |

---

## 9. Equipment and Infrastructure

### 9.1 Budget Breakdown

*Note: This budget reflects SDRE integration optimization and Tier 1 cost reductions. Software licensing converted from perpetual to phased contracts. AWS infrastructure builds on $850K secured investment plus $500K+ in discussion (see Institutional Investment Foundation above).*

| Item                                            | Original     | Revised      | Notes                                                                     |
| ----------------------------------------------- | ------------ | ------------ | ------------------------------------------------------------------------- |
| **CRAIDL Inference Servers**              | $200,000     | $200,000     | Production inference for 8 CRAIDL AI agents; 24/7 availability            |
| **TRE Zone 2 Operational Storage**        | $150,000     | $150,000     | Fast NVMe tier for OMOP ETL, CDISC transforms                             |
| **Networking, firewalls, VPN**            | $180,000     | $180,000     | Zero-trust perimeter, zone isolation, NIST CSF 2.0                        |
| **Identity management system**            | $100,000     | **$0**       | *Deferred to Year 2; AWS IAM provides initial capability*                 |
| **EDC/eSource platform (3-year contract)** | $400,000    | **$160,000** | *Phased from perpetual; 21 CFR 11 compliant*                              |
| **Clinical Trial Data Platform (3-year)** | $300,000     | **$120,000** | *Phased from perpetual; REDCap Cloud, Medidata*                           |
| **AWS professional services (Year 1)**    | $300,000     | **$150,000** | *Phased: $150K Year 1, remainder to O&M*                                  |
| **AWS cloud credits (5-year)**            | $500,000     | $500,000     | Zone 3 compute, AI services, storage (Calgary region)                     |
| **PACS/DICOM Integration Gateway**        | $100,000     | $100,000     | Provincial PACS connection for imaging AI                                 |
| **Image Harmonization Software**          | $50,000      | $50,000      | ComBat normalization, multi-site standardization                          |
| **Rawdiomics Hot Cache**                  | $50,000      | $50,000      | High-speed cache for active CT sinograms, MRI k-space                     |
| **BioBank-TRE Integration**               | $75,000      | $75,000      | OpenSpecimen API, FHIR endpoints, Zone 2/3 data flows                     |
| **OMOP ETL & OHDSI Tooling**              | $100,000     | $100,000     | Leverages VITAL; ATLAS, Achilles deployment                               |
| **SDRE Integration & Access**             | $100,000     | $100,000     | Reserved SDRE capacity, access fees, integration development              |
| **AI Scribe-EDC Integration**             | $75,000      | $75,000      | Voice-to-structured clinical trial data pipeline (Mitchell lab)           |
| **CRAIDL LLM Development Environment**    | $50,000      | $50,000      | SDRE GPU allocation for model versioning, evaluation                      |
| **AHS Snowflake Integration**             | $75,000      | $75,000      | Secure pipeline for Zone 1 bulk extracts from Connect Care                |
| **CRAIDL AI Agent Software Contract**     | $650,000     | $650,000     | Contracted software development for 8 CRAIDL agents with perpetual licenses; funded via non-airborne CHIM reallocation (see Section 4B) |
| **Total**                                 | $3,455,000   | **$2,985,000** | **$470,000 savings (Tier 1)**                                           |

**Tier 1 Software Licensing Reduction Summary:**

| Item | Original | Revised | Savings | Rationale |
|------|----------|---------|---------|-----------|
| Identity Management | $100,000 | $0 | $100,000 | Deferred to Year 2; AWS IAM for initial deployment |
| EDC/eSource Platform | $400,000 | $160,000 | $240,000 | 3-year contract vs. perpetual license |
| Clinical Data Platform | $300,000 | $120,000 | $180,000 | 3-year contract vs. perpetual license |
| AWS Pro-Serve | $300,000 | $150,000 | $150,000 | Phased: Year 1 only; remainder to O&M |
| **Total Software Savings** | | | **$670,000** | |

**CFI Eligibility Rationale for Multi-Year Software Contracts:**

Multi-year software contracts are explicitly CFI-eligible as capital expenditure when structured as:

1. **Fixed-term committed agreements** - 3-year contracts represent infrastructure lifecycle commitments, not annual subscriptions
2. **Prepaid or committed pricing** - Negotiated pricing locks in rates for the commitment period
3. **Essential research infrastructure** - Platforms (EDC, CTDMS) are foundational infrastructure enabling clinical trials
4. **21 CFR Part 11 compliance requirement** - Regulatory-grade platforms require validated environments only available through enterprise licensing

**CFI Precedent:** Multi-year software licenses and cloud capacity commitments have been approved in prior CFI Innovation Fund competitions (IF2020, IF2023) for research platforms where:
- The software is essential to the research capability (not general-purpose IT)
- Fixed-term agreements provide cost predictability for institutional budget planning
- On-premises alternatives would require significantly greater capital investment

*Note: Identity management deferred as AWS IAM provides sufficient capability for Year 1 deployment.*

### 9.2 Vendor Considerations

| Component       | Preferred Vendor(s)                | Selection Criteria          |
| --------------- | ---------------------------------- | --------------------------- |
| On-prem compute | Dell, HPE, Lenovo                  | RDSS compatibility          |
| EDC platform    | Medidata, Veeva, REDCap Enterprise | 21 CFR 11, CDASH            |
| OMOP tools      | OHDSI (open source)                | Community standard          |
| Cloud           | AWS (Calgary region)               | Data residency, AI services |
| GPU cluster     | NVIDIA DGX or equivalent           | LLM performance             |

---

## 10. Key Personnel

| Role                                    | Responsibility                            | FTE     | Funding       |
| --------------------------------------- | ----------------------------------------- | ------- | ------------- |
| **CTAP Data Architect**           | Platform design, integration              | 1.0     | Institutional |
| **CRAIDL Development Lead**       | AI agent integration, acceptance testing  | 1.0     | CFI/Grants    |
| **Data Engineer (OMOP)**          | ETL, data quality                         | 1.0     | CFI           |
| **Data Engineer (CDISC)**         | Regulatory transforms                     | 0.5     | Cost recovery |
| **Security & Compliance Officer** | Audit, validation                         | 0.5     | Institutional |
| **Amii CIFAR AI Chairs**          | Research direction, AI Scribe integration | In-kind | Amii          |
| **Dr. Ross Mitchell**             | AI Scribe clinical documentation lead     | In-kind | Amii/Medicine |
| **AHS Informatics Liaison**       | Connect Care integration                  | In-kind | AHS           |

**Note:** CRAIDL AI agent software is developed under contract with Amii (see Section 4B). The contracted deliverables include production-ready software with perpetual licenses; Amii's internal staffing of the contract is their operational decision, not a CFI personnel allocation.

---

## 11. Implementation Timeline

### Phase 1: Foundation (Months 1-12)

| Milestone                          | Target   | Dependencies      |
| ---------------------------------- | -------- | ----------------- |
| TRE Zone 2/3 infrastructure        | Month 6  | Procurement, RDSS |
| EDC platform deployment            | Month 8  | Vendor selection  |
| Connect Care bulk extract pipeline | Month 10 | AHS agreement     |
| OMOP ETL (core tables)             | Month 12 | Zone 2 infra      |

### Phase 2: AI Integration (Months 13-24)

| Milestone                  | Target   | Dependencies       |
| -------------------------- | -------- | ------------------ |
| GPU cluster deployment     | Month 14 | Procurement        |
| Protocol Agent v1.0        | Month 18 | GPU, CVC templates |
| Data Management Agent v1.0 | Month 20 | OMOP, EDC          |
| FHIR real-time integration | Month 24 | AHS agreement      |

### Phase 3: Full Operations (Months 25-36)

| Milestone                     | Target   | Dependencies          |
| ----------------------------- | -------- | --------------------- |
| All 7 CRAIDL agents deployed  | Month 30 | Agent development     |
| OHDSI network participation   | Month 30 | OMOP validation       |
| Industry services launch      | Month 32 | Pricing, contracts    |
| CDISC transformation pipeline | Month 36 | Regulatory validation |

### Phase 4: Scale and Federation (Months 37-48)

| Milestone                 | Target   | Dependencies         |
| ------------------------- | -------- | -------------------- |
| VITAL network integration | Month 40 | National agreements  |
| CRAIDL agents to ACT-AEC  | Month 42 | Deployment packaging |
| Full sustainability       | Month 48 | Revenue streams      |

---

## 12. Risk Mitigation

| Risk                           | Likelihood | Impact | Mitigation                                  |
| ------------------------------ | ---------- | ------ | ------------------------------------------- |
| AHS data agreement delays      | Medium     | High   | Early engagement, platform-level agreement  |
| CRAIDL performance variability | Medium     | Medium | Iterative development, human-in-loop        |
| Regulatory changes             | Low        | Medium | Modular architecture, compliance monitoring |
| Talent recruitment             | Medium     | Medium | Training programs, competitive salaries     |
| Cost overruns                  | Medium     | Medium | Phased implementation, cost tracking        |

---

## Appendix A: Glossary

| Term               | Definition                                                        |
| ------------------ | ----------------------------------------------------------------- |
| **CDASH**    | Clinical Data Acquisition Standards Harmonization                 |
| **CDISC**    | Clinical Data Interchange Standards Consortium                    |
| **CRAIDL**   | Clinical Research Assistants for Intelligent Design and anaLysis  |
| **EDC**      | Electronic Data Capture                                           |
| **HIA**      | Health Information Act (Alberta)                                  |
| **OMOP CDM** | Observational Medical Outcomes Partnership Common Data Model      |
| **OHDSI**    | Observational Health Data Sciences and Informatics                |
| **SDTM**     | Study Data Tabulation Model                                       |
| **TRE**      | Trusted Research Environment                                      |
| **VITAL**    | Virtual Integrated Translational Analytics Lab (Canadian network) |

---

## Appendix B: Related Documents

- [Suite 2: Living Biorepository](suite_2_living_biorepository.md) - Integration with biospecimen systems
- [UAlberta AWS TRE Assessment](../background/UAlberta_AWS_TRE_Assessment.md) - Foundational TRE architecture
- [Competitive Analysis](../background/competitive_analysis_and_exemplars.md) - International comparators
- [APL Biobank Data Infrastructure Summary](../background/CBRF2_2023_00132_Data_Infrastructure_Summary.md) - Prior CFI proposal

---

*Document Version: 1.0 | December 2024 | CFI Innovation Fund 2027*
