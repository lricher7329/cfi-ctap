# Connect Care FHIR Integration - Pricing Reference

**Budget Item ID:** 51
**Suite:** 2 - Living Biorepository
**Budget Amount:** $90,000 CAD
**Category:** Service
**Date:** January 2026

---

## Overview

Integration between OpenSpecimen (Biobank LIMS) and Alberta Health Services Connect Care (Epic EHR) via FHIR R4 APIs to enable the "Living Biorepository" concept.

**Integration Partner:** Alberta Health Services (via Connect Care team)
**Epic Platform:** Epic on FHIR
**Standard:** HL7 FHIR R4

---

## Integration Objectives

| Objective | Description |
|-----------|-------------|
| Clinical data linkage | Associate samples with longitudinal EMR data |
| Outcome annotation | Enable 5-10 year outcome queries on specimens |
| Consent verification | Real-time consent status from Epic |
| Demographics sync | Patient demographics for matching |
| Result return | Pathway for returning research results |

---

## Epic FHIR Integration Costs

### Industry Benchmarks

Based on 2024-2025 healthcare integration market data:

| Integration Type | Typical Cost (CAD) | Timeline |
|-----------------|-------------------|----------|
| Basic FHIR read-only | $40,000 - $70,000 | 2-3 months |
| Complex bidirectional | $90,000 - $140,000 | 6-12 months |
| Enterprise integration | $150,000 - $250,000 | 12-18 months |

#### Sources
- [Epic Integration Costs 2025 Guide](https://dashtechinc.com/blog/epic-integration-costs-complete-2025-budget-guide/)
- [Epic EHR Integration Guide](https://topflightapps.com/ideas/how-integrate-health-app-with-epic-ehr-emr/)
- [HIPAA-Ready EHR Integration](https://www.ptolemay.com/post/hipaa-ready-ehr-integration-on-a-startup-budget)

### Epic Developer Program Costs

| Component | Cost | Notes |
|-----------|------|-------|
| Open.epic API access | Free | 750+ no-cost APIs |
| Showroom Connection Hub | $500 USD/year | Basic integration listing |
| USCDI v3 APIs | Free | Available from August 2024 release |
| Production access | Variable | Requires customer sponsorship |

---

## Budget Breakdown

For the $90,000 CAD budget:

| Phase | Activities | Estimated Cost |
|-------|------------|----------------|
| **Discovery & Design** | | **$15,000** |
| - Requirements analysis | AHS/Connect Care alignment | $5,000 |
| - API mapping | FHIR resource identification | $5,000 |
| - Security architecture | Data flow design | $5,000 |
| **Development** | | **$40,000** |
| - FHIR client development | OpenSpecimen adapter | $15,000 |
| - Data transformation | OMOP mapping | $10,000 |
| - Consent integration | Epic consent module | $10,000 |
| - Error handling | Retry logic, logging | $5,000 |
| **Testing & Validation** | | **$20,000** |
| - Integration testing | End-to-end validation | $8,000 |
| - Performance testing | Load and stress testing | $5,000 |
| - Security testing | Penetration testing | $7,000 |
| **Deployment & Support** | | **$15,000** |
| - Production deployment | Go-live support | $5,000 |
| - Documentation | Technical and user docs | $3,000 |
| - Training | Staff training | $3,000 |
| - Post-go-live support | 3-month support | $4,000 |
| **Total** | | **$90,000** |

---

## Technical Requirements

### FHIR Resources Required

| Resource | Use Case | Direction |
|----------|----------|-----------|
| Patient | Demographics, identifiers | Read |
| Condition | Diagnoses (ICD-10) | Read |
| Procedure | Procedures performed | Read |
| MedicationRequest | Medications | Read |
| Observation | Lab results, vitals | Read |
| Consent | Research consent status | Read/Write |
| ResearchSubject | Study enrollment | Write |

### Security Requirements

| Requirement | Implementation |
|-------------|----------------|
| Authentication | SMART on FHIR OAuth 2.0 |
| Authorization | Scoped access tokens |
| Encryption | TLS 1.3 in transit |
| Audit logging | All API calls logged |
| PHI handling | Minimum necessary principle |

---

## AHS Connect Care Considerations

### Approval Process

| Step | Timeline | Notes |
|------|----------|-------|
| Research IT request | 2-4 weeks | Initial application |
| Privacy impact assessment | 4-8 weeks | AHS privacy team review |
| Security review | 4-6 weeks | IT security assessment |
| Epic App Orchard/Showroom | 2-4 weeks | If required |
| Production access | 2-4 weeks | Final approval |
| **Total** | **4-6 months** | Parallel where possible |

### AHS Contacts

| Role | Department |
|------|------------|
| Research IT | AHS Information Technology |
| Privacy Officer | AHS Privacy & FOIP |
| Connect Care Team | Epic administration |

---

## Middleware Options

Using middleware can reduce development time and simplify maintenance:

| Middleware | Annual Cost (CAD) | Benefits |
|------------|------------------|----------|
| Redox | $60,000+ | Pre-built Epic connectors |
| Health Gorilla | $40,000+ | FHIR aggregation |
| 1upHealth | $35,000+ | Patient data access |

*Note: Middleware adds ongoing costs but reduces custom development*

---

## Risk Mitigation

| Risk | Mitigation |
|------|------------|
| AHS approval delays | Early engagement, phased approach |
| API rate limiting | Caching, batch queries |
| Data quality issues | Validation rules, error handling |
| Privacy concerns | Minimum necessary access, audit logs |
| Epic version changes | Monitor release notes, plan updates |

---

## Quote Status

- [ ] Engage AHS Research IT for initial consultation
- [ ] Submit privacy impact assessment request
- [ ] Obtain OpenSpecimen FHIR adapter quote
- [ ] Identify Connect Care technical contact
- [ ] Confirm FHIR API availability for research use

---

*Document prepared for CFI Innovation Fund 2027 budget justification*
