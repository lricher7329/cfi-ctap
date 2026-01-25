---
title: "Clinical Trials Acceleration Platform (CTAP)"
subtitle: "Infrastructure Overview – CFI Innovation Fund 2027"
author: "Lawrence Richer, MD, MSc"
affiliation: "University of Alberta"
date: "January 2026"
bibliography: ../refs/references.bib
csl: ../../../shared/csl/vancouver.csl
---

# The Clinical Trials Acceleration Platform

The proposal seeks **$11.6 million** through the CFI Innovation Fund and the Government of Alberta to establish the Clinical Trials Acceleration Platform (CTAP)—**Canada’s first AI-native clinical trials infrastructure embedded within a provincial health system**.

Advances in artificial intelligence, molecular biology, and biomanufacturing have dramatically expanded the pipeline of candidate vaccines, biologics, and cell therapies. Yet the primary constraint on patient benefit remains unchanged: **the speed, cost, and system-level integration of human clinical trials**. While AI-enabled tools can reduce eligibility screening time by up to 78% and achieve over 90% sensitivity in patient identification, these capabilities are typically applied to isolated steps within the trial lifecycle. **This fragmentation—rather than limitations in AI performance—has become the dominant barrier to translating scientific advances into real-world patient impact.**

CTAP directly addresses this challenge through five tightly integrated infrastructure suites that re-architect clinical trials as a continuously learning system. By systematically linking clinical operations, biospecimen infrastructure, advanced analytics, and AI-driven orchestration, CTAP enables data, samples, and operational knowledge to flow back into subsequent trial design and execution—accelerating discovery, validation, and translation at scale.

![CTAP Infrastructure Overview](../figures/ctap-overall-preferred.png)

*Figure 1: CTAP integrates five infrastructure suites around a central AI-enabled operations hub (CRAIDL), connected to Alberta's discovery ecosystem, biomanufacturing capacity, provincial health system, and AI/compute infrastructure.*

---

# Infrastructure Investment Summary

| Suite | Name | CFI Request |
|-------|------|-------------|
| 1 | Clinical Trials Participant & Procedure Infrastructure | $2,390,000 |
| 2 | Living Biorepository | $3,860,000 |
| 3 | Translational Science Integration | $1,480,000 |
| 4 | Data Platform, Secure Environments, AI/HPC | $2,805,000 |
| 5 | Trial Innovation Tools & Wearables | $1,056,000 |
| **Total** | | **$11,591,000** |

**Funding Model:** CFI Innovation Fund (40%) + Provincial/Institutional Matching (60%)

---

# Suite 1: Clinical Trials Participant & Procedure Infrastructure

**Budget: $2,390,000**

Suite 1 establishes the physical clinical trials infrastructure required for complex interventional trials. Rather than building de novo facilities, CTAP strategically enhances an existing network of established clinical research units while creating two new specialized capabilities.

## Existing Facility Network

| Facility | Location | Current Capability | CTAP Enhancement |
|----------|----------|-------------------|------------------|
| **Adult CIU** | UAH MacKenzie Centre | 8-bed Phase I-IV, Level 2 containment | POC laboratory, IP pharmacy automation |
| **Pediatric CIU** | Stollery Oilers Clinic | Phase I pediatric (1 of 2 in Canada) | Rare disease equipment, telehealth |
| **ADI CRU** | Li Ka Shing Centre | Phase II-III metabolic, 8,000 sq ft | Network integration |

## New Specialised Units

**Vaccine Challenge Trial Unit ($490,000):** Canada's first academic human challenge trial (Controlled Human Infection Model) capability. Four negative-pressure isolation rooms with continuous monitoring support Dr. Michael Houghton's (Nobel laureate 2020) Hepatitis C vaccine program and pandemic preparedness through PRAIRIE Hub. Challenge trials accelerate vaccine development 10-100× faster than traditional field trials.

**Pediatric Rare Disease Clinical Trials Unit ($200,000 CTAP + $200,000 Stollery Foundation):** Located at Stollery Children's Hospital—one of only two Canadian pediatric Phase I sites—this unit serves as the Western anchor for the national RareKids-CAN network. Infrastructure includes gene therapy long-term monitoring stations (FDA mandates 15+ year follow-up), pediatric-specific infusion pumps, and telehealth capability for the largest North American pediatric catchment area.

## Key Infrastructure Components

- **Procedure room fit-out** (3 rooms): Negative pressure capability, IV infusion stations
- **Monitoring bay fit-out** (6 bays): Post-infusion observation, telemetry ready
- **Point-of-care laboratory**: Blood gas, chemistry, and coagulation analyzers for STAT safety labs
- **IP pharmacy infrastructure**: Cleanroom upgrade (USP 797/800), automated dispensing, temperature-controlled storage with API manufacturing integration

---

# Suite 2: Living Biorepository & Cell Manufacturing

**Budget: $3,860,000**

Suite 2 establishes the **Living Biorepository**—a fundamental reconceptualization of biospecimen management that transforms static sample storage into an intelligent, continuously-updated discovery engine.

## The Living Biorepository Concept

Unlike traditional biobanks that archive specimens with point-in-time metadata, the Living Biorepository maintains dynamic linkages to participants' evolving health records through Connect Care's FHIR API, enabling retrieval based on clinical outcomes that emerge years after collection.

| Capability | Traditional Biobank | Living Biorepository |
|------------|--------------------|-----------------------|
| EMR linkage | Point-in-time snapshot | Continuous real-time updates |
| Outcome tracking | Manual, retrospective | Automated, prospective |
| Consent management | Static, binary | Dynamic, granular |
| Inventory management | Reactive | Predictive, AI-assisted |
| Cross-trial reuse | Ad-hoc | Governed, automated |

## Five Core Capabilities

1. **Real-Time EMR Linkage:** Specimens remain continuously linked to Connect Care records, enabling retrieval by outcome (e.g., "all samples from patients who developed MS within 5 years")
2. **Automated Outcome Annotation:** Trial samples automatically annotated with 5-10 year outcomes from provincial health records
3. **Predictive Inventory Management:** AI predicts sample depletion, suggests optimal aliquoting, identifies underutilized specimens
4. **Consent-Aware Sample Routing:** Specimens flow automatically to approved studies based on consent scope
5. **Radiogenomic Integration:** Every biobanked specimen "twinned" with corresponding imaging data for virtual biopsy validation

## Physical Infrastructure

**Cold Storage Expansion:** 20 new -80°C chest freezers with CO₂ backup systems, 3 LN₂ vapor-phase dewars, capacity for 150,000+ samples per freezer configuration

**Processing Equipment:** Automated sample handling robotics (Tecan Freedom Evo 200), chip-based FACS, TapeStation for nucleic acid QC, high-throughput centrifugation

**BioBank Software Modernization:** Migration from legacy caTissue to OpenSpecimen with full FHIR R4 integration, REDCap connectivity, and 21 CFR Part 11 compliance

## Cell Manufacturing Integration

Suite 2 integrates with Alberta Cell Therapy Manufacturing (ACTM) for GMP cell production supporting MS Cell Therapies and neuro-immunology trials. The operational CAR-T program (Dr. Michael Chiu) demonstrates the complete bedside-to-bench-to-bedside pathway that CTAP will scale.

---

# Suite 3: Translational Science 'Omics' Integration Hub

**Budget: $1,480,000**

Suite 3 provides the **trial-to-facility interface layer**—standardised protocols, quality systems, and data pipelines that connect clinical trial operations with the University of Alberta's world-class omics infrastructure. The CTAP leadership team includes clinical trialists, not omics specialists; Suite 3 builds the bridges, not the buildings.

## Partnership Model

| Partner Facility | Capability | CTAP Provides | Facility Provides |
|-----------------|-----------|--------------|-------------------|
| **ACE Core** | Single-cell sequencing, spatial transcriptomics, metabolic analysis | Trial sample pipeline, outcome linkage | Instrumentation, expertise |
| **Alberta Cryo-EM** | Atomic-scale imaging | Structural biology endpoints | Structure-guided insights |
| **GlycoNet** | Glycan profiling | Standardised sample handling | Therapeutic glycoprotein analysis |
| **TMIC** | Metabolomics (50K samples/year) | Quality-controlled trial samples | Biomarker discovery |
| **Alberta Proteomics** | Protein identification | Pre-analytical QA | Protein biomarker analysis |

## Three Pillars

**Pillar 1: Protocol Integration Services ($300,000):** Standardized SOPs, pre-approved consent language for omics analysis, facility-specific sample collection kits, regulatory dossier templates

**Pillar 2: Quality Bridge Infrastructure ($500,000):** Pre-analytical QC systems (RNA integrity, protein degradation markers), cold-chain logistics equipment, sample preparation standardization. The #1 failure mode for translational samples is pre-analytical variability—Suite 3 solves this at the source.

**Pillar 3: Data Return Pipeline ($250,000):** Custom ETL pipelines for each partner facility, OMOP molecular extensions, analysis workstations for clinical-molecular correlation. This is the unique value CTAP provides—turning facility outputs into clinical trial endpoints that regulators accept.

---

# Suite 4: Data Platform, Secure Environments, AI/HPC

**Budget: $2,805,000**

Suite 4 establishes the digital backbone of CTAP, creating Canada's first AI-native clinical trials data infrastructure through three integrated components.

## Three-Zone Trusted Research Environment

Aligned with international best practices (UK Biobank, All of Us, FinnGen) and Alberta's Health Information Act:

| Zone | Purpose | Access |
|------|---------|--------|
| **Zone 1: Identifiable** | AHS data extracts, consent registry, identity resolution | Custodian staff only |
| **Zone 2: Controlled** | De-identification, OMOP/CDISC transformation, safety monitoring | Approved researchers |
| **Zone 3: Research** | Trial data lake, OMOP analytics, biospecimen registry | Governed researcher access |

**Key Integration:** Connect Care (4.4M patients) links to REDCap (prospective trial data) via FHIR API, with de-identified data flowing to OMOP Common Data Model for federation with OHDSI (100+ international sites), VITAL, and national networks.

## CRAIDL: AI-First Clinical Trials Engine

Eight AI agents developed with Amii that automate the complete trial lifecycle:

| Agent | Function |
|-------|----------|
| **In Silico Assessment** | Protocol simulation, "digital twin" feasibility against Connect Care data |
| **Protocol** | Hypothesis-to-protocol conversion following SPIRIT 2025 |
| **Data Management** | Statistical design, REDCap/EDC creation, randomization schemes |
| **Events** | Endpoint capture, safety signal adjudication |
| **Ethics** | REB submissions, consent generation (TCPS2, ICH E6(R3)) |
| **Regulatory** | Health Canada/FDA compliance, CDISC dataset transformation |
| **Budget & Contracts** | Fair market value budgeting, contract generation |
| **Imaging/Radiomics** | Radiomic biomarkers, automated imaging-based eligibility |

**Proof-of-Concept Validated:** An investigator-developed prototype demonstrates working capability for four agents. CFI investment transforms this proven methodology into institutional infrastructure.

## AI Scribe Integration

Dr. Ross Mitchell's AI Scribe ("Jenkins")—deployed across 10 Alberta EDs with 6,700+ sessions—extends CTAP's AI capabilities to voice-first clinical trial documentation, consent audit trails, and natural language adverse event capture.

---

# Suite 5: Trial Innovation Tools & Wearables

**Budget: $1,056,000**

Suite 5 enables decentralized, patient-centric clinical trials through modern eConsent platforms, wearable devices, telehealth infrastructure, and participant engagement tools. This suite is critical for equity objectives—reaching Indigenous communities, rural populations, and participants who cannot travel to urban academic centres.

## Infrastructure Components

**eConsent and Digital Recruitment ($400,000):** Enterprise eConsent platform with multilingual support (10+ languages including Cree, Blackfoot, Dene, Michif), AI-assisted trial-participant matching, direct integration with CRAIDL Ethics Agent

**Mobile Devices and Kiosks ($200,000):** 40 tablets for in-clinic consent, 20 clinic kiosks for self-service check-in, 20 study smartphones for decentralized participants

**Wearable Devices ($325,000):** ECG patches for cardiac safety monitoring, continuous glucose monitors, blood pressure monitors, actigraphy devices for sleep/activity tracking

**Telehealth Infrastructure ($175,000):** 20 telehealth kits for rural/Indigenous sites, remote monitoring platform, secure video for virtual visits

## Equity-Focused Design

All Suite 5 tools are developed in consultation with UACT's **Indigenous Clinical Trials Unit (ICTU)**—Canada's first Indigenous-designed clinical trials infrastructure:

- **OCAP Enforcement:** Indigenous participant data tagged at collection with access controls requiring Indigenous Data Steward approval
- **Language Access:** Indigenous language options including Cree (Plains/Woods), Blackfoot, Dene, Michif
- **Data Sovereignty:** All data remains within Alberta; community-level consent options for collective data use
- **Rural Access:** Telehealth kits enable participation without travel to Edmonton; cellular data plans for limited infrastructure areas

## Digital Health Device Validation Program

CTAP positions Suite 5 as the clinical validation hub for UAlberta's digital health innovation ecosystem—providing regulatory-grade trial infrastructure for devices developed by UAlberta researchers including AI Scribe, microwave glucose sensors, diabetic wound sensors, and VR therapy platforms.

---

# Flagship Research Programs

CTAP infrastructure supports four flagship clinical trials programs representing Alberta's distinctive research strengths:

| Program                                      | Leadership and Partnership                                   | CTAP Role                                                    |
| -------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Neuro-immunology & MS Cell Therapies**     | MS Centre (Cris Power, Anatasia Voronova, 29 affiliates); collaboration with UCSF - Quantitative Biosciences Institute; leveraging translational core facilites including Cell Imaging Facilities, Advanced Cell Exploration Core, Glycomics Institute of Alberta, - The Metabolomics Innovation Centre (TMIC), Alberta Proteomics and Mass Spectrometry (APM), Cryo-EM | Accelerated  human trials for innovative cell therapies, deep phenotyping via Omics Integration Hub |
| **Hepatitis C & Vaccine Trials**             | Hepatitis C (Michael Houghton; Nobel 2020), Li Ka Shing Institute, PRAIRIE Hub (Joanne Lemieux, Maya Shmulevitz) | Alberta's first academic Challenge Trial Unit; accelerated CHIM protocols |
| **Cardio-Renal-Metabolic Population Health** | Canadian VIGOUR Centre (Justin Ezekowicz), Alberta Diabetes Institute, Connect1d Canada, Islet Cell Core (Peter Senior, Patrick Macdonald) | Pragmatic trials, decentralized designs, trial innovation suite for innovative remote monitoring (e.g. novel continuous glucose monitoring), wearables integration, digital health platforms |
| **Pediatric Rare Disease **                  | Stollery Children's Hospital (1 of 2 Canadian Phase I sites), Women and Children's Health Research Institute - Translational Genomics Hub, RareKids-CAN - national trials network for pediatric rare disease | Pediatric Rare Disease Trials Unit, accelerated patient impact |

---

# Integration with Alberta's Research Ecosystem

CTAP does not duplicate existing excellence—it connects:

**Discovery Infrastructure ($400M+ cumulative investment):** University of Alberta Cryo-EM Facility ($20M), GlycoNet (glycomics), TMIC metabolomics (50K samples/year), Alberta Cell Therapy Manufacturing

**Biomanufacturing Capacity:** Critical Medicines Production Centre ($200M, 70M doses/year by 2026), PRAIRIE Hub ($109.9M pandemic preparedness), Applied Pharmaceutical Innovation partnership

**Health System Integration:** Connect Care (province-wide Epic EMR, 682 sites, 4.4M Albertans) provides computable access to longitudinal records for population-scale research

**AI Expertise:** Alberta Machine Intelligence Institute (Amii)—10+ CIFAR AI Chairs in health/life sciences, pioneers of modern reinforcement learning

**National Networks:** ACT-AEC (Accelerating Clinical Trials), PRAIRIE Hub, RareKids-CAN, DHDP ($49M federal + $108M partner + $165M in-kind)

---

**CTAP transforms clinical trials from bottlenecks into accelerators of human health—establishing the University of Alberta as a permanent national hub for advanced therapeutic validation, where the promise of AI-enabled medicine becomes an operational reality for patients across Alberta and beyond.**

**Contact:** Lawrence Richer, MD, MSc | College of Health Sciences | University of Alberta
