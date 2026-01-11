# CTAP Flagship Programs Reference

> **Note**: This document describes flagship programs specific to the **CFI CTAP** proposal.
> Other CFI projects should define their flagship programs in `projects/$PROJECT/config/context.yaml`.
> See [document-architecture.md](document-architecture.md) for the configuration file format.

## How to Use This Reference

This is the detailed reference for **cfi-ctap** flagship programs. The canonical definition is in `projects/cfi-ctap/config/context.yaml`.

**For other CFI projects:**
1. Create your own `config/context.yaml` with your flagship programs
2. The CFI skills will load flagships from your project's config
3. Use this document as a template for the level of detail to include

## Overview

CTAP infrastructure supports five flagship research programs that demonstrate the platform's translational impact. Every equipment item should link to at least one flagship program.

## Five Flagship Programs

### 1. Neuro-immunology and MS Trials

**Research Focus:** Multiple sclerosis, neuroinflammation, neurodegenerative diseases

**Suites Required:**
- **Suite 1** - Challenge Unit for controlled neurological assessments
- **Suite 2** - CSF banking with longitudinal outcome tracking
- **Suite 4** - Data platform for multi-modal integration

**Key Infrastructure:**
| Equipment | Suite | Purpose |
|-----------|-------|---------|
| Intrathecal sampling station | 1 | CSF collection for biomarker studies |
| CSF processing and cryopreservation | 2 | Longitudinal sample banking |
| MS-specific biomarker panels | 3 | Neurofilament, oligoclonal bands |
| EHR integration for outcomes | 4 | Relapse tracking, disability progression |

**Key Investigators:** Neurology, Neuro-immunology research programs

**National Networks:** CIHR MS Research Network, Brain Canada

---

### 2. Hepatitis C and Vaccine Development

**Research Focus:** Infectious disease vaccines, HCV cure verification, challenge studies

**Suites Required:**
- **Suite 1** - Vaccine Challenge Unit (BSL-2+)
- **Suite 2** - Serum banking for immunological monitoring
- **Suite 3** - Structural biology for antigen design

**Key Infrastructure:**
| Equipment | Suite | Purpose |
|-----------|-------|---------|
| BSL-2+ containment facilities | 1 | Safe handling of infectious agents |
| Challenge agent preparation | 1 | Controlled exposure protocols |
| Serum cryopreservation | 2 | Longitudinal immune monitoring |
| Cryo-EM access | 3 | Vaccine antigen structure determination |

**Key Investigators:** Li Ka Shing Institute of Virology, Infectious Disease

**National Networks:** VIDO-InterVac, Canadian Immunization Research Network

---

### 3. Cardio-renal Trials

**Research Focus:** Heart failure, chronic kidney disease, cardiorenal syndrome

**Suites Required:**
- **Suite 1** - Cardiorenal monitoring unit
- **Suite 2** - Biospecimen collection and banking
- **Suite 3** - Metabolomics for biomarker discovery

**Key Infrastructure:**
| Equipment | Suite | Purpose |
|-----------|-------|---------|
| Cardiac monitoring systems | 1 | Continuous hemodynamic assessment |
| Renal function monitoring | 1 | Real-time GFR, electrolyte tracking |
| Blood/urine biobanking | 2 | Longitudinal sample collection |
| TMIC metabolomics access | 3 | Cardiorenal metabolite profiling |

**Key Investigators:** Cardiovascular research, Nephrology, VIGOR Centre

**National Networks:** Heart & Stroke Foundation trials, Can-SOLVE CKD

---

### 4. Pediatric Rare Disease

**Research Focus:** Rare genetic diseases in children, gene therapy, natural history studies

**Suites Required:**
- **Suite 1** - Pediatric-friendly trial unit
- **Suite 4** - RareKids-CAN data hub, federated analytics

**Key Infrastructure:**
| Equipment | Suite | Purpose |
|-----------|-------|---------|
| Child-friendly clinical space | 1 | Age-appropriate assessments |
| Pediatric vital signs monitoring | 1 | Continuous safety monitoring |
| Remote monitoring devices | 5 | Decentralized trial participation |
| Federated data access | 4 | National rare disease registry linkage |

**Key Investigators:** Stollery Children's Hospital research, Medical Genetics

**National Networks:** RareKids-CAN, Genome Canada, CIHR Rare Disease Network

**Special Considerations:**
- Parent/caregiver involvement in consent
- Extended hours for family convenience
- Play-based distraction during procedures
- Transition protocols for aging-out participants

---

### 5. CRAIDL Development

**Research Focus:** AI-augmented clinical trial operations, autonomous agent development

**Suites Required:**
- **Suite 4** - AI/HPC infrastructure, three-zone TRE
- **Suite 5** - Trial innovation tools, wearable validation

**Key Infrastructure:**
| Equipment | Suite | Purpose |
|-----------|-------|---------|
| GPU compute cluster | 4 | LLM inference and fine-tuning |
| FHIR integration servers | 4 | Real-time EHR connectivity |
| Three-zone TRE architecture | 4 | Secure AI agent deployment |
| Wearable device validation lab | 5 | Digital endpoint development |
| eConsent platform | 5 | AI-assisted consent management |

**CRAIDL Agent Architecture:**

Six specialized AI agents operating across TRE zones:

| Agent | Function | TRE Zone |
|-------|----------|----------|
| **Protocol Agent** | Protocol generation from research objectives | Zone 3 |
| **Data Management Agent** | CDM transformation, data quality | Zone 2-3 |
| **Events Agent** | AE detection and reporting | Zone 2 |
| **Ethics Agent** | Consent management, protocol amendments | Zone 2-3 |
| **Regulatory Agent** | Submission package preparation | Zone 3 |
| **Budget & Contracts Agent** | Site payments, milestone tracking | Zone 3 |

**Key Investigators:** Computing Science (AI), Health Informatics, UACT

**Development Partners:** Amii (Alberta Machine Intelligence Institute), AHS Analytics

---

## Infrastructure-Flagship Mapping

### By Suite

| Suite | Flagship Programs Supported |
|-------|----------------------------|
| Suite 1 | Neuro-immunology, Hepatitis C, Cardio-renal, Pediatric Rare |
| Suite 2 | Neuro-immunology, Hepatitis C, Cardio-renal |
| Suite 3 | Hepatitis C, Cardio-renal |
| Suite 4 | Neuro-immunology, Pediatric Rare, CRAIDL |
| Suite 5 | CRAIDL |

### Equipment Validation Checklist

When reviewing equipment items, verify:

- [ ] Equipment links to at least one flagship program
- [ ] Flagship program has adequate infrastructure in supporting suites
- [ ] O&M projections account for flagship-specific operations
- [ ] Training plans include flagship-specific protocols
- [ ] Access policies address flagship researcher needs

## Flagship-Specific Metrics

| Flagship | Target Trials/Year | HQP Impact | Key Outcome |
|----------|-------------------|------------|-------------|
| Neuro-immunology | 3-5 | 15 trainees | MS treatment acceleration |
| Hepatitis C | 2-3 | 10 trainees | Vaccine development |
| Cardio-renal | 4-6 | 20 trainees | Novel endpoint validation |
| Pediatric Rare | 5-8 | 12 trainees | Natural history datasets |
| CRAIDL | Embedded | 25 trainees | Agent deployment to ACT-AEC |

## Cross-Flagship Synergies

### Shared Infrastructure
- All flagships benefit from Suite 4 data platform
- Biorepository (Suite 2) serves multiple flagships
- Suite 5 wearables applicable to all therapeutic areas

### Common Data Model
- OMOP CDM enables cross-flagship analytics
- Federated queries across flagship datasets
- AI models trained on aggregated multi-flagship data

### HQP Cross-Training
- Trainees rotate across flagship programs
- Shared methods training (GCP, data science, AI)
- Collaborative research projects encouraged
