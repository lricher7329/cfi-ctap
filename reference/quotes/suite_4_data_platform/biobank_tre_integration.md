# BioBank-TRE Integration - Pricing Reference

**Budget Item ID:** 47
**Suite:** 4 - Data Platform & AI/HPC
**Budget Amount:** $75,000 CAD
**Category:** Service
**Date:** January 2026

---

## Overview

Integration between OpenSpecimen (Biobank LIMS) and the Trusted Research Environment (TRE) to enable:
- Bidirectional data flow between biobank and analytics platform
- Specimen-linked clinical data queries
- Living Biorepository outcome-based searches
- Consent-aware data access

---

## Integration Scope

### Data Flows

| Direction | Data | Purpose |
|-----------|------|---------|
| OpenSpecimen → TRE | Specimen metadata | Analytics on collections |
| OpenSpecimen → TRE | Consent status | Access control enforcement |
| TRE → OpenSpecimen | Query results | Feasibility counts |
| TRE → OpenSpecimen | Outcome annotations | Living Biorepository updates |

### Integration Points

| Component | Protocol | Direction |
|-----------|----------|-----------|
| OpenSpecimen API | REST/JSON | Bidirectional |
| TRE Data Lake | Parquet/Delta | Export |
| OMOP CDM | SQL/API | Query |
| Amazon Bedrock | API | AI analysis |

---

## Development Costs

### Phase 1: API Integration ($30,000)

| Task | Description | Cost (CAD) |
|------|-------------|-----------|
| API design | Define endpoints, schemas | $5,000 |
| OpenSpecimen connector | Custom plugin development | $12,000 |
| TRE ingestion pipeline | ETL for specimen data | $8,000 |
| Testing | Integration testing | $5,000 |

### Phase 2: Consent Integration ($20,000)

| Task | Description | Cost (CAD) |
|------|-------------|-----------|
| Consent mapping | Consent tiers → access rules | $5,000 |
| Policy enforcement | Automated access control | $10,000 |
| Audit logging | Consent-based access logs | $5,000 |

### Phase 3: Living Biorepository Features ($15,000)

| Task | Description | Cost (CAD) |
|------|-------------|-----------|
| Outcome linkage | Connect specimens to clinical outcomes | $8,000 |
| Query interface | Researcher query portal | $5,000 |
| Documentation | User guides, API docs | $2,000 |

### Phase 4: Validation & Support ($10,000)

| Task | Description | Cost (CAD) |
|------|-------------|-----------|
| Validation testing | End-to-end validation | $5,000 |
| Go-live support | Deployment support | $3,000 |
| Training | Staff training | $2,000 |

### Total: $75,000

---

## Technical Architecture

```
OpenSpecimen (Zone 1)
        ↓
    REST API
        ↓
ETL Pipeline (Zone 2)
        ↓
    ├── Specimen metadata → OMOP Specimen table
    ├── Consent status → Access control service
    └── Collection events → OMOP Procedure table
        ↓
TRE Data Lake (Zone 3)
        ↓
    ├── ATLAS queries
    ├── Bedrock AI analysis
    └── Researcher portal
```

---

## Living Biorepository Capabilities

### Outcome-Based Queries

Unlike traditional biobanks, the Living Biorepository enables:

| Query Type | Example |
|------------|---------|
| Treatment response | "Samples from patients who responded to Drug X" |
| Disease progression | "Samples from patients who progressed to Stage IV" |
| Survival outcomes | "Samples from 5-year survivors vs. non-survivors" |
| Biomarker correlation | "Samples with high expression of Marker Y and outcome Z" |

### Implementation Requirements

| Feature | Dependency |
|---------|------------|
| Outcome queries | Connect Care FHIR integration |
| Treatment response | EDC/REDCap outcome data |
| Longitudinal tracking | Continuous EMR linkage |

---

## Security Considerations

| Consideration | Implementation |
|---------------|----------------|
| PHI handling | Identifiable data stays in Zone 1 |
| De-identification | Specimen metadata de-identified for Zone 3 |
| Consent enforcement | Real-time consent checks |
| Audit trail | All access logged |
| RBAC | Role-based query permissions |

---

## Dependencies

| Dependency | Status | Notes |
|------------|--------|-------|
| OpenSpecimen deployment | Suite 2 | Must be operational |
| Connect Care FHIR | Suite 2 | Outcome data source |
| TRE infrastructure | Suite 4 | Data lake, analytics |
| OMOP CDM | Suite 4 | Data model alignment |

---

## Timeline

| Phase | Duration | Dependencies |
|-------|----------|--------------|
| Phase 1: API Integration | Months 10-13 | OpenSpecimen live |
| Phase 2: Consent Integration | Months 14-16 | Dynamic consent module |
| Phase 3: Living Biorepository | Months 17-19 | Connect Care FHIR |
| Phase 4: Validation | Months 20-21 | All phases complete |

---

## Quote Status

- [ ] Confirm OpenSpecimen API capabilities
- [ ] Define data exchange schemas
- [ ] Assess internal development vs. vendor support
- [ ] Align with Connect Care FHIR timeline
- [ ] Plan consent mapping workshop

---

*Document prepared for CFI Innovation Fund 2027 budget justification*
