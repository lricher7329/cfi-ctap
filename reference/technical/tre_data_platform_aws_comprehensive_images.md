# Trusted Research Environment & Data Platform: AWS Technical Specification

**Project:** Clinical Trials Acceleration Platform (CTAP) - CFI Innovation Fund 2027
**Document Purpose:** AWS Partnership Scoping & Quotation Request
**Document Version:** 1.0
**Date:** January 2026

---

## Executive Summary

The **Trusted Research Environment (TRE) and Data Platform** (Suite 4) establishes Canada's first AI-native clinical trials data infrastructure at the University of Alberta. This document provides AWS with the technical specifications required to develop an official quote for cloud infrastructure, professional services, and ongoing compute/storage needs.

**Total Suite 4 Budget: $2,805,000 CAD** (CFI request)

**AWS Components Requested:**
- Cloud Credits & Compute Reserve: $500,000 (5-year committed spend)
- AWS Professional Services: $300,000 (architecture, security, MLOps consulting)

**Key AWS Services Required:**
- EC2/EKS (compute)
- S3 (storage)
- SageMaker (AI/ML)
- RDS (databases)
- API Gateway
- Cognito (identity)
- CloudWatch (monitoring)
- Step Functions (workflow orchestration)

**Region Requirement:** AWS Canada Central (Calgary) for data sovereignty compliance

---

## 1. Strategic Context

### 1.1 Why This Platform?

CTAP addresses a critical gap: while the University of Alberta possesses exceptional discovery assets (Cryo-EM, TMIC, GlycoNet) and manufacturing capabilities (ACTM, CMPC), there is no unified data architecture connecting these upstream investments to downstream clinical validation.

Suite 4 integrates three previously fragmented components:

| Component | Function | AWS Role |
|-----------|----------|----------|
| **Trusted Research Environment** | Secure, privacy-preserving analytics for prospective clinical trials | Primary hosting, compute, storage |
| **OMOP Common Data Model** | Canonical representation enabling federation with OHDSI, VITAL, and international networks | Database hosting, ETL compute |
| **CRAIDL AI Agent Framework** | Eight coordinated AI agents accelerating RCT lifecycle | SageMaker, GPU instances, LLM inference |

### 1.2 Existing AWS Engagement

The University of Alberta has completed an **AWS TRE Assessment** (~$500K in-kind from AWS ProServe) evaluating institutional readiness for secure, cloud-based health research analytics. This foundational work positions CTAP alongside international best practices:

| Platform | Model | Parallel to CTAP |
|----------|-------|------------------|
| **UK Biobank RAP** | AWS + DNAnexus | "Bring researchers to data" architecture |
| **All of Us** | Cloud Researcher Workbench | OMOP CDM, tiered access, cohort builder |
| **FinnGen** | Certified sandbox | National registry linkage, no raw export |
| **Genomics England** | NHS-linked TRE | WGS + clinical records, airlock outputs |

---

## 2. Three-Zone Architecture

### 2.1 Zone Overview

CTAP implements a three-zone TRE model aligned with Alberta's Health Information Act (HIA) and international best practices.

![tre-overview](/Users/lawrencericher/writing/projects/cfi-ctap/briefs/tre-overview.png)

```

```

### 2.2 Zone-Specific AWS Requirements

| Zone | AWS Services | Compute | Storage | Notes |
|------|--------------|---------|---------|-------|
| **Zone 1** | N/A | N/A | N/A | AHS-controlled; outside AWS scope |
| **Zone 2** | EC2, Step Functions | Medium (ETL workloads) | 50 TB initial | SDRE primary; AWS for specific workloads |
| **Zone 3** | EC2, SageMaker, S3, RDS | High (AI/ML, analytics) | 100 TB initial | Primary AWS deployment zone |

### 2.3 Hybrid Infrastructure Model

CTAP implements a hybrid on-premises/cloud architecture to optimize cost and regulatory compliance:

![hybrid-model](/Users/lawrencericher/writing/projects/cfi-ctap/briefs/hybrid-model.png)

---

## 3. System Interconnection Architecture

### 3.1 Master Interconnection Diagram

![ctap-data-interconnections](/Users/lawrencericher/writing/projects/cfi-ctap/briefs/ctap-data-interconnections.png)

```

```

### 3.2 Integration Points Summary

| Source System | Target | Protocol | Frequency | AWS Service |
|---------------|--------|----------|-----------|-------------|
| **Connect Care (Epic)** | TRE Zone 1 | Bulk extract/FHIR | Weekly/Real-time | N/A (AHS) |
| **AHS Snowflake** | SDRE/AWS Zone 2 | Bulk extract | Weekly/Daily | S3, Glue |
| **SDRE** | AWS Zone 3 | Globus | Per-batch | S3, Direct Connect |
| **AI Scribe** | TRE Zone 2 | REST API | Real-time | API Gateway |
| **OpenSpecimen (Suite 2)** | TRE Zone 2/3 | REST/FHIR | Real-time | API Gateway, RDS |
| **Omics Facilities (Suite 3)** | TRE Zone 3 | Secure file transfer | Per-batch | S3, Transfer Family |
| **Wearables (Suite 5)** | TRE Zone 2 | Custom APIs | Per-device | IoT Core, Kinesis |
| **OHDSI Network** | External | Federated queries | On-demand | EKS, API Gateway |
| **VITAL/DHDP** | External | Federated queries | On-demand | API Gateway |

### 3.3 BioBank-TRE Integration Architecture

![zone-model-concept](/Users/lawrencericher/writing/projects/cfi-ctap/briefs/zone-model-concept.png)

---

## 4. AWS Services Mapping

### 4.1 Core Services Required

| CTAP Function | AWS Service | Sizing Estimate | Notes |
|---------------|-------------|-----------------|-------|
| **Trial Data Lake** | S3 | 100 TB initial, 500 TB Year 5 | Intelligent tiering, versioning |
| **OMOP CDM Database** | RDS PostgreSQL | db.r6g.2xlarge | Multi-AZ, encrypted |
| **AI/ML Training** | SageMaker | ml.p4d.24xlarge (spot) | GPU training workloads |
| **AI Inference** | SageMaker Endpoints | ml.g5.xlarge | CRAIDL agent inference |
| **Container Orchestration** | EKS | 10-20 nodes | CRAIDL agent orchestration |
| **Researcher Workspaces** | SageMaker Studio | 50 concurrent users | Jupyter, RStudio |
| **API Management** | API Gateway | 1M requests/month | FHIR, REST APIs |
| **Identity** | Cognito | 500 users | Federated with UAlberta |
| **Secrets Management** | Secrets Manager | 100 secrets | Database credentials, API keys |
| **Monitoring** | CloudWatch | Full stack | Metrics, logs, alarms |
| **Workflow Orchestration** | Step Functions | 10,000 executions/month | ETL pipelines |
| **File Transfer** | Transfer Family | SFTP/FTPS | Omics data ingestion |

### 4.2 AWS Services by Function

![aws-services](/Users/lawrencericher/writing/projects/cfi-ctap/briefs/aws-services.png)

---

## 5. Equipment & Budget Details

### 5.1 Suite 4 Equipment List (AWS-Relevant Items)

| ID | Component | Unit Cost | Total | AWS Services |
|----|-----------|-----------|-------|--------------|
| 28 | AWS Cloud Credits & Compute Reserve (5-year) | $500,000 | $500,000 | EC2, S3, SageMaker, RDS, etc. |
| 29 | AWS Pro-Serve / Architecture Consulting | $300,000 | $300,000 | Professional Services |
| 35 | Identity Management System (Zero-Trust) | $100,000 | $100,000 | Cognito, IAM |
| 37 | OMOP ETL & OHDSI Tooling | $100,000 | $100,000 | RDS, Glue, Step Functions |
| 47 | BioBank-TRE Integration | $75,000 | $75,000 | API Gateway, Lambda |
| 66 | AHS Snowflake Integration | $75,000 | $75,000 | Glue, S3, Step Functions |

### 5.2 Full Suite 4 Budget Summary

| Category | Amount (CAD) |
|----------|--------------|
| AWS Cloud Credits & Compute | $500,000 |
| AWS Professional Services | $300,000 |
| CRAIDL Inference Servers (on-prem) | $200,000 |
| TRE Zone 2 Operational Storage (on-prem) | $150,000 |
| Networking & Security Core | $180,000 |
| Clinical Trial Data Platform Licenses | $300,000 |
| Identity Management System | $100,000 |
| EDC/eSource Platform | $400,000 |
| OMOP ETL & OHDSI Tooling | $100,000 |
| SDRE Integration & Access | $100,000 |
| BioBank-TRE Integration | $75,000 |
| AI Scribe-EDC Integration | $75,000 |
| PACS/DICOM Integration | $100,000 |
| CRAIDL LLM Development | $50,000 |
| AHS Snowflake Integration | $75,000 |
| Other components | $100,000 |
| **Total Suite 4** | **$2,805,000** |

### 5.3 AWS 5-Year Cost Estimate Request

CTAP requests AWS provide a detailed 5-year cost estimate for:

| Year | Estimated Usage | Key Drivers |
|------|-----------------|-------------|
| **Year 1** | Ramp-up (30% capacity) | Infrastructure deployment, initial integrations |
| **Year 2** | Growth (60% capacity) | CRAIDL agent deployment, OMOP ETL operational |
| **Year 3** | Full operations (80%) | Full researcher access, federation active |
| **Year 4** | Steady state (100%) | All agents operational, full federation |
| **Year 5** | Steady state + growth | Industry partnerships, expanded storage |

**Storage Growth Projection:**

| Year | Data Lake (S3) | OMOP DB (RDS) | Notes |
|------|----------------|---------------|-------|
| 1 | 50 TB | 500 GB | Initial ETL from Connect Care |
| 2 | 100 TB | 1 TB | Multi-omics integration |
| 3 | 200 TB | 2 TB | Imaging pipeline active |
| 4 | 350 TB | 3 TB | Federation data sharing |
| 5 | 500 TB | 5 TB | Steady state + industry |

---

## 6. Regulatory Compliance Requirements

### 6.1 Canadian Primary Compliance

| Regulation | Requirement | AWS Implementation |
|------------|-------------|-------------------|
| **Health Canada Division 5** | 15-year record retention, GCP audit trails | CloudTrail, S3 Glacier |
| **ICH E6(R3)** | Quality-by-design, data integrity | Immutable logging, versioning |
| **TCPS2** | Research ethics, privacy | IAM, encryption, access controls |
| **Health Information Act (HIA)** | Alberta data residency | Canada Central region only |
| **CAN/CGSB-72.34-2017** | Electronic records, e-signatures | CloudTrail, KMS |

### 6.2 International Harmonization (Optional Modules)

| Standard | When Required | AWS Implementation |
|----------|---------------|-------------------|
| **21 CFR Part 11** | FDA submissions | Enhanced audit trails, Part 11-compliant EDC |
| **EU Annex 11** | EMA submissions | GMP computerized systems alignment |
| **CDISC** | All regulatory submissions | Automated transformation pipeline |

### 6.3 Security Framework (NIST CSF 2.0)

| NIST Function | AWS Controls |
|---------------|--------------|
| **Identify** | AWS Config, Systems Manager |
| **Protect** | KMS, WAF, Shield, VPC |
| **Detect** | GuardDuty, CloudWatch, CloudTrail |
| **Respond** | Lambda, SNS, EventBridge |
| **Recover** | Backup, S3 Cross-Region Replication |

---

## 7. CRAIDL AI Agent Framework

### 7.1 Agent Inventory

CRAIDL (Clinical Research Assistants for Intelligent Design and anaLysis) comprises eight coordinated AI agents:

| Agent | Function | AWS Services | Zone |
|-------|----------|--------------|------|
| **Protocol Agent** | Hypothesis-to-protocol conversion | SageMaker, Bedrock | Zone 3 |
| **Data Management Agent** | Statistical design, EDC creation | SageMaker, RDS | Zone 3 |
| **Events Agent** | Safety signal detection | Kinesis, SageMaker | Zone 2 |
| **Ethics Agent** | REB submissions, consent generation | Bedrock, S3 | Zone 3 |
| **Regulatory Agent** | Health Canada/FDA compliance | Bedrock, S3 | Zone 2/3 |
| **Budget & Contracts Agent** | Fair market value budgeting | SageMaker, RDS | Zone 3 |
| **In Silico Assessment Agent** | Digital twin, trial simulation | SageMaker, GPU | Zone 2/3 |
| **Imaging/Radiomics Agent** | Quantitative imaging analysis | SageMaker, S3 | Zone 2/3 |

### 7.2 AI/ML Infrastructure Requirements

| Workload | Instance Type | Hours/Month | Notes |
|----------|---------------|-------------|-------|
| **LLM Inference** | ml.g5.xlarge | 720 (24/7) | CRAIDL agent serving |
| **LLM Training** | ml.p4d.24xlarge | 100 (spot) | Model fine-tuning |
| **OMOP Analytics** | ml.m5.4xlarge | 500 | Cohort generation |
| **Radiomics** | ml.g5.4xlarge | 200 | Image feature extraction |
| **Researcher Notebooks** | ml.t3.medium | 2,000 | 50 concurrent users |

---

## 8. Professional Services Request

### 8.1 Architecture Consulting Scope

CTAP requests AWS Professional Services support for:

1. **TRE Architecture Design** (Months 1-6)
   - Three-zone security architecture
   - VPC design and network isolation
   - IAM role hierarchy and access patterns
   - Integration patterns with SDRE

2. **AI/ML Pipeline Design** (Months 3-12)
   - CRAIDL agent deployment architecture
   - SageMaker pipeline design
   - Model registry and versioning
   - Bedrock integration patterns

3. **Data Platform Design** (Months 6-18)
   - OMOP CDM optimization on RDS
   - S3 data lake architecture
   - ETL pipeline design with Glue/Step Functions
   - OHDSI tooling deployment

4. **Security & Compliance** (Months 1-24)
   - NIST CSF 2.0 alignment
   - HIA compliance verification
   - ICH E6(R3) audit trail design
   - Optional 21 CFR Part 11 module

### 8.2 Estimated Professional Services Allocation

| Phase | Scope | Est. Hours | Est. Cost |
|-------|-------|------------|-----------|
| Architecture Design | TRE zones, networking | 400 | $100,000 |
| AI/ML Implementation | CRAIDL, SageMaker | 400 | $100,000 |
| Security & Compliance | Audit, certification | 200 | $50,000 |
| Training & Knowledge Transfer | Team enablement | 200 | $50,000 |
| **Total** | | **1,200** | **$300,000** |

---

## 9. Implementation Timeline

| Phase | Timeline | AWS Milestones |
|-------|----------|----------------|
| **Phase 1: Foundation** | Months 1-6 | VPC setup, IAM, S3, initial RDS |
| **Phase 2: Core Services** | Months 7-12 | SageMaker deployment, OMOP ETL |
| **Phase 3: Integration** | Months 13-18 | SDRE link, CRAIDL agents |
| **Phase 4: Operations** | Months 19-24 | Full federation, researcher access |
| **Phase 5: Optimization** | Months 25-60 | Cost optimization, scaling |

---

## 10. Requested Quote Components

CTAP requests AWS provide a formal quote including:

1. **5-Year Cloud Credits Package**
   - Reserved capacity (EC2, RDS)
   - Committed spend discounts
   - SageMaker savings plans
   - S3 Intelligent Tiering

2. **Professional Services Package**
   - Architecture consulting
   - AI/ML implementation support
   - Security review and certification
   - Training and knowledge transfer

3. **DHDP/Health Sector Alignment**
   - Compatibility with Digital Health and Discovery Platform
   - Health Canada compliance attestation
   - Canadian data residency certification

4. **Support Package**
   - Enterprise Support level
   - Technical Account Manager allocation
   - Well-Architected reviews

---

## 11. Contact Information

**Project Lead:** TBD (CTAP Program Director)

**Technical Contact:** TBD (CTAP Data Architecture Lead)

**Institution:** University of Alberta

**Funding Program:** CFI Innovation Fund 2027

---

*Document prepared for AWS Canada partnership discussions*
*Clinical Trials Acceleration Platform (CTAP)*
*University of Alberta*
