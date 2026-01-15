# OMOP ETL & OHDSI Tooling - Pricing Reference

**Budget Item ID:** 37
**Suite:** 4 - Data Platform & AI/HPC
**Budget Amount:** $100,000 CAD
**Category:** Service
**Date:** January 2026

---

## Overview

Implementation of the OMOP Common Data Model (CDM) and OHDSI analytics tools for the Trusted Research Environment (TRE). This enables:
- Standardized clinical data representation
- Multi-source data harmonization (EMR, EDC, biobank)
- Network-ready analytics (OHDSI global network)
- Federated research capabilities

---

## OMOP/OHDSI Background

### What is OMOP CDM?

The Observational Medical Outcomes Partnership (OMOP) Common Data Model is a standardized data schema for healthcare data. Maintained by OHDSI (Observational Health Data Sciences and Informatics).

### Benefits

| Benefit | Description |
|---------|-------------|
| Standardization | Common vocabulary across sources |
| Interoperability | Compatible with OHDSI global network |
| Analytics ready | Pre-built analysis packages |
| Cost reduction | Reusable code across databases |

### OHDSI Network Scale

- 150+ databases worldwide
- 21 countries
- 2+ billion patient records
- Pre-built, validated analytics tools

#### Sources
- [OHDSI Data Standardization](https://www.ohdsi.org/data-standardization/)
- [OMOP Common Data Model](https://ohdsi.github.io/CommonDataModel/)
- [OHDSI Global Network](https://www.ohdsi.org/)

---

## Implementation Costs

### ETL Development

| Component | Description | Estimated Cost (CAD) |
|-----------|-------------|---------------------|
| **Discovery & Planning** | | **$15,000** |
| Source system analysis | White Rabbit assessment | $5,000 |
| Mapping specification | Rabbit-in-a-Hat | $5,000 |
| ETL architecture design | Pipeline planning | $5,000 |
| **ETL Development** | | **$45,000** |
| Connect Care ETL | Epic FHIR → OMOP | $20,000 |
| REDCap ETL | EDC → OMOP | $10,000 |
| OpenSpecimen ETL | Biobank → OMOP | $10,000 |
| Custom mappings | Local concepts | $5,000 |
| **Validation** | | **$20,000** |
| Data quality checks | Achilles, DQD | $8,000 |
| Mapping validation | Clinical review | $7,000 |
| Performance testing | Query optimization | $5,000 |
| **Documentation & Training** | | **$10,000** |
| Technical documentation | ETL specs, runbooks | $5,000 |
| Staff training | OHDSI tools | $5,000 |
| **Contingency** | | **$10,000** |
| **Total** | | **$100,000** |

---

## OHDSI Tools (Open Source - Free)

### Core Analytics Stack

| Tool | Purpose | Cost |
|------|---------|------|
| ATLAS | Cohort definition, analysis | Free |
| Achilles | Data characterization | Free |
| Data Quality Dashboard | QC and validation | Free |
| HADES | R-based analytics | Free |
| WebAPI | REST API for ATLAS | Free |

### ETL Tools

| Tool | Purpose | Cost |
|------|---------|------|
| White Rabbit | Source data profiling | Free |
| Rabbit-in-a-Hat | ETL specification | Free |
| Usagi | Vocabulary mapping | Free |
| ETL-Synthea | Reference ETL | Free |

---

## Data Sources to OMOP

### Source Systems

| Source | Data Type | OMOP Domains |
|--------|-----------|--------------|
| Connect Care (Epic) | EMR | Condition, Drug, Procedure, Measurement, Observation |
| REDCap | EDC | Observation, Measurement, Note |
| OpenSpecimen | Biobank | Specimen, Procedure |
| Wearables | Device data | Device_Exposure, Measurement |

### Volume Estimates

| Domain | Records/Year | 5-Year Total |
|--------|-------------|--------------|
| Person | 10,000 | 50,000 |
| Condition | 100,000 | 500,000 |
| Drug_Exposure | 200,000 | 1,000,000 |
| Procedure | 50,000 | 250,000 |
| Measurement | 500,000 | 2,500,000 |
| Observation | 300,000 | 1,500,000 |
| Specimen | 50,000 | 250,000 |

---

## Implementation Approach

### Phase 1: Foundation (Months 1-3)

| Activity | Duration | Cost |
|----------|----------|------|
| Environment setup | 2 weeks | $5,000 |
| White Rabbit scan | 1 week | $3,000 |
| Mapping specification | 4 weeks | $12,000 |
| **Subtotal** | | **$20,000** |

### Phase 2: ETL Development (Months 4-8)

| Activity | Duration | Cost |
|----------|----------|------|
| Connect Care ETL | 6 weeks | $20,000 |
| REDCap ETL | 3 weeks | $10,000 |
| OpenSpecimen ETL | 3 weeks | $10,000 |
| Testing & refinement | 4 weeks | $10,000 |
| **Subtotal** | | **$50,000** |

### Phase 3: Validation & Launch (Months 9-12)

| Activity | Duration | Cost |
|----------|----------|------|
| Data quality validation | 4 weeks | $12,000 |
| ATLAS deployment | 2 weeks | $5,000 |
| Documentation | 2 weeks | $5,000 |
| Training | 2 weeks | $5,000 |
| Go-live support | 4 weeks | $3,000 |
| **Subtotal** | | **$30,000** |

---

## Technical Requirements

### Database Options

| Platform | Cost | Notes |
|----------|------|-------|
| PostgreSQL | Free | Recommended for OMOP |
| SQL Server | Licensed | UAlberta may have |
| Databricks | Variable | Cloud-native option |

### Infrastructure

| Component | Specification |
|-----------|--------------|
| Database server | 8+ cores, 64+ GB RAM |
| Storage | 1+ TB SSD |
| Network | Access to source systems |

---

## Vendor Options

### Commercial OMOP Services

| Vendor | Service | Notes |
|--------|---------|-------|
| IQVIA | OHDSI services | Enterprise support |
| Odysseus | ETL development | OHDSI specialists |
| Palantir | Foundry with OMOP | Platform approach |

### Academic Partnerships

| Partner | Expertise |
|---------|-----------|
| OHDSI Community | Global support, forums |
| Canadian OMOP Centers | UofT, UBC experience |

---

## Quote Status

- [ ] Assess internal OMOP expertise
- [ ] Engage OHDSI community for guidance
- [ ] Evaluate commercial vs. internal development
- [ ] Confirm Connect Care FHIR data availability
- [ ] Plan CDM version (currently v5.4)

---

*Document prepared for CFI Innovation Fund 2027 budget justification*
