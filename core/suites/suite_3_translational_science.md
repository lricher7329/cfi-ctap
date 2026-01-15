# Suite 3: Translational Science Integration Hub

## Concise Technical Specification

**Budget: $2,350,000 CAD**

**Version:** 3.0 **Date:** January 2026

---

## Executive Summary

Suite 3 provides the **trial-to-facility interface layer**—standardized protocols, quality systems, data pipelines, and compute infrastructure that connect clinical trial operations with the University of Alberta's world-class omics infrastructure. The suite operates through five integrated pillars: Protocol Integration Services, Quality Bridge Infrastructure, Data Return Pipeline, CTMS Integration Layer, and AI/ML Development Workstations.

This design follows a **develop locally, scale provincially** philosophy: CFI funds build robust local infrastructure that connects to Alberta's existing provincial systems (OnCore CTMS, CyberaNet, AHS data repositories) through well-defined interfaces. The architecture minimizes cloud compute costs through local AI workstations while maintaining pathways to SDRE and provincial HPC when scale demands.

The University of Alberta's omics infrastructure is world-class. What's missing is the systematic connection to clinical trials. Suite 3 builds the bridges, not the buildings.

---

## 1. Strategic Positioning

### 1.1 Integration, Not Duplication

The CTAP leadership team includes clinical trialists, methodologists, and regulatory experts—not omics specialists. This is intentional. Our role is designing trials that incorporate molecular endpoints, not operating mass spectrometers. For specialized analyses, we partner with the University of Alberta's established core facilities, providing them with clinical context they need and receiving the molecular data trials require.

### 1.2 Partnership Model

Suite 3 operates through formal partnerships with existing core facilities rather than building parallel capabilities:

| Partner Facility | Capability | CTAP Provides | Facility Provides |
|------------------|------------|---------------|-------------------|
| **ACE Core** | Single-cell sequencing (10x Chromium X), spatial transcriptomics (MERSCOPE), metabolic analysis (Seahorse) | Trial sample pipeline, regulatory context, outcome data linkage | Instrumentation, technical expertise, established workflows |
| **Alberta Cryo-EM Facility** | Atomic-scale imaging | Structural biology endpoints in trial protocols | Structure-guided drug insights |
| **Glycomics Institute (GIA)** | Glycan profiling | Standardized sample handling, clinical metadata | Therapeutic glycoprotein analysis |
| **TMIC** | Metabolomics (50K samples/year) | Quality-controlled trial samples | Biomarker discovery |
| **Alberta Proteomics (APM)** | Protein identification | Pre-analytical quality assurance | Protein biomarker analysis |
| **Peter Allen MRI Research Centre** | Advanced multi-organ MRI (brain, cardiac, musculoskeletal), quantitative imaging, novel MR sequences | Trial imaging protocols, longitudinal phenotyping, outcome data linkage | 3T/7T imaging, MR physics expertise, sequence development |
| **ADI IsletCore** | Human pancreatic islet isolation, biobanking, cryopreservation, research distribution (international reach) | Trial sample pipeline for diabetes/metabolic studies, clinical outcome linkage, Edmonton Protocol integration | Research-grade islet preparations, 20+ year cryopreservation expertise, donor phenotyping |

**Note:** The WCHRI Translational Genomics Hub is a research coordination platform (not an instrumentation core) that aligns with CTAP's Pediatric Rare Disease Clinical Trials Unit (Suite 1). The Hub facilitates genomic characterization for undiagnosed families by coordinating ethics, enrollment, sample logistics, and connections to scientists—a complementary coordination function rather than an omics facility partnership.

### 1.3 Develop Locally, Scale Provincially

Suite 3 infrastructure is designed for local development with provincial scaling pathways:

| Component | Local (CFI-Funded) | Provincial Connection |
|-----------|-------------------|----------------------|
| **Data** | OMOP data lake, facility adapters | Interfaces to AHS repositories (DARC/MARC) |
| **Compute** | DGX Spark workstations | SDRE burst capacity, CyberaNet backbone |
| **Trials** | OnCore integration layer | Provincial CTMS already deployed |
| **Samples** | LIMS at CBSR | Provincial biobank network federation |
| **Network** | Secure local infrastructure | CyberaNet connectivity for multi-site |

---

## 2. Infrastructure Components

### 2.1 Pillar 1: Protocol Integration Services

**Budget: $300,000**

Standardized SOPs, consent language, and sample handling protocols that allow trial teams to seamlessly incorporate omics endpoints without needing deep domain expertise.

| Component | Description | Cost |
|-----------|-------------|------|
| Consent module library | Pre-approved consent language for omics analysis (ethics-ready) | $50,000 |
| Sample collection kit development | Facility-specific requirements built into standardized kits | $80,000 |
| Protocol template library | Omics endpoint language validated by each partner facility | $70,000 |
| Regulatory dossier templates | Templates for omics biomarker regulatory submissions | $50,000 |
| SOP development & validation | Working group coordination with facility partners | $50,000 |

**Why this works:** Trial teams can add omics endpoints by using validated templates rather than building expertise from scratch.

### 2.2 Pillar 2: Quality Bridge Infrastructure

**Budget: $550,000**

Equipment and systems that ensure samples collected at clinical sites meet the stringent quality requirements of downstream omics facilities. The #1 failure mode for translational samples is pre-analytical variability—Suite 3 solves this problem at the source.

| Equipment | Specification | Purpose | Cost |
|-----------|---------------|---------|------|
| **Pre-analytical QC systems** | | | |
| RNA integrity analyzer | Agilent Bioanalyzer/TapeStation | Verify RNA quality before facility handoff | $80,000 |
| Protein degradation markers | Automated assessment system | Ensure protein sample quality | $60,000 |
| **Cold-chain logistics** | | | |
| Dry ice shippers | 20 units | Multi-site trial logistics | $30,000 |
| Portable -80°C units | 4 units | Field sample transport | $80,000 |
| Temperature monitoring system | IoT sensors with central dashboard | Real-time alerts, audit trail, ISBER compliance | $80,000 |
| **Sample preparation standardization** | | | |
| Universal processing equipment | Located at CBSR (Suite 2) | Consistent sample handling | $100,000 |
| Quality control checkpoints | Automated verification before facility handoff | Gate-keeping for quality | $50,000 |
| **LIMS Integration** | | | |
| BioBank-CTMS bridge | API layer connecting sample tracking to trial management | Chain-of-custody with trial context | $70,000 |

**Integration with Suite 2:** Quality Bridge equipment is physically co-located with CBSR biorepository operations, creating a seamless sample flow from collection to facility-ready aliquots.

**Temperature Monitoring Architecture:** Continuous IoT monitoring across all storage and transport assets feeds a central dashboard. Excursion alerts trigger within 5 minutes, with automatic notification to sample logistics staff. All temperature data is logged for regulatory audit trails, meeting ISBER best practices for biobanking quality.

### 2.3 Pillar 3: Data Return Pipeline

**Budget: $350,000**

Infrastructure to receive omics results from partner facilities and integrate them with trial data in Suite 4's OMOP data lake.

| Component | Description | Cost |
|-----------|-------------|------|
| Facility data adapters | Custom ETL pipelines for each partner facility's output formats | $100,000 |
| OMOP molecular extensions | Mapping for omics data types to OMOP CDM | $60,000 |
| Data lake infrastructure | Scalable storage for raw omics + processed results | $80,000 |
| Visualization tools | Trial team dashboards showing molecular correlates of response | $50,000 |
| Regulatory reporting | Submission-ready biomarker analysis packages | $30,000 |
| Provincial data interfaces | API specifications for AHS DARC/MARC connectivity | $30,000 |

**Data Architecture:**

```
Partner Facilities → Facility Adapters → Raw Data Lake (S3-compatible)
                                              ↓
                                    OMOP Transformation
                                              ↓
                            Suite 4 Clinical Data Platform
                                              ↓
                              Integrated Analysis Layer
                                    ↙         ↘
                        Local Workstations   SDRE/Provincial HPC
```

**Provincial Readiness:** Data interfaces are designed to connect with Alberta's existing health data infrastructure (DARC at UofA, MARC at UofC, AHS Data & Analytics). This enables future linkage of trial molecular data with provincial health outcomes—but the CFI investment focuses on the local integration layer.

### 2.4 Pillar 4: CTMS Integration Layer

**Budget: $200,000**

Alberta has deployed **OnCore (Advarra)** as the provincial Clinical Trial Management System. Suite 3 builds the integration layer that connects translational research workflows to this existing infrastructure.

| Component | Description | Cost |
|-----------|-------------|------|
| OnCore API integration | Bidirectional data flow between CTMS and translational systems | $80,000 |
| Study configuration templates | Pre-built OnCore templates for omics-enabled trial designs | $30,000 |
| Sample-to-subject linking | Automated association of biobank samples with trial participants | $40,000 |
| Molecular endpoint capture | OnCore extensions for omics result entry and tracking | $30,000 |
| Regulatory workflow automation | Automated dossier generation from integrated data sources | $20,000 |

**Why this matters:** OnCore already tracks every clinical trial in Alberta. By integrating translational workflows directly, we avoid parallel data systems and ensure that molecular endpoints are first-class citizens in trial management—not afterthoughts requiring manual reconciliation.

**Integration Architecture:**

```
OnCore CTMS (Provincial)
       ↕ API Layer
Suite 3 Integration Hub
       ↕
┌──────┴──────┐
↓             ↓
Suite 2       Partner
BioBank       Facilities
(Samples)     (Omics Data)
```

### 2.5 Pillar 5: AI/ML Development Workstations

**Budget: $250,000**

Local AI compute infrastructure for model development, validation, and interactive analysis—reducing dependence on shared HPC resources and cloud compute costs.

| Equipment | Specification | Purpose | Cost |
|-----------|---------------|---------|------|
| **NVIDIA DGX Spark** (×2) | Grace-Blackwell architecture, 128GB unified memory, 1 PFLOP AI performance | Local model training, inference, data exploration | $150,000 |
| **Analysis workstation** | 128-core, 512GB RAM, 4× RTX 4090 | Bioinformatics, statistical analysis | $50,000 |
| **Development environment** | Pre-configured containers, NVIDIA AI stack | Reproducible analysis environments | $30,000 |
| **NVLink interconnect** | High-speed workstation linking | Scale to 400B+ parameter models when needed | $20,000 |

**Use Case Justification:**

| Scenario | Without Local AI | With DGX Spark |
|----------|-----------------|----------------|
| Model prototyping | Wait for SDRE queue (hours-days) | Immediate iteration |
| Interactive exploration | Cloud compute costs accumulate | Fixed local cost |
| Sensitive data analysis | Transfer to external systems | Process in secure local environment |
| Student/trainee projects | Compete for shared resources | Dedicated development capacity |

**SDRE Relationship:** Local workstations handle development, prototyping, and small-to-medium workloads. SDRE provides burst capacity for production-scale analyses. This tiered approach:
- Reduces SDRE queue pressure
- Minimizes cloud compute costs
- Keeps sensitive data local during development
- Enables 24/7 researcher access without scheduling

**Sustainability:** DGX Spark consumes ~300W under load—comparable to a high-end desktop. Annual power cost is approximately $500/unit, making this sustainable infrastructure rather than an operational burden.

### 2.6 ACE Core Access & Coordination

**Budget: $150,000**

Dedicated coordination and access fees to ensure seamless integration with ACE Core capabilities.

| Component | Description | Cost |
|-----------|-------------|------|
| ACE Core access fees | Reserved capacity for CTAP trial samples | $80,000 |
| Protocol development | Trial-specific SOPs developed with ACE Core staff | $40,000 |
| Liaison coordination | Embedded coordination role (0.2 FTE equivalent) | $30,000 |

**ACE Core Capabilities Accessed:**
- **10x Genomics Chromium X** (installed June 2025): Single-cell transcriptomics with 3' v4 GEM-X gene expression
- **Vizgen MERSCOPE**: Spatial transcriptomics using MERFISH (100nm resolution, 140-500 gene panels, FF/FFPE compatible)
- **Agilent Seahorse XFe96**: Metabolic analysis (OCR/ECAR measurements)
- **Sequencing**: MiSeq on-site, NextSeq access via MBSU partnership

### 2.7 High-Throughput Clinical Instrumentation

**Budget: $550,000**

Dedicated equipment that bridges the throughput gap between discovery-mode omics and clinical trial timelines. Partner facilities are optimized for deep discovery (comprehensive but slow); clinical trials require rapid turnaround for actionable biomarker feedback. This equipment enables "clinical-mode" operation within existing facilities.

| Equipment | Specification | Current Gap | Clinical Trial Need | Cost |
|-----------|---------------|-------------|---------------------|------|
| **Rapid Proteomics System** | Bruker timsTOF HT with clinical batch automation | APM: 20 samples/week (discovery mode) | 50+ samples/day for real-time PD biomarkers | $300,000 |
| **Clinical Metabolomics LC-MS/MS** | Triple-quad system with automated sample prep | TMIC: 24h/sample (comprehensive) | 15 min/sample for PK monitoring | $170,000 |
| **High-Throughput Glycan Profiler** | Automated CE-LIF with 96-well format | GIA: Manual workflows | Batch glycan QC for biologics trials | $80,000 |

**Why Clinical-Mode Matters:**

Discovery omics prioritizes depth—thousands of analytes per sample, comprehensive characterization. Clinical trials prioritize speed—return results to investigators within the decision window. A Phase I dose-escalation trial cannot wait 2 weeks for metabolomics; the next cohort is already enrolling.

**Example Use Case (Hepatitis C Vaccine Trial):**
- Day 0: Challenge dose administered in Suite 1 Vaccine Challenge Unit
- Day 1-7: Daily blood samples collected, processed via Quality Bridge
- Day 1-7: Same-day metabolomic profiling on Clinical Metabolomics LC-MS/MS
- Day 7: Safety review committee has complete metabolic trajectory before escalation decision

**Facility Integration:**
This equipment is co-located at partner facilities (not CTAP space), operated by facility staff, with CTAP priority access defined by SLA. This model:
- Leverages existing technical expertise
- Avoids duplicating facility infrastructure
- Ensures equipment serves both discovery and clinical modes
- Provides sustainability through facility fee-for-service model

---

## 3. Provincial Scaling Pathway

Suite 3 is designed for local deployment with clear pathways to provincial scale:

### 3.1 Network Connectivity

**Current State:** University of Alberta campus network
**Provincial Pathway:** CyberaNet backbone provides multi-gigabit connectivity across Alberta

Suite 3 infrastructure connects to CyberaNet through standard university network services. When multi-site trials require real-time data sharing (e.g., samples processed in Edmonton, analysis in Calgary), the provincial backbone is already in place.

### 3.2 Health Data Linkage

**Current State:** Suite 4 OMOP data lake
**Provincial Pathway:** AHS Data & Analytics (DARC/MARC)

The Data Return Pipeline includes API specifications for connecting to provincial health data repositories. This enables future linkage of trial molecular endpoints with population health outcomes—pending appropriate governance and ethics approvals.

### 3.3 Provincial Biobank Federation

**Current State:** Suite 2 CBSR integration
**Provincial Pathway:** Alberta biobank network

The LIMS and sample tracking infrastructure uses standard identifiers and APIs that can federate with other Alberta biobanks. This enables province-wide sample sharing while maintaining local custody and quality control.

### 3.4 Compute Scaling

**Current State:** Local DGX Spark workstations
**Provincial Pathway:** SDRE → Compute Canada → Cloud burst

```
Development/Prototyping     Production Scale          Peak Demand
      ↓                           ↓                        ↓
  DGX Spark (local)    →    SDRE (UofA)    →    Cloud (cost-controlled)
  128GB, 1 PFLOP           440 cores, V100s        On-demand GPU
  Immediate access         Scheduled access        Pay-per-use
```

---

## 4. Objectives Supported

| Objective | Suite 3 Contribution |
|-----------|---------------------|
| **Objective 3** | Molecular characterization of novel therapeutics through facility partnerships |
| **Objective 4** | Multi-omics data linked to biospecimens and outcomes via Data Return Pipeline |
| **Objective 5** | Omics data feeds AI models for biomarker discovery through OMOP integration and local AI workstations |

---

## 5. Flagship Program Support

| Program | Omics Integration |
|---------|-------------------|
| MS Cell Therapies | **MS Centre Integration:** Immune profiling via GIA glycomics (Mahal), cell product characterization via Cryo-EM, T-cell functional states via ACE Core single-cell analysis, neuroimmunology expertise via MS Experimental Therapeutics Program (Giuliani), glial biology collaboration (Voronova, Plemel, Todd). **CHARM Synergy:** Voronova's CHARM hiPSC platform (CFI IF 2025) provides patient-derived neural models for MS therapeutic target validation and cell therapy optimization. |
| Hepatitis C/Vaccines | Vaccine antigen structure via Cryo-EM, immune response via TMIC metabolomics, spatial immune mapping via ACE Core MERSCOPE |
| Cardio-Renal-Metabolic | Metabolic biomarkers via TMIC, glycan signatures via GIA, **islet biology via ADI IsletCore**, cardiac imaging via PAMRC |
| Pediatric Rare Disease | Genomic characterization coordinated via WCHRI Translational Genomics Hub, protein analysis via APM |
| Oncology Trials | Radiomic biomarkers, tumor microenvironment spatial analysis via ACE Core MERSCOPE |

### 5.1 Biomanufacturing-Relevant Omics Integration

Suite 3's omics infrastructure supports API's biomanufacturing programs by providing analytical capabilities that bridge clinical trial outcomes to manufacturing optimization. This integration operationalizes the CTAP-API partnership described in RTA Section 2.2.1.

#### Manufacturing Quality Correlation

| Partner Facility | Manufacturing Application | Clinical Trial Endpoint | API Integration |
|------------------|--------------------------|------------------------|-----------------|
| **Glycomics Institute (GIA)** | Therapeutic glycoprotein batch consistency | Immunogenicity biomarkers, PK variability | Glycan profiles linked to manufacturing lot → efficacy correlations |
| **Alberta Cryo-EM** | Therapeutic protein manufacturability assessment | Structural endpoints for biologics trials | Structure-guided process optimization |
| **TMIC** | Metabolic dose optimization | PK/PD biomarkers, metabolic response | Metabolomics data feeds QSP model refinement |
| **APM** | Product quality attributes | Degradation product biomarkers | Stability-outcome correlations |

#### Glycomics for Biologics Manufacturing

GIA glycomics analysis is particularly critical for biologic therapeutics manufactured at API's CMPC. Glycosylation patterns directly affect:

- **Efficacy**: Receptor binding affinity, half-life, biodistribution
- **Immunogenicity**: Antibody development risk, hypersensitivity
- **Batch consistency**: Critical quality attribute for regulatory approval

**CTAP-API Glycomics Workflow:**

1. API manufacturing batches undergo glycan profiling at GIA
2. Corresponding product batches enter CTAP clinical trials
3. Trial outcomes (efficacy, safety, PK) link to batch-specific glycan profiles via Suite 4 OMOP extension
4. Correlations inform API's Critical Process Parameters (CPPs) for manufacturing optimization

#### Structural Biology for Drug Development

Cryo-EM provides atomic-scale imaging that supports both PRAIRIE Hub drug discovery and API manufacturing:

| Application | CTAP Function | API Benefit |
|-------------|---------------|-------------|
| **Target validation** | Structural endpoints in early-phase trials | Confirmation of drug-target interaction |
| **Formulation optimization** | Stability assessments | Structure-guided formulation development |
| **Biosimilar characterization** | Higher-order structure comparability | CMPC biosimilar manufacturing support |

#### Metabolomics for Dose Optimization

TMIC metabolomics capabilities support API's Quantitative Systems Pharmacology (QSP) division by generating data for model refinement:

**Data Flow:**

```
CTAP Trial → TMIC Metabolomics → Metabolic Biomarkers → API QSP Models → Dose Optimization → Manufacturing Parameters
```

This integration enables precision dosing that accounts for metabolic variability—critical for the small-molecule therapeutics produced at DDIC and CMPC.

### 5.2 Imaging Biomarker Development

#### Peter Allen MRI Research Centre Partnership

The **Peter Allen MRI Research Centre (PAMRC)** provides CTAP's core advanced imaging infrastructure, supporting both clinical trials and translational research studies requiring deep multi-organ phenotyping. PAMRC's research-dedicated scanners (3T and 7T) and MR physics expertise enable novel quantitative imaging protocols that go beyond standard clinical imaging.

| Capability | Application | Trial Integration |
|------------|-------------|-------------------|
| **Neuroimaging** | Brain structure/function, white matter integrity, neuroinflammation | MS trials, neurodegenerative disease, post-infectious syndromes |
| **Cardiac MRI** | Myocardial fibrosis, strain imaging, T1/T2 mapping | Cardio-renal-metabolic trials, cardiotoxicity monitoring |
| **Musculoskeletal** | Muscle composition, fat infiltration, inflammation | Myopathies, sarcopenia, post-viral muscle dysfunction |
| **Quantitative Methods** | MR spectroscopy, diffusion tensor imaging, perfusion | Metabolic characterization, tissue microstructure |

**PAMRC-CTAP Workflow:**
1. Trial protocols developed jointly with PAMRC MR physicists (Wilman, Beaulieu)
2. Standardized acquisition sequences ensure reproducibility across timepoints
3. Imaging data flows to Suite 4 OMOP data lake via DICOM adapters
4. Quantitative features extracted for correlation with molecular and clinical endpoints

#### Deep Phenotyping for Translational Studies

PAMRC enables comprehensive multi-organ phenotyping studies that bridge observational research and interventional trials:

**Long COVID Deep Phenotyping:** Post-acute sequelae of SARS-CoV-2 (PASC) manifests across multiple organ systems with poorly understood pathophysiology. PAMRC supports systematic characterization of:
- **Brain**: White matter lesions, neuroinflammation markers, spectroscopy for metabolic dysfunction
- **Heart**: Subclinical myocarditis, microvascular dysfunction, fibrosis quantification
- **Muscle**: Skeletal muscle inflammation, composition changes, mitochondrial dysfunction markers

This phenotyping infrastructure positions CTAP to rapidly translate observational findings into intervention trials—identifying imaging biomarkers that can serve as endpoints for therapeutic trials targeting post-viral syndromes.

**Mechanistic Trial Support:** Beyond endpoint measurement, PAMRC imaging provides mechanistic insights that inform trial design. For example, cardiac MRI findings may stratify long COVID patients into inflammatory vs. fibrotic phenotypes, enabling targeted therapeutic selection.

#### MS Centre Neuroimaging Expertise

MS Centre neuroimaging affiliates (Wilman, Beaulieu, Emery) provide specialized expertise for neurological trials:

**MS and Neuro-inflammatory Imaging:** Advanced MRI techniques for demyelination, neuroinflammation, and treatment response assessment. Christopher Power (Neurologic Infection & Immunity) and Jason Plemel (Glial Biology) contribute mechanistic understanding that informs imaging biomarker interpretation—correlating radiological findings with underlying glial pathology and neuroimmune processes. This enables development of imaging endpoints that reflect biological treatment effects rather than purely anatomical changes.

#### Radiomic and AI-Enabled Imaging Analysis

**Radiomic Endpoint Validation:** Quantitative imaging features (texture, entropy, wavelet frequencies) are correlated with treatment response to develop imaging-based surrogate endpoints. These radiomic delta endpoints can detect therapeutic response weeks earlier than standard RECIST measurements, enabling adaptive trial designs with earlier "Go/No-Go" decisions.

**Radiogenomic Correlation:** Trial samples processed through Suite 2's Living Biorepository are linked to corresponding imaging data, enabling correlation of tissue-level molecular profiles with imaging phenotypes. This supports validation of "virtual biopsies"—non-invasive imaging inference of molecular status for trial eligibility.

**Spatial Transcriptomics Validation:** ACE Core's MERSCOPE provides the molecular ground truth for validating "virtual biopsy" predictions from radiomics, correlating computational imaging biomarkers with spatial gene expression at single-cell resolution.

**AI Model Development:** Suite 3's DGX Spark workstations support development of imaging AI models:
- Automated segmentation for volumetric endpoints
- Radiomic feature extraction pipelines
- Deep learning models for lesion detection and characterization
- Multi-modal fusion (imaging + omics + clinical)

#### Multi-Site Imaging Quality Assurance

**Image Harmonization:** To ensure imaging data from rural Alberta hospitals are mathematically comparable to academic centres, Suite 3 supports ComBat normalization and AI-calibration protocols that address scanner variability—a critical quality consideration for multi-site imaging trials.

**PAMRC as Reference Standard:** PAMRC serves as the imaging reference site for multi-site trials, with standardized phantoms and quality assurance protocols that enable reliable pooling of imaging data across Alberta sites.

### 5.3 ADI IsletCore & Diabetes Research Integration

The **Alberta Diabetes Institute IsletCore** provides CTAP's core infrastructure for diabetes and metabolic disease clinical trials, establishing a unique bridge between the world-renowned Edmonton Protocol islet transplantation program and translational clinical research.

#### IsletCore Capabilities

| Capability | Description | Clinical Trial Application |
|------------|-------------|---------------------------|
| **Research Islet Isolation** | Non-GMP isolations from cadaveric donors (research consent), median 85% purity | Mechanistic studies in diabetes interventional trials |
| **Cryopreservation & Biobanking** | 20+ year proven viability retention, standardized protocols | Longitudinal islet studies, retrospective biomarker correlation |
| **Diabetic Donor Islets** | Isolations from T1D and T2D donors with relaxed cold ischemia criteria | Disease-state comparisons, therapeutic target validation |
| **International Distribution** | Established MTA framework, global research network | Multi-centre translational studies |
| **Islet Function Assessment** | Glucose-stimulated insulin secretion (GSIS), viability testing | Quality-controlled samples for trial endpoints |

#### Edmonton Protocol Integration

The Edmonton Protocol—developed at the University of Alberta and published in *The New England Journal of Medicine* (2000)—represents the most advanced approach to islet transplantation. Suite 3 leverages this world-leading expertise for clinical trial infrastructure:

**Translational Workflow:**
1. **Islet transplant registry linkage**: Connect Care integration enables 20+ year outcome tracking for transplant recipients
2. **Mechanistic sample pipeline**: Paired samples from transplant recipients and research donors feed Suite 4 OMOP data lake
3. **Immunomodulation trials**: Challenge Unit (Suite 1) capabilities support novel tolerance induction protocols
4. **Biomarker discovery**: TMIC metabolomics + IsletCore samples identify predictors of graft function

**Key Personnel:**
- **James Shapiro**: Transplant surgeon, Edmonton Protocol pioneer, clinical transplant trials
- **Patrick Macdonald**: IsletCore Director, islet biology laboratory, research isolations
- **Gregory Korbutt**: Islet development, stem cell-derived islet research, biomanufacturing integration (ACTM)
- **Peter Senior**: Connect1d Canada leadership, clinical diabetes trials, decentralized trial design

#### Cardio-Renal-Metabolic Program Support

IsletCore provides critical infrastructure for the Cardio-Renal-Metabolic flagship program:

| Application | CTAP Integration | Endpoint Support |
|-------------|------------------|------------------|
| **Type 1 Diabetes Trials** | Connect1d Canada patient registry, ADI CRU clinical site | CGM endpoints, C-peptide preservation, autoantibody panels |
| **Type 2 Diabetes Therapeutics** | SCOT inhibitor platform (Tabatabaei Dakhili), GLP-1 studies | Metabolic biomarkers, insulin sensitivity, beta-cell function |
| **Diabetic Complications** | Cardiorenal syndrome, diabetic nephropathy | Renal biomarkers, cardiac imaging (PAMRC), glycomics (GIA) |
| **Novel Glucose Sensing** | Microwave glucose sensor validation (Light, Baghelani) | Non-invasive monitoring endpoints, CGM comparator studies |
| **Islet Transplantation** | Edmonton Protocol registry, mechanistic sub-studies | Long-term graft function, immunomodulation biomarkers |

#### IsletCore-CTAP Sample Workflow

```
Donor Pancreas → IsletCore Isolation → Quality Assessment → Research Distribution
       │                │                      │                     │
       ▼                ▼                      ▼                     ▼
   Consent &       Research-Grade        GSIS Testing,          CTAP Trials,
   Phenotyping     Processing (85%       Viability, RNA         International
                   purity target)        Integrity              Collaborators
       │                │                      │                     │
       └────────────────┴──────────────────────┴─────────────────────┘
                                    │
                    ┌───────────────┴───────────────┐
                    ▼                               ▼
            Suite 2 Biobank                 Suite 4 Data Lake
            (Cryopreservation)              (Outcome Linkage)
                    │                               │
                    └───────────────┬───────────────┘
                                    ▼
                        Integrated Diabetes
                        Research Platform
```

#### ACE Core Integration for Islet Biology

IsletCore samples processed through ACE Core capabilities enable advanced single-cell and spatial analyses:

- **Single-cell transcriptomics (10x Chromium X)**: Beta-cell heterogeneity, immune infiltration in T1D
- **Metabolic analysis (Seahorse XFe96)**: Mitochondrial function in diabetic islets, treatment response
- **Spatial transcriptomics (MERSCOPE)**: Islet architecture, beta-cell interactions with immune cells

This integration positions CTAP as a comprehensive diabetes clinical trials hub—connecting world-leading islet biology expertise with modern trial infrastructure for the next generation of diabetes therapeutics.

---

## 6. Sample Flow Architecture

```
Trial Participant → Sample Collection → CBSR Processing → Quality Bridge → Partner Facility
       │                   │                   │               │               │
       ▼                   ▼                   ▼               ▼               ▼
   Consent &         Standard          BioBank Entry      Pre-analytical    Facility-
   Enrollment        Processing        & Aliquoting       QC Checkpoint     Specific
       │                   │                   │               │             Analysis
       │                   │                   │               │               │
       └───────────────────┴───────────────────┴───────────────┴───────────────┘
                                                                       │
                              ┌────────────────────────────────────────┘
                              ▼
                    Data Return Pipeline
                              │
            ┌─────────────────┼─────────────────┐
            ▼                 ▼                 ▼
    OnCore CTMS        Suite 4 OMOP      AI Workstations
    (Trial Context)    (Data Lake)       (Analysis)
            │                 │                 │
            └─────────────────┼─────────────────┘
                              ▼
                    Integrated Analysis
                    (Clinical + Molecular)
```

---

## 7. Budget Summary

| Category | Amount |
|----------|--------|
| **Pillar 1: Protocol Integration Services** | $300,000 |
| **Pillar 2: Quality Bridge Infrastructure** | $550,000 |
| **Pillar 3: Data Return Pipeline** | $350,000 |
| **Pillar 4: CTMS Integration Layer** | $200,000 |
| **Pillar 5: AI/ML Development Workstations** | $250,000 |
| **ACE Core Access & Coordination** | $150,000 |
| **High-Throughput Clinical Instrumentation** | $550,000 |
| **Total** | **$2,350,000** |

**Budget Change from v2.0:** +$650,000 reflecting addition of:
- CTMS Integration Layer ($200,000) - leverages existing OnCore deployment
- AI/ML Development Workstations ($250,000) - reduces cloud costs, enables local development
- Enhanced temperature monitoring ($50,000) - real-time IoT system
- Enhanced data pipeline ($100,000) - provincial interface specifications
- Clinical instrumentation adjustment ($50,000) - Bruker timsTOF HT specification update

---

## 8. Sustainability Model

### 8.1 Operational Cost Structure

| Component | Annual Cost | Funding Source |
|-----------|-------------|----------------|
| DGX Spark power (×2) | $1,000 | Institutional utilities |
| Software licenses | $15,000 | CTAP operational |
| Facility access fees | $50,000 | Per-trial budgets |
| LIMS maintenance | $10,000 | CTAP operational |
| OnCore integration support | $20,000 | Provincial CTMS budget |

### 8.2 Revenue/Cost Recovery

| Service | Model | Projected Annual |
|---------|-------|-----------------|
| Omics coordination for external trials | Fee-for-service | $100,000 |
| Sample processing for industry sponsors | Cost recovery | $150,000 |
| Data integration services | Per-project | $50,000 |
| AI compute for collaborators | Time allocation | $25,000 |

### 8.3 Cloud Cost Avoidance

Local DGX Spark workstations provide estimated annual savings:

| Workload | Cloud Cost (estimated) | Local Cost | Savings |
|----------|----------------------|------------|---------|
| Model development (2000 GPU-hours) | $8,000 | $500 (power) | $7,500 |
| Interactive analysis (1000 hours) | $4,000 | $250 | $3,750 |
| Student projects (500 hours) | $2,000 | $125 | $1,875 |
| **Annual Total** | **$14,000** | **$875** | **$13,125** |

Note: Cloud costs based on AWS p4d.24xlarge at ~$4/hour. Actual savings depend on utilization.

---

## 9. Key Personnel

| Role | Responsibility |
|------|----------------|
| Translational Science Coordinator | Workflow coordination across all facility partnerships |
| ACE Core Liaison | Embedded coordination with ACE Core for single-cell/spatial workflows |
| Core Facility Liaisons | Facility-specific expertise for each partner |
| Sample Logistics Manager | Multi-site coordination and cold-chain oversight |
| Bioinformatician | Omics data integration and OMOP mapping |
| CTMS Integration Specialist | OnCore configuration and API maintenance |

---

## 10. Implementation Timeline

| Phase | Timeline | Milestones |
|-------|----------|------------|
| Partnership formalization | Months 1-4 | Letters of support, access agreements with ACE Core and other facilities |
| Procurement | Months 4-10 | Quality Bridge equipment, DGX Spark workstations, CTMS integration development |
| Installation | Months 10-14 | Equipment setup at CBSR, workstation deployment, data adapter development |
| OnCore integration | Months 12-16 | API development, testing with provincial CTMS team |
| Protocol development | Months 14-18 | SOP development with each facility partner |
| Validation | Months 18-22 | End-to-end workflow testing with pilot samples |
| Integration | Months 22-24 | Suite 2/4 data flow validation, OnCore production deployment |
| Operational | Month 24+ | Routine trial support |

---

## 11. Quality Considerations

| Element | Approach |
|---------|----------|
| Pre-analytical quality | Quality Bridge checkpoints before facility handoff |
| Method validation | Per facility SOPs, documented in Protocol Integration library |
| Sample tracking | BioBank software (Suite 2), chain of custody with real-time monitoring |
| Data standards | FAIR principles, OMOP mapping for interoperability |
| Turnaround times | SLA agreements with each facility partner |
| Facility coordination | Quarterly Facility Advisory Committee meetings |
| Temperature compliance | Continuous IoT monitoring, automated alerts, ISBER-compliant audit trails |

---

## 12. Partnership Engagement Strategy

### 12.1 Facility Advisory Committee

Quarterly meetings with all partner facility directors to:
- Review integration protocol performance
- Identify new capability needs
- Resolve operational issues
- Plan capacity for upcoming trials

### 12.2 Embedded Liaison Model

- 0.2 FTE allocation for "Facility Liaison" role at each key partner
- Funded by CTAP operational budget (not CFI equipment)
- Responsible for protocol troubleshooting and quality monitoring

### 12.3 Letters of Support

Each partner facility provides letter describing:
- Confirmation of interest in clinical trial sample pipeline
- Identification of 1-2 specific quality/access barriers CTAP addresses
- Willingness to participate in SOP development working group

### 12.4 Provincial System Integration

- Clinical Trials Alberta: OnCore CTMS coordination
- AHS Data & Analytics: Data linkage pathway planning
- Cybera: Network infrastructure consultation

---

*Document Version: 3.0 | January 2026 (Translational Integration Hub expansion) | CFI Innovation Fund 2027*
