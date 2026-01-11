---
title: "Suite 4: Data Platform, Secure Environments, AI/HPC"
subtitle: "Concept Brief"
author: "CTAP Team"
affiliation: "University of Alberta"
date: "December 2024"
suite_number: 4
budget: "$3,155,000"
target_audience: "IT leadership, AI researchers, data scientists, regulatory compliance"
bibliography: ../refs/references.bib
csl: ../../../shared/csl/vancouver.csl
---

# Overview

!include ../includes/suite_4_description.md

# Strategic Context

**The Proof-of-Concept**: In Ontario, the GEMINI project has demonstrated what integrated research data infrastructure can achieve: the Chartwatch AI early warning system, trained on GEMINI's multi-hospital dataset, reduced unexpected deaths among hospitalized patients by **26%**. This is not theoretical—it is published evidence that integrated data architecture saves lives.

**The Gap**: While Alberta possesses exceptional discovery assets, Connect Care's unified health records, and world-leading AI capacity through Amii, we lack the integrated research data infrastructure that enabled GEMINI's clinical impact. Suite 4 addresses this gap, extending the GEMINI model to encompass clinical trials, biospecimens, and regulatory-grade data management.

Suite 4 is the digital backbone of CTAP, establishing Canada's first unified data architecture for AI-enabled clinical trials. This suite transforms the learning health system vision into operational reality: clinical data flows into research, AI-driven insights flow back to clinical teams, and outcomes data closes the loop to refine future discoveries.

Suite 4 integrates three previously fragmented components:

1. **Three-Zone TRE** - Trusted Research Environment adapted for prospective clinical trials (not just retrospective analytics)
2. **OMOP CDM** - Canonical data representation enabling federation with 100+ global OHDSI institutions
3. **CRAIDL Framework** - Seven AI agents with defined data access patterns, TRE zone assignments, and regulatory compliance (four validated via investigator-developed prototype)

# Unified Data Architecture

```
Clinical Data Sources → TRE (de-identification) → Trial Data Lake → AI Agents → Outputs
       ↓                        ↓                       ↓
  Connect Care              Living Biobank         CRAIDL Tools
  REDCap                    Omics Facilities       Researcher Portal
  Lab Systems               OMOP Analytics         Regulatory Submissions
```

# Key Partnerships

| Partner | Contribution |
|---------|--------------|
| **Amazon Web Services (Calgary)** | Secure cloud infrastructure, AI/ML services |
| **Amii** | CIFAR AI Chairs, CRAIDL development expertise |
| **RDSS** | On-premises secure storage (Zone 2/3 hosting) |
| **AHS/Connect Care** | Provincial EMR (4.4M patients), data governance |
| **OHDSI Network** | 100+ global institutions for federated queries |

# Leveraged Investments

Suite 4 builds upon significant prior investments, reducing implementation risk and accelerating deployment.

| Investment | Value | Suite 4 Benefit |
|------------|-------|-----------------|
| **VITAL/GEMINI OMOP** | In-kind | Validated ETL pipelines, reduced Year 1 effort |
| **AWS TRE Assessment** | Institutional | Three-zone architecture validated, gap analysis complete |
| **DHDP Partnership** | $322M (federal + partner) | Pan-Canadian federated learning network access |
| **Amii AI Chairs** | In-kind | CRAIDL development expertise |

# Equipment & Services List

| Item | Est. Cost |
|------|-----------|
| GPU-enabled secure compute nodes | $800,000 |
| Secure storage nodes (on-prem) | $400,000 |
| Networking, firewalls, VPN (NIST CSF 2.0) | $180,000 |
| Identity management system (zero-trust) | $100,000 |
| Clinical trial data platform licenses | $300,000 |
| AWS cloud credits & compute reserve | $500,000 |
| AWS Pro-Serve / architecture consulting | $300,000 |
| EDC/eSource platform (5-year, ICH E6(R3)/Health Canada GCP) | $400,000 |
| OMOP ETL & OHDSI tooling | $100,000 |
| BioBank-TRE integration | $75,000 |
| **Total** | **$3,155,000** |

# CRAIDL Agent Data Access Framework

| Agent | Data Access | TRE Zone | Compliance |
|-------|-------------|----------|------------|
| **Protocol Agent** | Literature, prior protocols | Zone 3 | N/A |
| **Data Management Agent** | CVC templates, OMOP aggregates | Zone 3 | N/A |
| **Events Agent** | EDC, EMR safety signals | Zone 2 | ICH E6(R3), ICH E2B; optional 21 CFR 11 |
| **Ethics Agent** | Consent templates, regulations | Zone 3 | TCPS2 |
| **Regulatory Agent** | CDISC datasets, regulatory DB | Zone 2/3 | Health Canada Div 5, CDISC |
| **Budget & Contracts Agent** | Industry benchmarks, rates | Zone 3 | N/A |

All agent activities logged (agent ID, timestamp, data accessed, action type, human reviewer) with 15-year retention for regulatory compliance.

# Regulatory Compliance Matrix

CTAP implements a "local compliance, international harmonization" framework: Canadian requirements as primary compliance, with optional international modules for multi-jurisdictional trials.

**Primary Compliance (Canadian - All Trials):**

| Standard | Authority | Implementation |
|----------|-----------|----------------|
| **Health Canada Division 5** | Health Canada | CTA support, 15-year retention, GCP inspection readiness |
| **ICH E6(R3)** | Health Canada (mandatory April 2026) | Quality-by-design, risk-based monitoring |
| **TCPS2 (2022)** | Tri-Council | REB workflow, consent, privacy |
| **HIA (Alberta)** | Alberta | Three-zone TRE model |
| **CAN/CGSB-72.34-2017** | Canadian Standards | Electronic records as documentary evidence |

**International Harmonization (As Required):**

| Standard | Jurisdiction | When Required | Implementation |
|----------|--------------|---------------|----------------|
| **21 CFR Part 11** | USA (FDA) | FDA submissions only | Optional compliance module |
| **EU Annex 11** | EMA | European submissions | GMP systems alignment |
| **CDISC** | International | Regulatory submissions | Automated CDASH → SDTM |

**Federation & Integration Standards:**

| Standard | Scope | Implementation |
|----------|-------|----------------|
| **OMOP CDM** | Analytics, federation | Full ETL pipeline |
| **HL7 FHIR** | Connect Care integration | Real-time + batch APIs |
| **NIST CSF 2.0** | All IT infrastructure | Five core functions (ID, PR, DE, RS, RC) |

# Connect Care Integration

| Pathway | Mechanism | Use Case |
|---------|-----------|----------|
| **Bulk Extract** | Weekly/daily to TRE | Feasibility, population analytics |
| **FHIR API** | Real-time to REDCap | Enrolled participants only |
| **Platform Agreement** | Master DSA | All CTAP trials (not per-study) |

## Integration Use Cases

**Connect1d Decentralized Diabetes Trials**: Type 1 Diabetes patient registry (transitioning to ADI under Dr. Peter Senior) demonstrates multi-source data integration: patient-reported data + CGM wearables + Connect Care EHR. Exemplar for decentralized clinical trials.

**BioBank-TRE Integration**: OpenSpecimen REST API connects Suite 2's Living Biorepository with TRE zones for specimen-phenotype linkage, dynamic consent verification, and outcome annotation across 5-year follow-up.

# Federation Architecture

| Layer | Partners | Mechanism |
|-------|----------|-----------|
| **Intra-Alberta** | CBSR, AHS, U Calgary, U Lethbridge | Shared OMOP instance |
| **National** | PRAIRIE Hub, CGEn, CCTG, ACT-AEC, RareKids-CAN | Federated queries |
| **Pan-Canadian** | **DHDP** (97 consortium partners) | Federated learning |
| **International** | OHDSI (100+ sites), VITAL | Aggregate results only |

## DHDP Partnership Opportunity

Strategic alignment with Digital Health and Discovery Platform ($49M federal + $108M partner + $165M in-kind) enables:
- **Rare disease multi-provincial trials** via federated cohort discovery
- **AI biomarker development** via federated learning across national network
- **MS cell therapy trials** aligned with DHDP neurological disease focus
- **Timeline alignment**: Both initiatives target 2027 completion

# Sustainability Model

| Year | CFI/IOF | Industry | Grants | Institutional | Total |
|------|---------|----------|--------|---------------|-------|
| 1 | $600K | $0 | $100K | $100K | $800K |
| 3 | $400K | $250K | $200K | $100K | $950K |
| 5 | $200K | $500K | $200K | $100K | $1,000K |
| 6+ | $0 | $600K | $200K | $200K | $1,000K |

**Industry Service Pricing:**
- Feasibility query (OMOP): $2,500
- TRE workspace (per study-year): $15,000
- CRAIDL agent access: $5,000/study
- CDISC transformation: $20,000/submission

# Key Personnel

| Role | Responsibility |
|------|----------------|
| CTAP Data Architect | Platform design and integration |
| CRAIDL Development Lead | AI agent development |
| Data Engineer (OMOP) | ETL, data quality |
| Data Engineer (CDISC) | Regulatory transforms |
| Security & Compliance Officer | Audit, validation |
| Amii CIFAR AI Chairs | Research direction |
| AHS Informatics Liaison | Connect Care integration |

# Next Steps

1. Finalize TRE three-zone architecture with AWS professional services
2. Establish platform-level AHS data governance agreement
3. Deploy OMOP ETL pipeline and OHDSI tooling
4. Develop CRAIDL agent roadmap with Amii
5. Validate Health Canada GCP/ICH E6(R3) compliance for EDC platform; configure optional 21 CFR Part 11 module for FDA-bound trials

**Contact:** CTAP Data Team | Amii | University of Alberta IST

---

*For detailed technical specifications, see [Suite 4 Technical Specification](../suites/suite_4_data_platform.md)*
