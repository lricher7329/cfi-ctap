---
title: "Clinical Trials Acceleration Platform (CTAP)"
subtitle: "CFI Innovation Fund 2027 – Executive Brief"
author: "Lawrence Richer, MD, MSc"
affiliation: "University of Alberta"
date: "January 2026"
target_audience: "Institutional leadership, funding partners, government stakeholders"
bibliography: ../refs/references.bib
csl: ../../../shared/csl/vancouver.csl
---
# Executive Summary

Advances in artificial intelligence, molecular biology, and biomanufacturing have dramatically expanded the pipeline of candidate vaccines, biologics, and cell therapies. Yet the fundamental constraint on patient benefit remains unchanged: **the speed, cost, and system-level integration of human clinical trials**. Although AI-enabled tools can reduce eligibility screening time by up to 78% and achieve over 90% sensitivity in patient identification, these capabilities are typically deployed in isolation, addressing discrete steps rather than the trial lifecycle as a whole. **This fragmentation—rather than limitations in AI performance—has become the dominant barrier to translating scientific advances into real-world patient impact.**

Addressing this challenge requires more than incremental optimisation. It requires integration. The Clinical Trials Acceleration Platform (CTAP) is Canada’s first **AI-native clinical trials infrastructure**, purpose-built as a unified, end-to-end system and embedded directly within a provincial health system. CTAP reframes clinical trials not as episodic, stand-alone projects, but as a continuously learning ecosystem in which clinical data, biospecimens, and operational intelligence are systematically integrated and reinvested to accelerate subsequent discovery, validation, and translation.

![CTAP Infrastructure Overview](../figures/ctap-overall-preferred.png)

*Figure 1: CTAP integrates five infrastructure suites around a central AI-enabled operations hub, connected to Alberta's discovery ecosystem (PRAIRIE Hub, Li Ka Shing Institute), biomanufacturing capacity (API, ACTM, CMPC), provincial health system (Connect Care), and AI/compute infrastructure (Amii, AWS). The Key Pathway illustrates the end-to-end discovery-to-production pathway that CTAP enables.*

---

# Strategic Alignment

CTAP is anchored within the newly established **Dianne and Irving Kipnes Health Research Institute**, whose vision—*"Alberta will be the place where research discoveries reach patients in our communities not in decades, but in years or even months"*—defines the platform's mission. This $25 million philanthropic investment signals a deep institutional commitment to accelerating clinical trials and translating knowledge into impact.

The platform directly operationalises *Forward with Purpose: A Strategic Plan for Research and Innovation 2023-2028* and the Alberta Technology and Innovation Strategy (ATIS) by integrating AI, advanced biomanufacturing, secure cloud infrastructure, and clinical trials at scale.

---

# Why Alberta, Why Now

The timing for CTAP is uniquely favourable due to an unprecedented convergence of enabling factors. It builds on efforts to accelerate clinical trial start-up at provincial and national level.

| Asset                              | Strategic Value                                                                                                                                                    |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Amii**                     | 10+ CIFAR AI Chairs in health/life sciences; pioneers of modern reinforcement learning; Dr. Ross Mitchell's AI Scribe deployed across 10 Alberta EDs               |
| **Connect Care**             | Province-wide Epic EMR spanning 682 sites and 4.4 million Albertans—no other Canadian province has this combination of scale, integration, and data accessibility |
| **Discovery Infrastructure** | $400M+ cumulative investment: Cryo-EM ($20M, only one in Alberta), GlycoNet (glycomics), Metabolomics (TMIC, 50K samples/year), ACTM cell therapy manufacturing    |
| **Biomanufacturing**         | Alberta Cell Therapy Manufacturing (ACTM), Applied Pharmaceutical Innovation (API) and the Critical Medicines Production Centre ($200M, 70M doses/year by 2026), PRAIRIE Hub ($109.9M) |
| **Provincial Coordination** | Alberta Fast-track to Accelerate Start-up of Clinical Trials (Alberta FAST) program and Clinical Trials Alberta |
| **National Networks**        | Acclerating Clinical Trials consortium (ACT-AEC), PRAIRIE Hub for pandemic preparedness, RareKids-CAN for rare disease clinical trials ($49M federal + $108M partner + $165M in-kind) |
| **Advanced Secure Computing** | Secure Data Reseearch Environment (SDRE) and secure cloud infrastructure (AWS Calgary) with Trusted Research Environment  expertise, meeting federal and provincial security requirements |

**The Unique Combination:** Few centres globally combine GMP manufacturing, deep structural and systems biology, national-scale omics, a top-tier AI institute with CIFAR Chairs, a mature academic trials organisation (Canadian VIGOUR Centre), and a single-payer provincial health system with province-wide EMR—into a single clinical trials platform.

---

# Infrastructure Investment

| Suite           | Name                                                   | CFI Request           |
| --------------- | ------------------------------------------------------ | --------------------- |
| 1               | Clinical Trials Participant & Procedure Infrastructure | $2,390,000            |
| 2               | Living Biorepository              | $3,860,000            |
| 3               | Translational Science Integration                      | $1,480,000            |
| 4               | Data Platform, Secure Environments, AI/HPC             | $2,805,000            |
| 5               | Trial Innovation Tools & Wearables                     | $1,056,000            |
| **Total** |                                                        | **$11,591,000** |

**Funding Model:** CFI Innovation Fund (40%) + Provincial/Institutional Matching (60%)

---

# Key Innovations

## Clinical Research Assistants for Intelligent Design and anaLysis (CRAIDL): AI-First Clinical Trials Engine

An AI-first approach to accelerating all aspects of clinical trial development, implementation, and operations. A suite of eight AI agents developed with Amii that automate protocol design, predict recruitment bottlenecks, and streamline regulatory documentation:

| Agent                          | Function                                                                  |
| ------------------------------ | ------------------------------------------------------------------------- |
| **In-Silico Assessment** | Clinical trial simulation, "digital twin" feasibility against real world Connect Care data |
| **Protocol**             | Hypothesis-to-protocol conversion (demonstrated as a prototype)        |
| **Data Management**      | Statistical design, EDC creation (demonstrated as a prototype) |
| **Events**               | Endpoint capture, safety signal adjudication                              |
| **Ethics**               | REB submissions, consent generation (demonstrated as a prototype)     |
| **Regulatory and Operational Approval** | Health Canada/FDA compliance, health system operational approval acceleration (demonstrated as a prototype) |
| **Budget & Contracts**   | Fair market value budgeting, accelerated contract review               |
| **Imaging/Radiomics**    | Radiomic biomarkers, automated eligibility                                |

**Proof-of-Concept Validated:** An investigator-developed prototype demonstrates working capability for four agents (Protocol, Data Management, Ethics, Regulatory). CFI investment transforms this proven methodology into institutional infrastructure.

## Living Biorepository

A fundamental reconceptualisation transforming biospecimen management from static storage into an intelligent discovery engine—with real-time EMR linkage via the Connect Care FHIR API, automated 5-10-year outcome annotation, predictive inventory management, and consent-aware sample routing.

## Three-Zone Trusted Research Environment (TRE)

Designed in alignment with international exemplars (UK Biobank, All of Us, FinnGen) and Alberta’s Health Information Act, the Three-Zone Trusted Research Environment (TRE) functions as a **policy-driven compliance and security layer** for the CTAP ecosystem. The architecture programmatically enforces federal (STRAC/NSGRP) and provincial (HIA) safeguards through role-based access control, data zoning, audit logging, and automated disclosure controls, ensuring that regulatory requirements are embedded directly into system operations rather than applied retroactively.

The TRE integrates with national secure federation platforms (VITAL/GEMINI) and supports governed, auditable query and analysis across the institution, enabling secure access to data derived from Alberta’s health system while minimising unnecessary data movement. By separating raw, curated, and analytics-ready environments, the Three-Zone model enables advanced analytics and AI workflows while maintaining strict data minimisation, centrally managed de-identification, end-to-end provenance, and accountability—providing a scalable and sustainable foundation for compliant, multi-institutional clinical trials research.

---

# Core Objectives (By 2031)

1. **Reduce trial startup by 40-50%** (from 12+ months to 6 months; stretch goal: 4 weeks via CRAIDL)
2. **Double recruitment efficiency** with explicit targets: 15% Indigenous, 20% rural, pediatric participation
3. **Enable 5+ first-in-human trials** through Canada's first academic Challenge Trial Unit and ACTM cell therapy; 2+ products advancing to CMPC scale-up
4. **Integrate biospecimens and RWD** in 70%+ of interventional trials with Connect Care linkage
5. **Deploy 8 CRAIDL AI agents** as national infrastructure via ACT-AEC; adopted by 5+ institutions
6. **Establish pandemic preparedness capacity** supporting PRAIRIE Hub vaccine programs (saRNA, Comparative Vaccine Platform)
7. **Create a national backbone** serving 10+ institutional partners across ACT-AEC, PRAIRIE Hub, RareKids-CAN
8. **Train 150+ HQP** in AI-enabled trial design (20% Indigenous/underrepresented); training curriculum adopted nationally

---

# Flagship Programs

| Program                                      | Leadership and Partnership                                   | CTAP Role                                                    |
| -------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Neuro-immunology & MS Cell Therapies**     | MS Centre (Cris Power, Anatasia Voronova, 29 affiliates); collaboration with UCSF - Quantitative Biosciences Institute; leveraging translational core facilites including Cell Imaging Facilities, Advanced Cell Exploration Core, Glycomics Institute of Alberta, - The Metabolomics Innovation Centre (TMIC), Alberta Proteomics and Mass Spectrometry (APM), Cryo-EM | Accelerated  human trials for innovative cell therapies, deep phenotyping via Omics Integration Hub |
| **Hepatitis C & Vaccine Trials**             | Hepatitis C (Michael Houghton; Nobel 2020), Li Ka Shing Institute, PRAIRIE Hub (Joanne Lemieux, Maya Shmulevitz) | Alberta's first academic Challenge Trial Unit; accelerated CHIM protocols |
| **Cardio-Renal-Metabolic Population Health** | Canadian VIGOUR Centre (Justin Ezekowicz), Alberta Diabetes Institute, Connect1d Canada, Islet Cell Core (Peter Senior, Patrick Macdonald) | Pragmatic trials, decentralized designs, trial innovation suite for innovative remote monitoring (e.g. novel continuous glucose monitoring), wearables integration, digital health platforms |
| **Pediatric Rare Disease **                  | Stollery Children's Hospital (1 of 2 Canadian Phase I sites), Women and Children's Health Research Institute - Translational Genomics Hub, RareKids-CAN - national trials network for pediatric rare disease | Pediatric Rare Disease Trials Unit, accelerated patient impact |

---

# Benefits to Canada

**Health Benefits:** Faster access to therapies through reduced startup times (78% reduction in screening, 4.5× faster eligibility). Indigenous and rural communities benefit from co-designed, culturally safe protocols and from the integration of ICTU (Indigenous Clinical Trials Unit).

**Economic Benefits:** CTAP positions Alberta as an international technology and innovation hub, directly supporting ATIS goals. The platform will generate IP in AI algorithms, attract industry R&D, and create globally competitive HQP at the intersection of clinical research, data science, AI, and biomanufacturing.

**National Impact:** CRAIDL agents developed using open-source architecture will be deployable across the ACT-AEC network nationally—extending AI-enabled trial capabilities beyond well-resourced academic centres and broadening who benefits from AI-enhanced clinical research.

---

# Sustainability

CTAP operates as an institutional core-facility infrastructure with a diversified sustainability model:

**Infrastructure Operating Fund (IOF):** CFI's IOF provides ongoing support for equipment maintenance, technical personnel, and operational costs—the initial sustainability mechanism for CFI-funded infrastructure.

**Cost-Recovery Services:**

Future cost-recovery for services and clinical trial revenues and overhead from the long-term sustainability plan.

| Service                                      | Fee Structure                                                |
| -------------------------------------------- | ------------------------------------------------------------ |
| Biobanking                                   | $35/sample processing + $5-15/year storage                   |
| Clinical trial facilities                    | Challenge Trial Unit, Rare Disease Trial Unit, ADI Clinical Research Unit, CIU facility fees |
| Industry feasibility queries                 | $2,500/query                                                 |
| TRE workspace provisioning                   | $15,000/study-year                                           |
| Industry clinical trial revenue and overhead | 20% increase in clinical trials would bring $6 million in increased revenue |

**Grant Funding:** Ongoing support through Alberta Innovates, CIHR, and NFRF competitions—CTAP infrastructure enables competitive applications across these programs. Increased opportunities  to leverage national programs through PRAIRIE Hub, ACT-AEC, RareKids-CAN, 

**Institutional Commitments:** The University of Alberta and College of Health Sciences have committed to allocating and maintaining space in the Kipnes Health Research Academy for the Kipnes Health Research Institute, providing base support for key personnel (Program Director, Operations Manager, Data Architect), and integrating CTAP into institutional strategic plans and core-facility frameworks.

---

CTAP transforms clinical trials from bottlenecks into accelerators of human health—establishing the University of Alberta as a permanent national hub for advanced therapeutic validation, where the promise of AI-enabled medicine becomes an operational reality for patients across Alberta and beyond.

**Contact:** Lawrence Richer, MD, Msc | College of Health Sciences | University of Alberta
