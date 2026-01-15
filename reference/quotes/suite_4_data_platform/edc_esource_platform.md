# EDC/eSource Platform (21 CFR 11 Compliant) - Pricing Reference

**Budget Item ID:** 36
**Suite:** 4 - Data Platform & AI/HPC
**Budget Amount:** $400,000 CAD
**Category:** Software
**Date:** January 2026

---

## Overview

This budget item covers comprehensive EDC and eSource capabilities beyond basic REDCap, including:
- Amii partnership for AI-integrated clinical trial platforms
- Advanced eSource functionality
- AI-assisted data quality and monitoring
- CRAIDL (Clinical Research AI/Data Lab) development

---

## Amii Partnership - AI Platform Development

**Partner:** Alberta Machine Intelligence Institute (Amii)
**Website:** [amii.ca](https://www.amii.ca/)

### Services

Amii provides AI/ML expertise for healthcare and clinical research applications. For CTAP, key services include:

| Service | Description | Estimated Cost (CAD) |
|---------|-------------|---------------------|
| AI Strategy Consulting | Clinical trial AI roadmap | $30,000 - $50,000 |
| Custom Model Development | CRAIDL platform components | $100,000 - $200,000 |
| MLOps Implementation | Production AI deployment | $50,000 - $80,000 |
| Training & Enablement | Staff AI literacy | $20,000 - $40,000 |

### CRAIDL Development Scope

| Component | Description | Estimated Cost |
|-----------|-------------|----------------|
| Protocol AI Agent | AI-assisted protocol design | $50,000 |
| Data Quality Agent | Automated data validation | $40,000 |
| Safety Monitoring Agent | AE pattern detection | $50,000 |
| Recruitment Optimization | AI-powered site selection | $40,000 |
| NLP for Medical Records | Connect Care data extraction | $60,000 |
| **Total Amii Services** | | **$240,000** |

### Amii Engagement Model

| Tier | Description | Rate |
|------|-------------|------|
| Research Collaboration | Joint research projects | Cost-shared |
| Consulting Services | Expert guidance | $300-$500/hour |
| Development Services | Custom AI solutions | Project-based |
| Training Programs | Team enablement | $5,000-$20,000/program |

---

## eSource Platform Components

### Budget Allocation

| Component | Purpose | Budget (CAD) |
|-----------|---------|-------------|
| Amii AI Development | CRAIDL platform | $240,000 |
| eSource Infrastructure | Direct EMR capture | $80,000 |
| Validation & Compliance | 21 CFR Part 11 | $50,000 |
| Integration Development | REDCap-TRE-Bedrock | $30,000 |
| **Total** | | **$400,000** |

### eSource Capabilities

| Feature | Description |
|---------|-------------|
| Direct EMR capture | Reduce transcription from Connect Care |
| Source data verification | Automated SDV via FHIR |
| Real-time data streaming | Live trial monitoring |
| AI-assisted coding | MedDRA, WHO Drug coding |
| Risk-based monitoring | Automated site risk scoring |

---

## 21 CFR Part 11 Compliance

### Requirements

| Requirement | Implementation |
|-------------|----------------|
| Electronic signatures | Qualified e-signatures |
| Audit trail | Immutable change log |
| Access controls | Role-based permissions |
| Data integrity | Checksums, validation |
| System documentation | SOPs, validation protocols |

### Validation Costs

| Activity | Estimated Cost (CAD) |
|----------|---------------------|
| Validation protocol development | $15,000 |
| IQ/OQ/PQ execution | $20,000 |
| Validation documentation | $10,000 |
| Ongoing CSV maintenance | $5,000/year |

---

## Integration Architecture

```
Connect Care (Epic) → FHIR API → TRE Zone 1
                                    ↓
REDCap (EDC) → API → TRE Zone 2 → OMOP CDM
                                    ↓
Amazon Bedrock ← CRAIDL Agents ← Zone 3
       ↓
   AI Insights → Dashboards → Researchers
```

---

## 5-Year Cost Projection

| Year | Amii Services | eSource/Compliance | Total |
|------|--------------|-------------------|-------|
| Year 1 | $150,000 | $80,000 | $230,000 |
| Year 2 | $50,000 | $30,000 | $80,000 |
| Year 3 | $20,000 | $20,000 | $40,000 |
| Year 4 | $15,000 | $15,000 | $30,000 |
| Year 5 | $10,000 | $10,000 | $20,000 |
| **Total** | **$245,000** | **$155,000** | **$400,000** |

---

## Vendor Contacts

| Partner | Contact | Notes |
|---------|---------|-------|
| Amii | [amii.ca/contact](https://www.amii.ca/contact/) | Edmonton-based AI institute |
| UAlberta IST | Internal | REDCap infrastructure |

---

## Quote Status

- [ ] Engage Amii for CRAIDL partnership discussion
- [ ] Define AI development SOW with Amii
- [ ] Confirm 21 CFR Part 11 validation approach
- [ ] Assess existing UAlberta eSource capabilities
- [ ] Align with Connect Care FHIR integration timeline

---

*Document prepared for CFI Innovation Fund 2027 budget justification*
