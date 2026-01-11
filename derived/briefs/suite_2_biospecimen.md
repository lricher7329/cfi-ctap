---
title: "Suite 2: Living Biorepository & Cell Manufacturing"
subtitle: "Concept Brief"
author: "CTAP Team"
affiliation: "University of Alberta"
date: "December 2024"
suite_number: 2
budget: "$6,392,273"
target_audience: "Biobank leadership, GMP manufacturing, core facility directors, data scientists"
bibliography: ../refs/references.bib
csl: ../../../shared/csl/vancouver.csl
---

# Overview

!include ../includes/suite_2_description.md

# Strategic Context

Suite 2 represents a **fundamental reconceptualization** of biospecimen management—from static storage to an intelligent, continuously-updated discovery engine. The **Living Biorepository** is not merely a collection of samples; it is an intelligent system that continuously enriches specimens with clinical outcomes, predicts research needs, and enables cross-trial reuse with appropriate governance.

This suite addresses a critical gap identified in prior CFI proposals: while Alberta possesses exceptional biobanking infrastructure (CBSR) and cell manufacturing capabilities (ACTM), these assets operate largely in isolation. Suite 2 integrates them into a unified platform connected to Connect Care via the TRE.

**Infrastructure Foundation:** Suite 2 physical specifications are derived from the **B-PREPARED** proposal (CBRF2-2023-00132: Integrated Biobanks for Pandemic PREPAREDness and biomanufacturing in Alberta), which builds on 20+ years of CBSR biobanking expertise.

# Living Biorepository: Four Core Capabilities

| Capability | Description | Implementation |
|------------|-------------|----------------|
| **Real-Time EMR Linkage** | Specimens continuously linked to Connect Care records via FHIR API | Updates as new clinical events occur |
| **Automated Outcome Annotation** | Trial samples annotated with long-term outcomes (5-10 year) | Provincial health records without participant re-contact |
| **Predictive Inventory Management** | AI predicts sample depletion and suggests aliquoting strategies | Machine learning on usage patterns |
| **Consent-Aware Sample Routing** | Specimens flow to approved studies based on consent scope | New uses trigger re-consent via participant portal |

# Facility Partners

| Partner | Current Capacity | CTAP Integration |
|---------|------------------|------------------|
| **CBSR** (Canadian BioSample Repository) | Standard biobanking | AI-enabled inventory + EMR linkage |
| **ACTM** (Alberta Cell Therapy Manufacturing)* | GMP cell products (CAR-T operational) | Expanded manufacturing capacity |
| **Cross Cancer Institute** | CAR-T clinical program | Multi-site cell therapy delivery |
| **Pluripotent Stem Cell Core*** | Planned | Automated iPSC culture platform |

*\*ACTM and iPSC equipment funded separately; integrated with CTAP workflows.*

# Integration with Data Platform (Suite 4)

The Living Biorepository is deeply integrated with the three-zone TRE:

```
Zone 1 (Identifiable)          Zone 2 (Controlled)           Zone 3 (Research)
        ↓                              ↓                            ↓
Consent status flows ──────→ BioBank release decisions
                           ↓
De-identified metadata ────→ Linkage processing
                           ↓
Linked clinical data ──────→ Outcome annotations ──────→ BioBank
                                                        ↓
                           OMOP queries ←──────────────←
```

**Key Integration Points:**

- Consent status flows from TRE Zone 1 → BioBank for sample release decisions
- De-identified specimen metadata flows from BioBank → Zone 2 for linkage
- Linked clinical data flows from Zone 2 → BioBank as outcome annotations
- Aggregate specimen queries flow from OMOP (Zone 3) → researchers

# Equipment and Infrastructure Summary

**Budget derived from B-PREPARED proposal (CBRF2-2023-00132)**

| Category | Budget | Key Items |
|----------|--------|-----------|
| **Cold Storage** | $946,333 | 20× -80°C chest freezers, CO₂ backup system, NUNC hotels |
| **Processing Equipment** | $1,825,566 | Tecan robot upgrade, centrifuges, TapeStation, FACS |
| **Space Renovations** | $3,025,374 | LKS basement (B-017, B-025A), Katz 3rd floor cleanrooms |
| **Equipment/Infrastructure Subtotal** | **$5,797,273** | |

*Cell Manufacturing (ACTM, $850,000) and iPSC Platform ($400,000) are funded through separate institutional investments but will be fully integrated with Suite 2 operations.*

# Software Platform: OpenSpecimen

Migration from legacy caTissue to **OpenSpecimen** (Krishagni Solutions) enables the Living Biorepository's core capabilities. [Pricing source](https://www.openspecimen.org/pricing/)

| Component | Est. Cost (CAD) | Description |
|-----------|-----------------|-------------|
| Institutional License | $210,000 | Unlimited users, cloud or on-premise |
| Data Migration | $56,000 | caTissue to OpenSpecimen migration |
| Integration: Connect Care (Epic) | $49,000 | FHIR API for specimen-EHR linkage |
| Integration: REDCap | $49,000 | EDC-biobank coordination |
| Integration: Freezer/Scanners | $49,000 | Automated specimen tracking |
| Custom Plugin Development | $105,000 | Dynamic consent, CTAP workflows |
| Annual Support (Year 1) | $42,000 | Technical support, upgrades |
| Training | $35,000 | Staff certification |
| **Software Subtotal** | **$595,000** | |

**Key Differentiator:** Unlimited user licensing enables staff scaling without incremental costs.

| **Suite 2 Total** | | **$6,392,273** |

**Note:** Data infrastructure originally proposed in B-PREPARED is now consolidated within **Suite 4: Data Platform** as part of the integrated TRE architecture.

# Sample Workflow

```
Trial Enrollment → FHIR Consent Check → Sample Collection → CBSR Processing →
AI-Optimized Aliquoting → Storage (LN₂/-80°C) → Continuous EMR Linkage →
Outcome Annotation → Cross-Trial Reuse (with consent) → ACTM Manufacturing →
Quality Control → Clinical Administration
```

# Cross-Trial Reuse Governance

| Reuse Scenario | Consent Requirement | Governance |
|----------------|---------------------|------------|
| Same disease area | Original broad consent | Data Access Committee approval |
| Different disease area | Re-consent via portal | Ethics amendment + DAC |
| Industry access | Explicit commercial consent | Industry Advisory + DAC |
| International sharing | Explicit international consent | DSA + local ethics |

# Quality Management

| Standard | Application | Implementation |
|----------|-------------|----------------|
| ISO 20387 | Biobanking quality | CBSR accreditation |
| GMP (Health Canada) | Cell manufacturing | ACTM compliance |
| 21 CFR Part 11 | Electronic records | Audit trails, e-signatures |
| ISBER Best Practices | Sample management | SOPs, training |

# Objectives Supported

- **Objective 3**: First-in-human cell therapy trials through GMP manufacturing
- **Objective 4**: Integrated biospecimen pipelines for 70%+ of trials, with EMR linkage
- **Objective 6**: National backbone for cell therapy via ACTM

# Sustainability Model

| Revenue Stream | Year 1-2 | Year 3-5 | Year 6+ |
|----------------|----------|----------|---------|
| Sample processing fees ($35/sample) | $70K | $175K | $350K |
| Storage fees ($5-15/sample/year) | $50K | $150K | $300K |
| Cell manufacturing contracts | $100K | $400K | $800K |
| Cross-trial reuse licensing | $0 | $50K | $150K |
| **Annual Total** | **$220K** | **$775K** | **$1.6M** |

# Key Personnel

| Role | Responsibility |
|------|----------------|
| CBSR Operations Lead | Biospecimen management, Living Biorepository operations |
| ACTM Manufacturing Lead | GMP cell production |
| Dr. Michael Chiu (Cross Cancer) | CAR-T cell therapy clinical lead |
| Data Linkage Specialist | EMR integration, outcome annotation |
| Quality Assurance Manager | Regulatory compliance (ISO, GMP, 21 CFR 11) |
| AI/ML Engineer | Predictive inventory, optimization algorithms |
| Biobank Technicians | Sample processing |

# Next Steps

1. Finalize Living Biorepository technical architecture with Suite 4 Data Platform team
2. Implement real-time FHIR linkage to Connect Care via platform DSA
3. Deploy predictive inventory management algorithms
4. Establish cross-trial reuse governance framework with Data Access Committee
5. Coordinate GMP cleanroom specifications for ACTM expansion
6. Develop consent-aware routing logic with participant portal (Suite 5)

**Contact:** CBSR | Canadian BioSample Repository | ACTM | Alberta Cell Therapy Manufacturing

---

*For detailed technical specifications, see [Suite 2 Technical Specification](../suites/suite_2_living_biorepository.md)*
