# CFI BRIF Stage 2 Application - Data Infrastructure Summary

**Application Number:** CBRF2-2023-00132
**Project Title:** Alberta Precision Laboratories Biobank (APL Biobank)
**Focus:** Data Infrastructure and BioBank Software Enhancements
**Extracted from:** CFI BRIF Stage 2 Application (2023)

---

## Executive Summary

The APL Biobank project includes a comprehensive data infrastructure component with a budget of **$2,550,000** (shared between University of Alberta and University of Calgary sites). The centerpiece is the enhancement and cloud deployment of the **BioBank** open-source sample management platform, developed by the Canadian BioSample Repository (CBSR), in partnership with **AWS Professional Services**.

---

## Core Data Infrastructure Objectives

### Objective #2: Federated Digital Infrastructure
Integrate biobanking facilities through a **federated and secure digital infrastructure** that provides coordinated sample management across all sites using the BioBank software platform.

### Objective #3: AHS Cloud-Based Systems Integration
Create a seamless integration of biorepository and research participant data (clinical, genomic, and social determinants of health) with **Alberta Health Services (AHS) cloud-based systems**, including:
- **Connect Care** (Epic Systems - provincial EMR and LIMS)
- **Snowflake** (AWS cloud-native secure data platform)
- **REDCap** (Research electronic data capture)

### Objective #4: Researcher Discovery Portal
Develop a web-based portal enabling researchers to:
- Browse summary-level descriptions of biospecimen holdings
- Link to clinical phenotype data
- Find cohorts and samples that match specific research criteria

### Objective #5: AI-Assisted Data Curation
Leverage **Artificial Intelligence and Large Language Models (LLMs)** including **Llama 2** to facilitate extraction of data from:
- Unstructured text
- Images (e.g., pathology slides)
- Clinical notes

### Objective #6: Participant Engagement Portal
Create a portal for participants to:
- Monitor use of their contributed biospecimens
- Review and modify consent preferences (**dynamic consent model**)
- Stay informed about research outcomes

### Objective #7: Provincial Biobanking Network
Expand partnerships with existing provincial repositories to integrate:
- Alberta's Tomorrow Project (ATP)
- Alberta Transplant Applied Genomics Centre (ATAGC)
- AHS Precision Health Biobank
- Eventually smaller regional biobanks

---

## BioBank Software Platform

### Overview
**BioBank** is an open-source, client-server **Java application** developed and maintained by the **Canadian BioSample Repository (CBSR)**. It provides comprehensive sample management capabilities for biobanking operations.

### Current Capabilities
- **Federated Data Model**: Supports multiple physical biobank sites appearing as a single repository
- **Machine-Readable Labels**: Barcode and RFID tag support for specimen tracking
- **Flatbed Scanner Integration**: Software for high-throughput sample location scanning
- **Assay Integration**: Support for high-throughput laboratory workflows
- **Regulatory Compliance**: **21 CFR Part 11** compliant for electronic data storage
- **Mature Codebase**: In production for over 15 years with continuous development

### Existing Deployments
BioBank is currently in use at:
- Canadian BioSample Repository (CBSR), Edmonton
- CHILD Cohort Study (multiple sites across Canada)
- Other national biobanking initiatives

---

## Planned Software Enhancements

### AWS Professional Services Partnership
A strategic partnership with **AWS Professional Services** has been established to:

1. **Cloud Migration**: Transition BioBank from on-premises servers to AWS cloud infrastructure
2. **Security Enhancements**: Implement AWS security best practices and compliance controls
3. **Scalability Improvements**: Leverage cloud elasticity for growing sample volumes
4. **High Availability**: Implement redundancy and disaster recovery capabilities

### AWS Expertise
AWS Professional Services brings experience from deploying the **UK Biobank** on AWS infrastructure, providing:
- Proven architecture patterns for large-scale biobanking
- Security and compliance frameworks
- Performance optimization strategies

### Integration Development

#### Connect Care Integration
- Direct linkage to Alberta's provincial **EMR (Epic Systems)**
- Access to **LIMS (Laboratory Information Management System)** data
- Real-time clinical data synchronization

#### REDCap Integration
- Leverage **FHIR (Fast Healthcare Interoperability Resources)** standard
- Connect prospective research data collection with clinical records
- Enable bi-directional data flow between research and clinical systems

#### AI/LLM Data Curation Pipeline
- Deploy **Llama 2** or similar LLMs for:
  - Natural language processing of clinical notes
  - Image analysis for pathology specimens
  - Automated phenotype extraction
  - Data standardization and harmonization

---

## Data Architecture

### Federated Model
The APL Biobank implements a **federated architecture** where:
- Each physical site maintains local operational control
- Central coordination layer provides unified access
- Researchers see a single, integrated repository
- Data sovereignty is maintained at institutional level

### Security Framework
- **21 CFR Part 11** compliance for regulated data
- AWS security controls and encryption
- Role-based access control (RBAC)
- Audit logging for all data access
- Compliance with Canadian privacy legislation (FOIP, HIA)

### Data Standards
Adherence to **FAIR Guiding Principles**:
- **F**indable: Standardized metadata and identifiers
- **A**ccessible: Clear access protocols and authentication
- **I**nteroperable: Standard formats (FHIR, HL7)
- **R**eusable: Clear licensing and provenance

---

## User Portals

### Researcher Discovery Portal
**Purpose**: Enable researchers to identify relevant samples and cohorts

**Features**:
- Summary-level browsing of specimen holdings
- Advanced search by:
  - Disease/condition
  - Sample type
  - Clinical variables
  - Demographics
- Cohort builder functionality
- Request submission workflow
- Integration with ethics/governance approval processes

### Participant Engagement Portal
**Purpose**: Empower participants in the research process

**Features**:
- **Dynamic Consent**: Modify consent preferences over time
- **Transparency Dashboard**: See which studies used their samples
- **Research Outcomes**: Learn about discoveries enabled by their contribution
- **Communication Preferences**: Control how they receive updates
- **Withdrawal Options**: Clear process for consent withdrawal

---

## Budget Summary - Data Infrastructure

| Category | Amount (CAD) |
|----------|--------------|
| **Total Data Infrastructure Budget** | $2,550,000 |
| AWS Professional Services | Included |
| Cloud Infrastructure Setup | Included |
| Integration Development | Included |
| Portal Development | Included |
| AI/LLM Implementation | Included |

*Note: Budget is shared between University of Alberta and University of Calgary sites*

---

## Implementation Partners

### Canadian BioSample Repository (CBSR)
- Primary developer and maintainer of BioBank software
- Located at University of Alberta
- Provides technical expertise and ongoing support

### AWS Professional Services
- Cloud deployment and architecture
- Security and compliance implementation
- UK Biobank deployment experience

### Alberta Health Services (AHS)
- Connect Care integration support
- Snowflake data platform access
- REDCap provincial instance

### Research Informatics Team
- Integration development
- Portal user interface design
- Data pipeline implementation

---

## Technical Specifications

### BioBank Platform
- **Architecture**: Client-server application
- **Language**: Java
- **Database**: Relational database backend
- **Deployment**: Cloud-native on AWS
- **APIs**: RESTful services for integration

### Integration Standards
- **HL7 FHIR**: Healthcare data interoperability
- **REDCap API**: Research data exchange
- **AWS SDKs**: Cloud service integration

### AI/ML Components
- **Llama 2**: Large language model for data curation
- **Computer Vision**: Pathology image analysis
- **NLP Pipeline**: Clinical text extraction

---

## Key Outcomes

The data infrastructure will enable:

1. **Unified Sample Management**: Single view across all provincial biobanking sites
2. **Rich Phenotyping**: Deep clinical data linkage through Connect Care
3. **Efficient Discovery**: Rapid identification of relevant samples for research
4. **Participant Trust**: Transparent engagement through dynamic consent
5. **Scalable Operations**: Cloud infrastructure supporting provincial growth
6. **AI-Enhanced Curation**: Automated data extraction and standardization
7. **Regulatory Compliance**: Meeting all federal and provincial requirements

---

## Appendix: Related Figures

### Figure 2: Specific Objectives - Data Infrastructure Overview

![Figure 2: Specific Objectives](images/figure_2_specific_objectives_data_infrastructure.png)

**Figure Legend**: This diagram illustrates the seven core objectives of the APL Biobank data infrastructure:

1. **BioBank Software** (center left): Core sample management platform integrating multiple data sources
2. **Cloud Infrastructure** (center): AWS-hosted federated data system
3. **Remnant Samples**: Integration of biospecimens from clinical workflows
4. **EMR Integration**: Connect Care (Epic Systems) clinical data linkage
5. **REDCap**: Research electronic data capture for prospective studies
6. **Clinical Trials**: Support for trial-based biobanking
7. **FAIR Principles Portal**: Researcher and participant access following FAIR data standards

The diagram shows data flowing from multiple sources (samples, EMR, REDCap, clinical trials) through the BioBank platform and cloud infrastructure to serve both researchers and participants at the University of Alberta and University of Calgary.

---

*Document extracted from CFI BRIF Stage 2 Application CBRF2-2023-00132*
*Extraction Date: December 2024*
