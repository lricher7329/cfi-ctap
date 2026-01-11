# Suite 3: Clinical Trials Omics Integration Hub

## Concise Technical Specification

**Budget: \$1,700,000 CAD**

**Version:** 2.0 **Date:** January 2026

---

## Executive Summary

Suite 3 provides the **trial-to-facility interface layer**—standardized protocols, quality systems, and data pipelines that connect clinical trial operations with the University of Alberta's world-class omics infrastructure. Rather than duplicating existing excellence, Suite 3 makes it accessible to clinical research through three integrated pillars: Protocol Integration Services, Quality Bridge Infrastructure, and Data Return Pipeline.

The University of Alberta's omics infrastructure is world-class. What's missing is the systematic connection to clinical trials. Suite 3 builds the bridges, not the buildings.

---

## 1. Strategic Positioning

### 1.1 Integration, Not Duplication

The CTAP leadership team includes clinical trialists, methodologists, and regulatory experts—not omics specialists. This is intentional. Our role is designing trials that incorporate molecular endpoints, not operating mass spectrometers. For specialized analyses, we partner with the University of Alberta's established core facilities, providing them with clinical context they need and receiving the molecular data trials require.

### 1.2 Partnership Model

Suite 3 operates through formal partnerships with existing core facilities rather than building parallel capabilities:

| Partner Facility                    | Capability                                                                                                 | CTAP Provides                                                   | Facility Provides                                           |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------- | ----------------------------------------------------------- |
| **ACE Core**                  | Single-cell sequencing (10x Chromium X), spatial transcriptomics (MERSCOPE), metabolic analysis (Seahorse) | Trial sample pipeline, regulatory context, outcome data linkage | Instrumentation, technical expertise, established workflows |
| **Alberta Cryo-EM Facility**  | Atomic-scale imaging                                                                                       | Structural biology endpoints in trial protocols                 | Structure-guided drug insights                              |
| **Glycomics Institute (GIA)** | Glycan profiling                                                                                           | Standardized sample handling, clinical metadata                 | Therapeutic glycoprotein analysis                           |
| **TMIC**                      | Metabolomics (50K samples/year)                                                                            | Quality-controlled trial samples                                | Biomarker discovery                                         |
| **Alberta Proteomics (APM)**  | Protein identification                                                                                     | Pre-analytical quality assurance                                | Protein biomarker analysis                                  |

**Note:** The WCHRI Translational Genomics Hub is a research coordination platform (not an instrumentation core) that aligns with CTAP's Pediatric Rare Disease Clinical Trials Unit (Suite 1). The Hub facilitates genomic characterization for undiagnosed families by coordinating ethics, enrollment, sample logistics, and connections to scientists—a complementary coordination function rather than an omics facility partnership.

---

## 2. Infrastructure Components

### 2.1 Pillar 1: Protocol Integration Services

**Budget: \$300,000**

Standardized SOPs, consent language, and sample handling protocols that allow trial teams to seamlessly incorporate omics endpoints without needing deep domain expertise.

| Component                         | Description                                                     | Cost     |
| --------------------------------- | --------------------------------------------------------------- | -------- |
| Consent module library            | Pre-approved consent language for omics analysis (ethics-ready) | \$50,000 |
| Sample collection kit development | Facility-specific requirements built into standardized kits     | \$80,000 |
| Protocol template library         | Omics endpoint language validated by each partner facility      | \$70,000 |
| Regulatory dossier templates      | Templates for omics biomarker regulatory submissions            | \$50,000 |
| SOP development & validation      | Working group coordination with facility partners               | \$50,000 |

**Why this works:** Trial teams can add omics endpoints by using validated templates rather than building expertise from scratch.

### 2.2 Pillar 2: Quality Bridge Infrastructure

**Budget: \$500,000**

Equipment and systems that ensure samples collected at clinical sites meet the stringent quality requirements of downstream omics facilities. The #1 failure mode for translational samples is pre-analytical variability—Suite 3 solves this problem at the source.

| Equipment                                    | Specification                                  | Purpose                                    | Cost      |
| -------------------------------------------- | ---------------------------------------------- | ------------------------------------------ | --------- |
| **Pre-analytical QC systems**          |                                                |                                            |           |
| RNA integrity analyzer                       | Agilent Bioanalyzer/TapeStation                | Verify RNA quality before facility handoff | \$80,000  |
| Protein degradation markers                  | Automated assessment system                    | Ensure protein sample quality              | \$60,000  |
| **Cold-chain logistics**               |                                                |                                            |           |
| Dry ice shippers                             | 20 units                                       | Multi-site trial logistics                 | \$30,000  |
| Portable -80°C units                        | 4 units                                        | Field sample transport                     | \$80,000  |
| Temperature loggers                          | 100 units with real-time alerts                | Chain-of-custody documentation             | \$30,000  |
| Shipping coordination system                 | Software with facility-specific alerting       | Real-time tracking                         | \$70,000  |
| **Sample preparation standardization** |                                                |                                            |           |
| Universal processing equipment               | Located at CBSR (Suite 2)                      | Consistent sample handling                 | \$100,000 |
| Quality control checkpoints                  | Automated verification before facility handoff | Gate-keeping for quality                   | \$50,000  |

**Integration with Suite 2:** Quality Bridge equipment is physically co-located with CBSR biorepository operations, creating a seamless sample flow from collection to facility-ready aliquots.

### 2.3 Pillar 3: Data Return Pipeline

**Budget: \$250,000**

Infrastructure to receive omics results from partner facilities and integrate them with trial data in Suite 4's OMOP data lake.

| Component                 | Description                                                     | Cost     |
| ------------------------- | --------------------------------------------------------------- | -------- |
| Facility data adapters    | Custom ETL pipelines for each partner facility's output formats | \$80,000 |
| OMOP molecular extensions | Mapping for omics data types to OMOP CDM                        | \$50,000 |
| Analysis workstations     | Pre-configured environments for clinical-molecular correlation  | \$70,000 |
| Visualization tools       | Trial team dashboards showing molecular correlates of response  | \$30,000 |
| Regulatory reporting      | Submission-ready biomarker analysis packages                    | \$20,000 |

**SDRE Integration:** Computationally intensive omics analyses—multi-sample batch processing, machine learning biomarker discovery, and large-scale integrative analyses—leverage the University of Alberta's Sensitive Data Research Environment (SDRE) rather than dedicated CTAP infrastructure. Suite 3's Data Return Pipeline focuses on operational data transformation and OMOP integration, while SDRE provides GPU compute for batch bioinformatics workloads. This partnership model extends to partner facilities, which can utilize SDRE allocations for CTAP-related analyses.

**Why this works:** This is the unique value CTAP provides—turning facility outputs into clinical trial endpoints that regulators accept.

### 2.4 ACE Core Access & Coordination

**Budget: \$150,000**

Dedicated coordination and access fees to ensure seamless integration with ACE Core capabilities.

| Component            | Description                                       | Cost     |
| -------------------- | ------------------------------------------------- | -------- |
| ACE Core access fees | Reserved capacity for CTAP trial samples          | \$80,000 |
| Protocol development | Trial-specific SOPs developed with ACE Core staff | \$40,000 |
| Liaison coordination | Embedded coordination role (0.2 FTE equivalent)   | \$30,000 |

**ACE Core Capabilities Accessed:** - **10x Genomics Chromium X** (installed June 2025): Single-cell transcriptomics with 3' v4 GEM-X gene expression - **Vizgen MERSCOPE**: Spatial transcriptomics using MERFISH (100nm resolution, 140-500 gene panels, FF/FFPE compatible) - **Agilent Seahorse XFe96**: Metabolic analysis (OCR/ECAR measurements) - **Sequencing**: MiSeq on-site, NextSeq access via MBSU partnership

### 2.5 High-Throughput Clinical Instrumentation

**Budget: \$500,000**

Dedicated equipment that bridges the throughput gap between discovery-mode omics and clinical trial timelines. Partner facilities are optimized for deep discovery (comprehensive but slow); clinical trials require rapid turnaround for actionable biomarker feedback. This equipment enables "clinical-mode" operation within existing facilities.

| Equipment | Specification | Current Gap | Clinical Trial Need | Cost |
| --------- | ------------- | ----------- | ------------------- | ---- |
| **Rapid Proteomics System** | Bruker timsTOF HT with clinical batch automation | APM: 20 samples/week (discovery mode) | 50+ samples/day for real-time PD biomarkers | \$280,000 |
| **Clinical Metabolomics LC-MS/MS** | Triple-quad system with automated sample prep | TMIC: 24h/sample (comprehensive) | 15 min/sample for PK monitoring | \$150,000 |
| **High-Throughput Glycan Profiler** | Automated CE-LIF with 96-well format | GIA: Manual workflows | Batch glycan QC for biologics trials | \$70,000 |

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

## 3. Objectives Supported

| Objective             | Suite 3 Contribution                                                           |
| --------------------- | ------------------------------------------------------------------------------ |
| **Objective 3** | Molecular characterization of novel therapeutics through facility partnerships |
| **Objective 4** | Multi-omics data linked to biospecimens and outcomes via Data Return Pipeline  |
| **Objective 5** | Omics data feeds AI models for biomarker discovery through OMOP integration    |

---

## 4. Flagship Program Support

| Program                | Omics Integration                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ---------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MS Cell Therapies      | **MS Centre Integration:** Immune profiling via GIA glycomics (Mahal), cell product characterization via Cryo-EM, T-cell functional states via ACE Core single-cell analysis, neuroimmunology expertise via MS Experimental Therapeutics Program (Giuliani), glial biology collaboration (Voronova, Plemel, Todd). **CHARM Synergy:** Voronova's CHARM hiPSC platform (CFI IF 2025) provides patient-derived neural models for MS therapeutic target validation and cell therapy optimization. |
| Hepatitis C/Vaccines   | Vaccine antigen structure via Cryo-EM, immune response via TMIC metabolomics, spatial immune mapping via ACE Core MERSCOPE                                                                                                                                                                                                                                                                                                                                                                                 |
| Cardio-Renal-Metabolic | Metabolic biomarkers via TMIC, glycan signatures via GIA                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Pediatric Rare Disease | Genomic characterization coordinated via WCHRI Translational Genomics Hub, protein analysis via APM                                                                                                                                                                                                                                                                                                                                                                                                        |
| Oncology Trials        | Radiomic biomarkers, tumor microenvironment spatial analysis via ACE Core MERSCOPE                                                                                                                                                                                                                                                                                                                                                                                                                         |

### 4.1 Biomanufacturing-Relevant Omics Integration

Suite 3's omics infrastructure supports API's biomanufacturing programs by providing analytical capabilities that bridge clinical trial outcomes to manufacturing optimization. This integration operationalizes the CTAP-API partnership described in RTA Section 2.2.1.

#### Manufacturing Quality Correlation

| Partner Facility                    | Manufacturing Application                        | Clinical Trial Endpoint                   | API Integration                                                      |
| ----------------------------------- | ------------------------------------------------ | ----------------------------------------- | -------------------------------------------------------------------- |
| **Glycomics Institute (GIA)** | Therapeutic glycoprotein batch consistency       | Immunogenicity biomarkers, PK variability | Glycan profiles linked to manufacturing lot → efficacy correlations |
| **Alberta Cryo-EM**           | Therapeutic protein manufacturability assessment | Structural endpoints for biologics trials | Structure-guided process optimization                                |
| **TMIC**                      | Metabolic dose optimization                      | PK/PD biomarkers, metabolic response      | Metabolomics data feeds QSP model refinement                         |
| **APM**                       | Product quality attributes                       | Degradation product biomarkers            | Stability-outcome correlations                                       |

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

| Application                           | CTAP Function                              | API Benefit                              |
| ------------------------------------- | ------------------------------------------ | ---------------------------------------- |
| **Target validation**           | Structural endpoints in early-phase trials | Confirmation of drug-target interaction  |
| **Formulation optimization**    | Stability assessments                      | Structure-guided formulation development |
| **Biosimilar characterization** | Higher-order structure comparability       | CMPC biosimilar manufacturing support    |

#### Metabolomics for Dose Optimization

TMIC metabolomics capabilities support API's Quantitative Systems Pharmacology (QSP) division by generating data for model refinement:

**Data Flow:**

```
CTAP Trial → TMIC Metabolomics → Metabolic Biomarkers → API QSP Models → Dose Optimization → Manufacturing Parameters
```

This integration enables precision dosing that accounts for metabolic variability—critical for the small-molecule therapeutics produced at DDIC and CMPC.

### 4.2 Imaging Biomarker Development

Flagship trials incorporating imaging endpoints benefit from radiomic biomarker validation capabilities, with particular strength in neuroimaging through the **MS Centre's imaging expertise** (Wilman, Beaulieu, Emery):

**MS and Neuro-inflammatory Imaging:** MS Centre neuroimaging affiliates provide expertise in advanced MRI techniques for demyelination, neuroinflammation, and treatment response assessment. Christopher Power (Neurologic Infection & Immunity) and Jason Plemel (Glial Biology) contribute mechanistic understanding that informs imaging biomarker interpretation—correlating radiological findings with underlying glial pathology and neuroimmune processes. This enables development of imaging endpoints that reflect biological treatment effects rather than purely anatomical changes.

**Radiomic Endpoint Validation:** Quantitative imaging features (texture, entropy, wavelet frequencies) are correlated with treatment response to develop imaging-based surrogate endpoints. These radiomic delta endpoints can detect therapeutic response weeks earlier than standard RECIST measurements, enabling adaptive trial designs with earlier "Go/No-Go" decisions.

**Radiogenomic Correlation:** Trial samples processed through Suite 2's Living Biorepository are linked to corresponding imaging data, enabling correlation of tissue-level molecular profiles with imaging phenotypes. This supports validation of "virtual biopsies"—non-invasive imaging inference of molecular status for trial eligibility.

**Spatial Transcriptomics Validation:** ACE Core's MERSCOPE provides the molecular ground truth for validating "virtual biopsy" predictions from radiomics, correlating computational imaging biomarkers with spatial gene expression at single-cell resolution.

**Image Harmonization:** To ensure imaging data from rural Alberta hospitals are mathematically comparable to academic centres, Suite 3 supports ComBat normalization and AI-calibration protocols that address scanner variability—a critical quality consideration for multi-site imaging trials.

---

## 5. Sample Flow Architecture

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
                                               Data Return Pipeline ◄──┘
                                                       │
                                                       ▼
                                        Suite 4 Data Platform
                                        (OMOP, Trial Data Lake)
                                                       │
                                                       ▼
                                        Integrated Analysis
                                        (Clinical + Molecular)
```

---

## 6. Budget Summary

| Category                                          | Amount                |
| ------------------------------------------------- | --------------------- |
| **Pillar 1: Protocol Integration Services** | \$300,000             |
| **Pillar 2: Quality Bridge Infrastructure** | \$500,000             |
| **Pillar 3: Data Return Pipeline**          | \$250,000             |
| **ACE Core Access & Coordination**          | \$150,000             |
| **High-Throughput Clinical Instrumentation** | \$500,000             |
| **Total**                                   | **\$1,700,000** |

**Note:** This represents a \$1,280,000 reduction from the original \$2,980,000 budget, demonstrating efficient use of CFI funds by partnering with existing capabilities rather than duplicating them. All equipment is specified with clinical trial throughput requirements—no vague "reserves" or unspecified allocations.

---

## 7. Key Personnel

| Role                              | Responsibility                                                        |
| --------------------------------- | --------------------------------------------------------------------- |
| Translational Science Coordinator | Workflow coordination across all facility partnerships                |
| ACE Core Liaison                  | Embedded coordination with ACE Core for single-cell/spatial workflows |
| Core Facility Liaisons            | Facility-specific expertise for each partner                          |
| Sample Logistics Manager          | Multi-site coordination and cold-chain oversight                      |
| Bioinformatician                  | Omics data integration and OMOP mapping                               |

---

## 8. Implementation Timeline

| Phase                     | Timeline     | Milestones                                                               |
| ------------------------- | ------------ | ------------------------------------------------------------------------ |
| Partnership formalization | Months 1-4   | Letters of support, access agreements with ACE Core and other facilities |
| Procurement               | Months 4-10  | Quality Bridge equipment orders, Data Return Pipeline development        |
| Installation              | Months 10-14 | Equipment setup at CBSR, data adapter deployment                         |
| Protocol development      | Months 14-18 | SOP development with each facility partner                               |
| Validation                | Months 18-22 | End-to-end workflow testing with pilot samples                           |
| Integration               | Months 22-24 | Suite 2/4 data flow validation                                           |
| Operational               | Month 24+    | Routine trial support                                                    |

---

## 9. Quality Considerations

| Element                | Approach                                                               |
| ---------------------- | ---------------------------------------------------------------------- |
| Pre-analytical quality | Quality Bridge checkpoints before facility handoff                     |
| Method validation      | Per facility SOPs, documented in Protocol Integration library          |
| Sample tracking        | BioBank software (Suite 2), chain of custody with real-time monitoring |
| Data standards         | FAIR principles, OMOP mapping for interoperability                     |
| Turnaround times       | SLA agreements with each facility partner                              |
| Facility coordination  | Quarterly Facility Advisory Committee meetings                         |

---

## 10. Partnership Engagement Strategy

### 10.1 Facility Advisory Committee

Quarterly meetings with all partner facility directors to: - Review integration protocol performance - Identify new capability needs - Resolve operational issues - Plan capacity for upcoming trials

### 10.2 Embedded Liaison Model

- 0.2 FTE allocation for "Facility Liaison" role at each key partner
- Funded by CTAP operational budget (not CFI equipment)
- Responsible for protocol troubleshooting and quality monitoring

### 10.3 Letters of Support

Each partner facility provides letter describing: - Confirmation of interest in clinical trial sample pipeline - Identification of 1-2 specific quality/access barriers CTAP addresses - Willingness to participate in SOP development working group

---

*Document Version: 2.2 \| January 2026 (High-throughput clinical instrumentation) \| CFI Innovation Fund 2027*
