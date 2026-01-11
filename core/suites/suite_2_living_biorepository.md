# Suite 2: Living Biorepository

## Comprehensive Technical Specification

**Budget: \$6,392,273 CAD**

**Version:** 1.0 **Date:** January 2026 

**Status:** Draft for CFI IF2027 RTA

---

## Executive Summary

Suite 2 establishes the **Living Biorepository**—a fundamental re-conceptualization of biospecimen management that transforms static sample storage into an intelligent, continuously-updated discovery engine. Unlike traditional biobanks that archive specimens with point-in-time metadata, the Living Biorepository maintains dynamic linkages to participants' evolving health records, enabling retrieval based on clinical outcomes that emerge years after collection.

This suite integrates two operational domains:

1. **Living Biorepository** - Intelligent biospecimen management with real-time EMR linkage
2. **Trial Integration** - Seamless specimen workflow for all CTAP-supported trials

The Living Biorepository concept addresses a critical gap identified in prior CFI applications: while Alberta has invested substantially in biobanking infrastructure (CBSR, APL Biobank), these systems remain disconnected from clinical trial operations and lack the intelligent capabilities that distinguish world-class biobanks (UK Biobank, All of Us, FinnGen) from simple storage facilities. The Living Biorepository will facilitate translational research by integrating with University of Alberta facilities representing over $400M in cumulative national infrastructure investment:

| Facility                                                                                                                                 | Capabilities                                                                                                                                                                                                                                                              | Living Biorepository Integration                                                                                                                                |
| ---------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **[Glycomics Institute of Alberta (GIA)](https://glyco-alberta.ca/)**                                                                 | High-throughput glycan screening and profiling, glycan synthesis, glycoengineering; hosts[GlycoNet NCE](https://canadianglycomics.ca/); Dr. Lara Mahal (CERC in Glycomics)                                                                                                   | Glycan profiling for therapeutic proteins, vaccine glycan characterization, trial biomarker discovery                                                           |
| **[TMIC (The Metabolomics Innovation Centre)](https://www.metabolomicscentre.ca/)**                                                   | North America's premier metabolomics facility; 50,000 samples/year capacity; 2,000+ metabolite identification; maintains HMDB, DrugBank, MetaboAnalyst (15M accesses/year); ISO 17025 certified                                                                           | Trial biomarker discovery, pharmacodynamic profiling, metabolic phenotyping for Cardio-Renal-Metabolic flagship                                                 |
| **[Alberta Cell Therapy Manufacturing (ACTM)](https://www.ualberta.ca/en/actm/index.html)**                                           | GMP-compliant cell manufacturing; regulatory T-cell expansion; engineered lymphocyte production; operational CAR-T program (Dr. Michael Chiu)                                                                                                                             | Cell therapy product manufacturing for MS and neuro-immunology trials; specimen archiving; outcome tracking                                                     |
| **[PRAIRIE Hub](https://www.ualberta.ca/en/folio/2024/05/university-of-alberta-to-lead-prairie-pandemic-preparedness-hub.html)**      | $109.9M national pandemic preparedness hub (1 of 5 nationally); sa-mRNA vaccines, viral vectors, diagnostics; Dr. Joanne Lemieux (Executive Scientific Director)                                                                                                          | 75-90% of expanded cold storage capacity; vaccine trial specimens; outbreak response                                                                            |
| **[Alberta Proteomics and Mass Spectrometry (APM)](https://www.ualberta.ca/biochemistry/research/facilities/mass-spectrometry.html)** | Protein identification, proteomics profiling; Ascend-E480 mass spectrometer                                                                                                                                                                                               | Proteomic biomarker analysis complementing TMIC metabolomics                                                                                                    |
| **[Li Ka Shing Institute of Virology](https://www.ualberta.ca/li-ka-shing-institute-virology/index.html)**                            | Hepatitis C vaccine development (Dr. Michael Houghton, Nobel 2020); BSL-2/3 containment                                                                                                                                                                                   | Vaccine trial specimen processing; Challenge Unit scientific leadership                                                                                         |
| **[Applied Pharmaceutical Innovation (API)](https://appliedpharma.ca/)**                                                              | Drug Development + Innovation Centre (cGMP, ISO 6/7 cleanrooms); Critical Medicines Production Centre (83,000 sq ft, 70M doses/year capacity, completion 2026); Pharmaceutical Analysis Laboratory (600 MHz NMR, LC-MS); Quantitative Systems Pharmacology (QSP) platform | Phase I dosage form manufacturing; large-scale production pathway; manufacturing batch QC correlation with trial outcomes; Living Digital Twin data integration |

---

## 1. The Living Biorepository Concept

### 1.1 Definition and Differentiation

A **Living Biorepository** is a biospecimen management system that:

1. **Lives** - Continuously updates specimen metadata as participants receive care
2. **Learns** - Applies AI to predict sample needs, optimize inventory, and identify research opportunities
3. **Links** - Maintains bidirectional connections between specimens and health outcomes
4. **Listens** - Responds to participant consent preferences in real-time

This contrasts sharply with traditional biobanks:

| Capability              | Traditional Biobank    | Living Biorepository         |
| ----------------------- | ---------------------- | ---------------------------- |
| EMR linkage             | Point-in-time snapshot | Continuous real-time updates |
| Outcome tracking        | Manual, retrospective  | Automated, prospective       |
| Consent management      | Static, binary         | Dynamic, granular            |
| Inventory management    | Reactive               | Predictive, AI-assisted      |
| Cross-trial reuse       | Ad-hoc                 | Governed, automated          |
| Integration with trials | Parallel system        | Embedded workflow            |

### 1.2 Five Core Capabilities

The Living Biorepository delivers five transformative capabilities:

#### Capability 1: Real-Time EMR Linkage

**What it does:** Specimens remain continuously linked to participants' Connect Care records, updating as new clinical events occur.

**How it works:** - FHIR API subscription to Connect Care for consented participants - Automated annotation of specimens with new diagnoses, procedures, labs - Bidirectional linkage: specimen → clinical data; clinical event → specimen alert

**Value delivered:** - Retrieve specimens by outcome (e.g., "all samples from patients who developed MS within 5 years") - Enable longitudinal correlation of biomarkers with disease progression - Support learning health system feedback loops

#### Capability 2: Automated Outcome Annotation

**What it does:** Trial samples are automatically annotated with long-term outcomes from provincial health records.

**How it works:** - Scheduled linkage to Connect Care, Vital Statistics, Cancer Registry - AI-assisted phenotyping from clinical notes (with NLP agreement) - Outcome events pushed to specimen metadata in BioBank software

**Value delivered:** - Transform completed trial samples into RWE resources - Enable 5-10 year outcome follow-up without participant re-contact - Support post-marketing surveillance and real-world effectiveness studies

#### Capability 3: Predictive Inventory Management

**What it does:** AI predicts sample depletion, suggests optimal aliquoting, and identifies underutilized specimens.

**How it works:** - Machine learning models trained on historical usage patterns - Integration with active trial protocols to forecast demand - Alerting for samples approaching expiration or depletion thresholds

**Value delivered:** - Reduce sample wastage through proactive management - Optimize aliquoting strategies to maximize future utility - Identify specimens for cross-trial reuse opportunities

#### Capability 4: Consent-Aware Sample Routing

**What it does:** Specimens flow automatically to approved studies based on consent scope; new uses trigger re-consent workflows.

**How it works:** - Granular consent preferences stored in consent registry (Suite 4) - Automated consent checking before sample release - Integration with participant engagement portal for dynamic consent updates

**Value delivered:** - Ensure regulatory compliance for secondary use - Enable participant control and trust - Reduce administrative burden on biobank staff

#### Capability 5: Radiogenomic Integration

**What it does:** Every biobanked specimen is "twinned" with corresponding imaging data, creating a Radiogenomic Atlas that correlates tissue-level molecular profiles with imaging phenotypes.

**How it works:** - DICOM images linked to specimen records via Suite 4's PACS integration pathway - Raw sensor data (CT sinograms, MRI k-space) archived alongside reconstructed images for rawdiomics approaches - AI-driven correlation of radiomic features (texture, entropy, wavelet frequencies) with genomic, proteomic, and metabolomic data from biospecimens

**Value delivered:** - Enable validation of "virtual biopsies"—non-invasive imaging inference of molecular status for trial eligibility - Reduce need for repeat invasive tissue biopsies through imaging-based biomarker surrogates - Support development of imaging-based surrogate endpoints that predict treatment response - Create integrated radiogenomic datasets for AI model training and biomarker discovery

TODO: Add more details regarding MANTA; may need to speak with James White; reference the Precision Medicine Initiative ([https://libin.ucalgary.ca/initiatives/precision-medicine-initiative](https://libin.ucalgary.ca/initiatives/precision-medicine-initiative))

### 1.3 Integration with Suite 4 Data Platform

The Living Biorepository is deeply integrated with Suite 4's data architecture:

```
┌─────────────────────────────────────────────────────────────────┐
│                    SUITE 4: DATA PLATFORM                        │
│  ┌─────────────────────────────────────────────────────────┐    │
│  │ Zone 1 (Identifiable)  │  Zone 2 (Controlled)  │  Zone 3 │    │
│  │ - Patient IDs          │  - De-identification  │  - OMOP │    │
│  │ - Consent registry     │  - Linkage engine     │  - APIs │    │
│  └───────────┬────────────────────────┬──────────────┬──────┘    │
└──────────────┼────────────────────────┼──────────────┼───────────┘
               │                        │              │
               ▼                        ▼              ▼
┌─────────────────────────────────────────────────────────────────┐
│                SUITE 2: LIVING BIOREPOSITORY                     │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────────────┐   │
│  │ BioBank      │  │ LIMS         │  │ Cell Manufacturing   │   │
│  │ Software     │  │ Integration  │  │ (ACTM)               │   │
│  │ - Inventory  │  │ - Lab data   │  │ - GMP production     │   │
│  │ - Tracking   │  │ - QC results │  │ - Batch tracking     │   │
│  └──────────────┘  └──────────────┘  └──────────────────────┘   │
└─────────────────────────────────────────────────────────────────┘
```

**Data flows:** 1. Consent status flows from Zone 1 → BioBank for sample release decisions 2. De-identified specimen metadata flows from BioBank → Zone 2 for linkage 3. Linked clinical data flows from Zone 2 → BioBank as outcome annotations 4. Aggregate specimen queries flow from OMOP (Zone 3) → researchers

---

## 2. Biospecimen Management Infrastructure

### 2.1 BioBank Software Modernization: Migration to OpenSpecimen

Suite 2 addresses the critical need to modernize the BioBank software platform, transitioning from the legacy NCI caTissue-based system to **OpenSpecimen**—the recognized successor platform developed by the same core team (Krishagni Solutions).

#### Current State and Migration Rationale

| Aspect             | Current (caTissue-based)  | OpenSpecimen Target         |
| ------------------ | ------------------------- | --------------------------- |
| Architecture       | Legacy Java client-server | 100% REST API, cloud-native |
| EMR Integration    | Limited                   | Full FHIR R4 support        |
| Dynamic Consent    | Not available             | Plugin available            |
| Cloud Deployment   | Difficult                 | Native AWS/cloud support    |
| Mobile Access      | Not available             | Native support              |
| Active Development | Ended 2009 (NCI)          | Actively maintained         |

#### Canadian Exemplar: University of British Columbia

UBC Faculty of Medicine has successfully deployed OpenSpecimen ([os.med.ubc.ca](https://restech.med.ubc.ca/our-services/biobanking/)), demonstrating viability in Canadian academic health research: - Health Canada GCP-compliant with 21 CFR Part 11 certification for FDA-bound trials - UBC Privacy Impact Assessment verified - REDCap integration operational - Multi-tenant model supporting single projects to major repositories

#### OpenSpecimen Migration Components

**Pricing Source:** [OpenSpecimen Pricing](https://www.openspecimen.org/pricing/) (January 2026)

| Component                                        | Investment                  | Description                                                                                                         |
| ------------------------------------------------ | --------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| OpenSpecimen Institutional License               | \$150,000 USD               | Unlimited users, on-premise or cloud hosting, Health Canada GCP-compliant (21 CFR Part 11 certified for FDA trials) |
| Data Migration Services                          | \$40,000 USD                | caTissue to OpenSpecimen migration (Krishagni professional services)                                                |
| Integration: Connect Care (Epic FHIR)            | \$35,000 USD                | Epic FHIR API integration for specimen-EHR linkage                                                                  |
| Integration: REDCap                              | \$35,000 USD                | REDCap integration for EDC-biobank coordination                                                                     |
| Integration: Freezer/Rack Scanners               | \$35,000 USD                | Automated specimen tracking hardware integration                                                                    |
| Custom Plugin Development                        | \$75,000 USD                | Dynamic consent workflow, CTAP-specific customizations                                                              |
| Annual Support (Year 1)                          | \$30,000 USD                | End-user/technical support, server management, upgrades                                                             |
| Staff Training                                   | \$25,000 USD                | OpenSpecimen certification training for biobank staff                                                               |
| **Total OpenSpecimen Investment (Year 1)** | **\$425,000 USD**     | (~\$595,000 CAD at 1.4 exchange rate)                                                                               |
| **Ongoing Annual Support (Years 2-5)**     | **\$30,000 USD/year** | (~\$42,000 CAD/year)                                                                                                |

**Key Differentiator:** OpenSpecimen's unlimited user licensing eliminates per-user restrictions common in competing LIMS products, enabling CTAP to scale staff without incremental licensing costs.

#### Suite 4 TRE Integration

OpenSpecimen integrates with Suite 4's three-zone TRE architecture:

| Zone                  | OpenSpecimen Role                                               |
| --------------------- | --------------------------------------------------------------- |
| Zone 1 (Identifiable) | Primary database: participant IDs, specimen IDs, consent status |
| Zone 2 (Controlled)   | API endpoint for de-identification and phenotype linkage        |
| Zone 3 (Research)     | De-identified specimen metadata available via OMOP queries      |

This architecture enables the critical capability of linking biospecimens to evolving clinical outcomes—a defining feature of the Living Biorepository concept.

#### On-Premise Infrastructure Requirement

OpenSpecimen is deployed on **dedicated CTAP on-premise servers** rather than the University of Alberta's Sensitive Data Research Environment (SDRE). This architectural decision reflects:

| Requirement                             | Rationale                                                                                                                                                                                                    |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **24/7 Operational Availability** | Biorepository operations require continuous uptime for specimen tracking, chain-of-custody, and alarm response. Shared HPC environments may impose maintenance windows incompatible with biobank operations. |
| **21 CFR Part 11 Compliance**     | FDA-regulated trials require dedicated audit trail infrastructure with validated change control processes. Shared environments complicate validation documentation.                                          |
| **Real-Time FHIR Integration**    | Living Biorepository capabilities depend on low-latency bidirectional APIs with Connect Care. Dedicated servers ensure consistent response times.                                                            |
| **Health Canada GCP Compliance**  | Regulatory inspections require clear infrastructure boundaries and dedicated validation documentation.                                                                                                       |

This deployment model aligns with the CTAP-SDRE workload allocation: SDRE handles batch-oriented developmental workloads (AI model training, bulk OMOP ETL), while CTAP on-premise infrastructure supports mission-critical operational systems with regulatory compliance requirements.

### 2.2 Living Biorepository Software Capabilities

Suite 2 builds on the OpenSpecimen foundation to deliver Living Biorepository capabilities:

| Feature                      | Current State | Suite 2 Enhancement                                     |
| ---------------------------- | ------------- | ------------------------------------------------------- |
| Federated data model         | Operational   | Extended for CTAP sites                                 |
| Barcode/RFID support         | Operational   | Integrated with trial workflows                         |
| Health Canada GCP compliance | Operational   | Validation documentation; 21 CFR Part 11 for FDA trials |
| EMR linkage                  | Batch         | **Real-time FHIR integration**                    |
| Outcome annotation           | Manual        | **Automated via Suite 4**                         |
| AI-assisted inventory        | Not available | **New capability**                                |
| Consent management           | Basic         | **Dynamic consent integration**                   |

### 2.3 Physical Infrastructure

Suite 2's physical infrastructure leverages detailed specifications from the B-PREPARED biorepository proposal (CBRF2-2023-00132), which represents 20+ years of biobanking expertise through the Canadian BioSample Repository (CBSR).

#### Cold Storage Expansion

**Budget Allocation:** $946,333 CAD

| Equipment                   | Qty               | Specification                                 | Purpose                               |
| --------------------------- | ----------------- | --------------------------------------------- | ------------------------------------- |
| -80°C Chest Freezers       | 20                | New Brunswick, 230V/60Hz, 2-stage compressors | Primary biospecimen storage           |
| CO₂ Backup Controllers     | 20                | One per freezer                               | Emergency cooling (24-72 hour backup) |
| NUNC Hotels                 | 66/freezer        | Aluminum cryotube storage (11×6 config)      | Organized sample storage              |
| CO₂ Tanks                  | 68 (40+28 backup) | Wall/floor mounted with safety brackets       | Emergency cooling supply              |
| Weigh Scales                | 24 (20+4 backup)  | Monitor CO₂ tank fullness                    | Backup system monitoring              |
| LN₂ Vapor-Phase Dewars     | 3                 | -170°C, existing (relocated)                 | Critical samples, cell products       |
| Portable Peroxide Generator | 1                 | Regular disinfection                          | Contamination prevention              |

**Rationale for Chest Freezers:**

- Hold temperature when opened (unlike uprights where cold air escapes due to gravity)
- Reduced temperature fluctuations = less compressor load = maximized freezer longevity
- Most cost-effective, energy-efficient, and reliable configuration
- Generates least heat (important for facility HVAC load)

**Storage Capacity (SBS 8×12 Arrays):**

| Cryotube Size | Tubes/Pallet | Pallets/Hotel | Hotels/Freezer | Total Tubes/Freezer |
| ------------- | ------------ | ------------- | -------------- | ------------------- |
| 0.3 mL        | 96           | 25            | 66             | 158,400             |
| 0.5 mL        | 96           | 19            | 66             | 120,384             |
| 1 mL          | 96           | 13            | 66             | 82,368              |
| 2 mL          | 48           | 11            | 66             | 34,848              |
| 5 mL          | 48           | 6             | 66             | 19,008              |

**Capacity Justification:** Based on CBSR experience with blood-borne pathogens project (184,993 aliquots from 1,000 participants) and COVID-19 Surveillance Collaboration (147,705 aliquots from 715 participants), projected need is up to 15× current capacity for Hub-related projects, ongoing surveillance, and remnant sample storage.

#### Processing Equipment

**Budget Allocation:** $1,825,566 CAD

| Equipment                          | Qty | Specification                                | Purpose                                 |
| ---------------------------------- | --- | -------------------------------------------- | --------------------------------------- |
| Biocontainment Hoods               | 2   | Existing Class II BSC                        | Manual sample processing and aliquoting |
| Sorvall ST4 Plus Centrifuge        | 2   | Refrigerated, swinging bucket                | Sample processing with biocontainment   |
| Beckman Coulter Microfuge 20R      | 4   | Refrigerated                                 | High-speed, small volume centrifugation |
| VWR Water Jacketed CO₂ Incubator  | 2   | With CO₂ Bone Dry Type K Cylinder           | Cell immortalization with EBV           |
| Evident CKX53 Inverted Microscope  | 1   | EP50 Camera, anti-vibration table            | Cell analysis before freezing           |
| Millipore Mili-Q EQ 7000           | 1   | Ultra Pure Water System                      | Cell processing                         |
| Agilent TapeStation 4150           | 1   | DNA/RNA integrity analysis                   | Quality control                         |
| Agilent BioTek EL406               | 1   | Washer/Dispenser                             | Cell and proteomic analysis             |
| Agilent BioTek Synergy Neo 2       | 1   | Hybrid plate reader                          | Cell and proteomic analysis             |
| Invitrogen Countess 3FL            | 1   | Fluorescent cell counter                     | Automated cell counting                 |
| Thermo-Sci Precision Water Bath    | 1   | With beads                                   | Sample thawing                          |
| Tecan Freedom Evo 200              | 1   | Software/hardware upgrade ($379,787)         | Automated sample handling robotics      |
| Fluorescence Activated Cell Sorter | 1   | Chip-based microfluidics (reduced carryover) | Cell sorting with minimal contamination |
| Sartorius Arium Comfort II         | 1   | Benchtop water system                        | Clean room water purification           |

#### Monitoring Systems

| System                   | Coverage                    | Features                                         |
| ------------------------ | --------------------------- | ------------------------------------------------ |
| Temperature Monitoring   | All cold storage (44 units) | 24/7 remote alerting, CO₂ backup status         |
| Access Control           | All areas                   | Key card + university camera surveillance        |
| Environmental Monitoring | GMP areas                   | Particle counts, humidity, "bone-dry" rooms      |
| Inventory Tracking       | All specimens               | Barcode + RFID via OpenSpecimen                  |
| Digital Security         | AWS cloud integration       | Per 2013 Health Canada/US CDC audit requirements |

### 2.3 Sample Types Supported

| Sample Type            | Processing                      | Storage     | Key Trials             |
| ---------------------- | ------------------------------- | ----------- | ---------------------- |
| Serum                  | Centrifuge, aliquot             | -80°C      | All flagships          |
| Plasma (EDTA, citrate) | Centrifuge, aliquot             | -80°C      | Cardio-renal-metabolic |
| PBMC                   | Ficoll separation, cryopreserve | LN₂        | MS Cell Therapies      |
| Whole blood            | Aliquot                         | -80°C      | Genomics, RareKids     |
| Urine                  | Aliquot                         | -80°C      | Nephrology trials      |
| CSF                    | Aliquot                         | -80°C      | MS, Neuro-immunology   |
| Tissue (FFPE, fresh)   | Process per protocol            | -80°C/LN₂ | Oncology, pathology    |
| Cell products          | GMP processing                  | LN₂        | ACTM-manufactured      |

### 2.4 Biospecimen Security: Centralized vs. Distributed Risk

Centralized biorepository management provides security advantages over distributed or siloed specimen storage—addressing both physical security and federal research security requirements (STRAC/NSGRP):

| Security Risk                  | Distributed Model                               | CTAP Centralized Model                                    |
| ------------------------------ | ----------------------------------------------- | --------------------------------------------------------- |
| **Sample Loss**          | Unmonitored freezers; delayed failure detection | 24/7 remote monitoring; immediate alerts                  |
| **Unauthorized Access**  | Varied access controls across sites             | Badge + biometric; unified security perimeter             |
| **Chain of Custody**     | Paper logs; incomplete tracking                 | Full barcode/RFID traceability; audit trails              |
| **Sample Diversion**     | Difficult to detect across sites                | Centralized inventory reconciliation                      |
| **Catastrophic Failure** | Total loss of site-specific collections         | Redundant storage; backup power; distributed freezer risk |

This architecture aligns with federal research security requirements by centralizing control over valuable biological materials that could be targets of foreign interest. Integration with Suite 4's TRE ensures that specimen-linked phenotypic data remains within secure, audited infrastructure.

---

## 3. Cell Manufacturing (ACTM Integration)

> **Note:** ACTM equipment expansion ($850,000) and iPSC Platform ($400,000) are funded through separate institutional investments. These capabilities are fully integrated with Suite 2 biorepository operations and CTAP trial workflows but are not included in the CFI budget request.

### 3.1 Alberta Cell Therapy Manufacturing (ACTM)

Suite 2 integrates with ACTM's capabilities to support CTAP flagship programs, particularly MS Cell Therapies and neuro-immunology trials. This integration leverages the University of Alberta's **MS Centre**—29 multidisciplinary affiliates spanning clinical neuroimmunology (Blevins, McCombe, Smyth), glial biology (Voronova, Plemel, Todd), glycomics (Mahal), and the MS Experimental Therapeutics Program (Giuliani). Dr. Voronova's CHARM platform (CFI IF 2025) provides complementary hiPSC capabilities for patient-derived neural models.

**Current ACTM Capabilities:** - GMP-compliant cell manufacturing - Regulatory T-cell expansion - Engineered lymphocyte production - Quality management system (QMS)

#### Existing Translational Pipeline: CAR-T Cell Therapy

The ACTM's translational capability is already demonstrated through the CAR-T cell therapy program led by Dr. Michael Chiu. This operational program validates the complete bedside-to-bench-to-bedside pathway that CTAP will scale:

| Workflow Stage          | Current Operation                    | CTAP Enhancement             |
| ----------------------- | ------------------------------------ | ---------------------------- |
| Patient cells collected | Cross Cancer Institute leukapheresis | Expanded collection sites    |
| Manufacturing           | ACTM GMP processing                  | Increased capacity           |
| Quality control         | Batch release testing                | Automated QC integration     |
| Product administration  | Cross Cancer infusion                | Multi-site capability        |
| Long-term follow-up     | Standard clinical care               | Living Biorepository linkage |

This existing workflow demonstrates that: 1. **The clinical pathway exists** - Patient cells are already flowing through ACTM for therapeutic manufacturing 2. **Cross Cancer partnership is active** - Not proposed but operational 3. **Cell therapy expertise is proven** - Dr. Chiu's team has navigated the regulatory and operational complexities 4. **The model is validated** - CTAP infrastructure expands a working system, not a theoretical concept

Separately-funded ACTM equipment expansion will scale this proven pathway to support multiple cell and gene therapy trials across the CAR-T, regulatory T-cell, and emerging modalities.

**ACTM Equipment (Institutional Investment - Integrated with CTAP):**

| Enhancement               | Investment          | Impact                              |
| ------------------------- | ------------------- | ----------------------------------- |
| GMP bioreactors           | \$400,000           | Scale-up capacity for larger trials |
| Cell washers              | \$150,000           | Automated, closed-system processing |
| Clinical-grade incubators | \$200,000           | Expanded culture capacity           |
| Environmental monitoring  | \$100,000           | 24/7 GMP compliance                 |
| **ACTM Subtotal**   | **\$850,000** | *Funded separately*               |

### 3.2 Pluripotent Stem Cell Platform

Separately-funded iPSC platform establishes new induced pluripotent stem cell capabilities:

**iPSC Equipment (Institutional Investment - Integrated with CTAP):**

| Component                  | Investment          | Purpose                                                 |
| -------------------------- | ------------------- | ------------------------------------------------------- |
| Automated culture platform | \$300,000           | Standardized iPSC expansion (CloneSelect or equivalent) |
| QC equipment               | \$100,000           | Karyotyping, pluripotency markers for release testing   |
| **iPSC Subtotal**    | **\$400,000** | *Funded separately*                                   |

Differentiation protocols (cardiomyocytes, neurons, hepatocytes) enable disease modeling and drug screening applications.

### 3.3 Integration with Trial Workflows

```
┌──────────────────────────────────────────────────────────────────┐
│                    CELL THERAPY TRIAL WORKFLOW                   │
├──────────────────────────────────────────────────────────────────┤
│                                                                  │
│  Patient          →  Leukapheresis  →  ACTM Manufacturing       │
│  Enrollment           Collection          GMP Processing         │
│      │                    │                    │                 │
│      ▼                    ▼                    ▼                 │
│  Consent &           Sample to           Product Release        │
│  Eligibility         CBSR Archive        Testing & QC           │
│      │                    │                    │                 │
│      ▼                    ▼                    ▼                 │
│  Connect Care ←──── Living Biobank ←──── Batch Records         │
│  Outcome Link        Specimen Track       GMP Documentation     │
│                                                                  │
│                           ↓                                      │
│                                                                  │
│                    Product Infusion                              │
│                    & Patient Follow-up                           │
│                           │                                      │
│                           ▼                                      │
│                    Long-term Outcome                             │
│                    via Connect Care                              │
│                                                                  │
└──────────────────────────────────────────────────────────────────┘
```

---

## 4. Trial Integration Workflows

### 4.1 Pre-Trial Setup

| Step                           | Responsibility      | Timeline |
| ------------------------------ | ------------------- | -------- |
| Protocol biospecimen review    | CBSR + PI           | Week 1-2 |
| SOPs customization             | CBSR                | Week 2-3 |
| BioBank software configuration | CBSR IT             | Week 3-4 |
| Site training                  | CBSR                | Week 4-5 |
| Consent template integration   | Ethics Agent + CBSR | Week 4-5 |
| Connect Care linkage setup     | Suite 4 + CBSR      | Week 5-6 |

### 4.2 Active Trial Operations

| Process             | Frequency      | Automation Level    |
| ------------------- | -------------- | ------------------- |
| Sample receipt      | Per collection | Barcode scan        |
| Processing          | Per protocol   | Manual + automation |
| Storage assignment  | Per aliquot    | Automated           |
| Inventory update    | Real-time      | Automated           |
| QC tracking         | Per batch      | BioBank software    |
| Shipment management | As needed      | Tracked             |
| EMR linkage refresh | Daily          | Automated           |

### 4.3 Post-Trial Transition

| Step                       | Description                         | Timeline          |
| -------------------------- | ----------------------------------- | ----------------- |
| Final reconciliation       | Verify all samples accounted        | Trial close +30d  |
| Consent scope review       | Determine secondary use eligibility | Trial close +60d  |
| Archive configuration      | Long-term storage assignment        | Trial close +90d  |
| Outcome linkage activation | Enable longitudinal follow-up       | Trial close +90d  |
| Cross-trial availability   | List in researcher discovery portal | Trial close +120d |

---

## 5. Cross-Trial Reuse Governance

### 5.1 Reuse Framework

The Living Biorepository enables secondary use of trial specimens through governed processes:

| Reuse Type                      | Requirements     | Approval                    |
| ------------------------------- | ---------------- | --------------------------- |
| Same PI, related question       | Broad consent    | Expedited                   |
| Different PI, same disease      | Specific consent | Standard                    |
| Different PI, different disease | Re-consent       | Full review                 |
| Commercial use                  | Explicit consent | Full review + institutional |

### 5.2 Consent Categories

| Category                   | Description                             | Reuse Scope          |
| -------------------------- | --------------------------------------- | -------------------- |
| **Broad**            | "Future research in health and disease" | Wide reuse permitted |
| **Disease-specific** | "Research on\[condition\]"              | Same disease area    |
| **Study-specific**   | "This study only"                       | No reuse             |
| **Dynamic**          | Participant-controlled preferences      | As specified         |

### 5.3 Discovery Portal Integration

Researchers access available specimens through the Researcher Discovery Portal (Suite 5):

1. **Browse** - Summary-level descriptions of specimen holdings
2. **Query** - Filter by disease, sample type, outcomes, consent scope
3. **Request** - Submit access application with scientific justification
4. **Review** - Data Access Committee evaluation
5. **Release** - Approved samples prepared for shipment

---

## 6. Quality Management

### 6.1 Quality System Framework

| Element                 | Standard   | Implementation             |
| ----------------------- | ---------- | -------------------------- |
| Document control        | ISO 9001   | BioBank software           |
| Training records        | GCP, GCLP  | Learning management system |
| Equipment qualification | IQ/OQ/PQ   | Annual validation          |
| Temperature monitoring  | 21 CFR 211 | Continuous, alarmed        |
| Chain of custody        | ISBER      | Full traceability          |
| Deviation management    | ICH Q10    | CAPA system                |

### 6.2 ISBER Best Practices

Suite 2 adheres to International Society for Biological and Environmental Repositories (ISBER) best practices:

| Domain     | ISBER Requirement    | CTAP Implementation         |
| ---------- | -------------------- | --------------------------- |
| Governance | Documented policies  | CBSR QMS                    |
| Facilities | Appropriate design   | Renovated spaces            |
| Equipment  | Validated, monitored | Suite 2 equipment           |
| Quality    | QMS, audits          | Annual external audit       |
| Safety     | Biosafety program    | Institutional EHS           |
| Training   | Competency-based     | Mandatory curriculum        |
| IT         | Validated systems    | BioBank software validation |

### 6.3 Regulatory Compliance

| Regulation                                 | Applicability      | Suite 2 Response          |
| ------------------------------------------ | ------------------ | ------------------------- |
| Health Canada Cells, Tissues, Organs (CTO) | Cell products      | ACTM compliance           |
| 21 CFR Part 1271                           | US-bound tissues   | If applicable             |
| TCPS2                                      | Human subjects     | Ethics integration        |
| HIA (Alberta)                              | Health information | Suite 4 de-identification |
| ISBER                                      | Biobanking         | Full adoption             |

---

## 7. Partner Facilities

### 7.1 Canadian BioSample Repository (CBSR)

**Role:** Primary biorepository operator

**Leadership:** Founded and led by Co-Director Dr. Bruce Ritchie

**Registration:** Canadian Tissue Repository Network (CTRNet)

**Experience:** 20+ years in biobanking

**Current Holdings (Pre-CTAP):**

- Over 1 million samples (cryotubes and FTA paper DNA blood spots)
- Samples from 26,676 participants
- 48,340 collection events
- 78 studies requiring long-term storage
- 46 clinical trials (many under Health Canada regulatory oversight)

**Existing Cold Storage:**

- 24× -80°C freezers
- 3 liquid nitrogen dewars (-170°C)
- Capacity: 500,000 cryotubes at vapour phase nitrogen
- Automated sample-handling robotics (CFI-funded, Tonelli M, Fedorak R)

**Existing Capabilities:**

- BSL-2 sample processing
- Access to upgraded BSL-3 facilities at BRIF Phase 1 (Hobman T), supported by Li Ka Shing Institute of Virology (LKSIoV) and Li Ka Shing Applied Virology Institute (LKS AVI)

**CTAP Contribution (B-PREPARED Infrastructure):**

- 200% expanded freezer capacity (20 new -80°C chest freezers)
- Properly ventilated physical space (LKS basement, Katz 3rd floor)
- Enhanced electrical and cooling backup systems
- Real-time EMR integration via OpenSpecimen + Suite 4 TRE
- AI-assisted inventory management
- Cross-trial reuse governance

### 7.2 Alberta Cell Therapy Manufacturing (ACTM)

**Role:** GMP cell manufacturing

**Capabilities:** - Regulatory T-cell expansion - Engineered lymphocyte production - GMP quality systems - Regulatory expertise

**CTAP Contribution:** - Expanded bioreactor capacity - MS Cell Therapies flagship support - iPSC platform development coordinated with CHARM (CFI IF 2025, Voronova) hiPSC capabilities

### 7.3 Applied Pharmaceutical Innovation (API) Partnership

**Role:** Integrated biomanufacturing pathway from CTAP trials to production

The Living Biorepository establishes a formal integration with API that extends beyond specimen storage to create bidirectional data flows connecting clinical trial outcomes with manufacturing quality optimization. This partnership operationalizes the MOU framework described in RTA Section 2.2.1.

**Manufacturing Batch QC Specimen Archive:** For CTAP-supported products manufactured at API facilities (DDIC, CMPC), the Living Biorepository maintains a parallel specimen archive linked to each manufacturing batch. When products enter CTAP clinical trials, batch-specific specimens are retained alongside participant biospecimens, enabling:

- Correlation of manufacturing parameters with clinical outcomes
- Post-market surveillance linking production quality to long-term safety signals
- Process optimization based on real-world effectiveness data

**Biorepository-QSP Data Integration:** The Living Biorepository's automated outcome annotation capability (5-10 year follow-up via Connect Care linkage) feeds directly into API's Quantitative Systems Pharmacology (QSP) platform. This creates a continuously-learning manufacturing intelligence system:

```
Manufacturing Batch → CTAP Trial → Participant Outcomes → QSP Refinement → Process Optimization
       ↑                                    ↓
    DDIC/CMPC ←←←←←←←←←← Living Biorepository ←←←←←←←←←←← Connect Care
```

**Specimen Flows for Manufacturing-Supported Trials:**

| Trial Phase  | API Facility       | Biorepository Function                                   |
| ------------ | ------------------ | -------------------------------------------------------- |
| Phase I      | DDIC (formulation) | Manufacturing batch QC archive; participant PK specimens |
| Phase II/III | CMPC (scale-up)    | Batch-to-cohort traceability; outcome annotation         |
| Post-Market  | CMPC (production)  | Long-term safety surveillance specimens                  |

**Workforce Integration:** Living Biorepository staff participate in API's GMP training rotations, creating dual-competent personnel who understand both biospecimen quality requirements and manufacturing process controls.

### 7.4 PRAIRIE Hub

**Role:** Vaccine and pandemic preparedness trials

The B-PREPARED infrastructure directly supports PRAIRIE Hub objectives, with 75-90% of expanded capacity anticipated for Hub-related projects, ongoing surveillance, and remnant sample storage.

**Integration:**

- Specimen management for vaccine trials
- Cold chain coordination
- Outbreak response capacity
- Support for linked PRAIRIE Hub research programs:
  - Self-amplifying mRNA vaccine development (CBRF2-2023-00113)
  - Diagnostic assay development (CBRF2-2023-00103)
  - Small-molecule therapeutics for viral pathogens (CBRF2-2023-00102)
  - PRAIRIE CMAPS (CBRF2-2023-00092)
  - Large-scale diagnostic labs for disease surveillance (CBRF2-2023-00106)

**Existing Supporting Programs:**

- National Blood Borne Pathogens Surveillance Project (BBPSP) - Ritchie B
- COVID-19 Surveillance Collaboration (CoCollab) - Ritchie B, Richer L
- Striving for Pandemic Preparedness - Alberta Research Consortium (SPP-ARC) - $50M Government of Alberta funding

---

## 8. Sustainability Model

### 8.1 Revenue Streams

| Year | CFI/IOF | Fee-for-Service | Grants | Industry | Total    |
| ---- | ------- | --------------- | ------ | -------- | -------- |
| 1    | \$500K  | \$100K          | \$100K | \$50K    | \$750K   |
| 2    | \$450K  | \$200K          | \$150K | \$100K   | \$900K   |
| 3    | \$400K  | \$300K          | \$150K | \$150K   | \$1,000K |
| 4    | \$300K  | \$350K          | \$150K | \$200K   | \$1,000K |
| 5    | \$200K  | \$400K          | \$150K | \$250K   | \$1,000K |
| 6+   | \$0     | \$500K          | \$150K | \$350K   | \$1,000K |

### 8.2 Service Pricing

| Service                       | Unit            | Price      |
| ----------------------------- | --------------- | ---------- |
| Sample processing (blood)     | Per sample      | \$35       |
| Sample processing (tissue)    | Per sample      | \$75       |
| PBMC isolation                | Per sample      | \$100      |
| Long-term storage (-80°C)    | Per year/sample | \$5        |
| Long-term storage (LN₂)      | Per year/sample | \$15       |
| Sample retrieval and shipping | Per request     | \$150      |
| Custom processing             | Per hour        | \$85       |
| Cell manufacturing (ACTM)     | Per batch       | Negotiated |

### 8.3 Cost Recovery Model

| Cost Category          | Recovery Mechanism             |
| ---------------------- | ------------------------------ |
| Personnel              | Core funding + project charges |
| Consumables            | Direct charge to studies       |
| Equipment maintenance  | Overhead allocation            |
| Cold storage utilities | Storage fees                   |
| Quality/compliance     | Platform overhead              |

---

## 9. Equipment and Infrastructure Budget

### 9.1 Detailed Budget

Budget incorporates detailed specifications from the B-PREPARED biorepository proposal (CBRF2-2023-00132).

| Category                        | Item                            | Description                                                 | Total                 |
| ------------------------------- | ------------------------------- | ----------------------------------------------------------- | --------------------- |
| **Cold Storage**          | -80°C Chest Freezers (20)      | New Brunswick, 230V/60Hz, 2-stage compressors               |                       |
|                                 | CO₂ Backup System              | 20 controllers, 68 tanks, scales, safety brackets           |                       |
|                                 | LN₂ Vapor-Phase Dewars (3)     | Existing, relocated                                         |                       |
|                                 | NUNC Hotels (1,320 total)       | 66/freezer, aluminum cryotube storage                       |                       |
|                                 | Peroxide Generator              | Contamination prevention                                    |                       |
|                                 | **Cold Storage Subtotal** |                                                             | **\$946,333**   |
| **Processing Equipment**  | Centrifuges                     | 2× Sorvall ST4 Plus, 4× Beckman Microfuge 20R             |                       |
|                                 | Incubators                      | 2× VWR Water Jacketed CO₂                                 |                       |
|                                 | Microscopy                      | Evident CKX53 with EP50 camera, anti-vibration table        |                       |
|                                 | Liquid Handling                 | Tecan Freedom Evo 200 upgrade (\$379,787)                   |                       |
|                                 | Cell Analysis                   | TapeStation 4150, BioTek EL406, Synergy Neo 2, Countess 3FL |                       |
|                                 | FACS                            | Chip-based microfluidics cell sorter                        |                       |
|                                 | Water Systems                   | Millipore Mili-Q EQ 7000, Sartorius Arium Comfort II        |                       |
|                                 | **Processing Subtotal**   |                                                             | **\$1,825,566** |
| **Space Renovations**     | LKS Basement                    | B-017 Freezer Farm, B-025/B-025A Labs, B-037 Storage        |                       |
|                                 | Katz 3rd Floor                  | Room 3-075 Suite Clean Room Complex                         |                       |
|                                 | Electrical                      | 400A standby power distribution, dual-generator backup      |                       |
|                                 | HVAC                            | Dehumidification, 4-ton supplemental cooling                |                       |
|                                 | **Renovation Subtotal**   |                                                             | **\$3,025,374** |
| **OpenSpecimen Platform** | Institutional license           | Unlimited users, cloud/on-premise                           | \$210,000             |
|                                 | Data migration                  | caTissue to OpenSpecimen                                    | \$56,000              |
|                                 | Integration: Connect Care       | Epic FHIR API                                               | \$49,000              |
|                                 | Integration: REDCap             | EDC-biobank coordination                                    | \$49,000              |
|                                 | Integration: Freezer/Scanners   | Automated specimen tracking                                 | \$49,000              |
|                                 | Custom plugin development       | Dynamic consent, CTAP workflows                             | \$105,000             |
|                                 | Annual support (Year 1)         | Technical support, upgrades                                 | \$42,000              |
|                                 | Staff training                  | OpenSpecimen certification                                  | \$35,000              |
|                                 | **OpenSpecimen Subtotal** |                                                             | **\$595,000**   |
| **Suite 2 Total**         |                                 |                                                             | **\$6,392,273** |

**Notes:**

1. **Cell Manufacturing (ACTM)** and **iPSC Platform** equipment ($1,250,000 combined) are funded through separate institutional investments but will be fully integrated with Suite 2 biorepository operations and CTAP trial workflows.
2. Data infrastructure originally proposed in B-PREPARED (federated biobank data platform) is now consolidated within **Suite 4: Data Platform** as part of the integrated TRE architecture. This enables unified consent management, de-identification services, and OMOP-based research queries across all CTAP suites.

### 9.2 Budget Summary by Category

| Category              | Amount                | % of Total |
| --------------------- | --------------------- | ---------- |
| Cold Storage          | \$946,333             | 14.8%      |
| Processing Equipment  | \$1,825,566           | 28.6%      |
| Space Renovations     | \$3,025,374           | 47.3%      |
| OpenSpecimen Platform | \$595,000             | 9.3%       |
| **Total**       | **\$6,392,273** | 100%       |

*Cell Manufacturing (ACTM, $850,000) and iPSC Platform ($400,000) are funded separately but integrated with CTAP.*

### 9.3 Space Planning and Renovations

Suite 2 leverages detailed architectural specifications from the B-PREPARED biorepository proposal (CBRF2-2023-00132), designed by GEC Architecture.

**Total Renovation Estimate:** $3,025,374 CAD

| Category                        | Amount               |
| ------------------------------- | -------------------- |
| Hard Costs (Renovation)         | $1,750,000           |
| Soft Costs (Design, PM, QA/QC)  | $862,445             |
| Contingency (10%)               | $261,245             |
| GST (1.65%) + Inflation (3.35%) | $143,685             |
| Programming Costs               | $8,000               |
| **Total**                 | **$3,025,374** |

#### Li Ka Shing Centre (LKS) - Basement Level

**Building #53087** - Primary biorepository location

##### Room B-017: New Freezer Farm (Primary Cold Storage)

**Purpose:** House 20 new -80°C chest freezers with CO₂ backup systems

**Key Renovations:**

- New 1800 × 2150 mm double doors for equipment access
- New vestibule/airlock connecting to Room B-025A
- Card reader access installation
- Sealed recessed lighting fixtures (emergency power connected)
- 4 new L-shaped workstations with rolling task chairs
- New partition construction (16mm gypsum, 92mm steel studs @ 400 O.C.)
- Acoustic tile ceiling in office space
- VCT flooring throughout

**Equipment Relocation:**

- 3× existing 94K Cryoscience storage units (Doers) relocated from B-025A
- Wall-mounted brain bank shelving with sliding glass doors

##### Room B-025: Shipping Area

**Equipment:**

- Millipore Mili-Q EQ 7000 Ultra Pure Water System
- Storage shelving (460mm deep, 1780mm A.F.F.)
- Computer workstations with barcode readers
- Shipping boxes and phase-change temperature packs
- Dry nitrogen shippers (maintains temperature 1+ week)

##### Room B-025A: Processing Lab

**New Equipment:**

- 2× Sorvall ST4 Plus Centrifuge
- 4× Beckman Coulter Microfuge 20R
- 2× VWR Water Jacketed CO₂ Incubator
- Evident CKX53 Inverted Microscope with anti-vibration table
- Agilent TapeStation 4150
- Agilent BioTek EL406 Washer/Dispenser
- Agilent BioTek Synergy Neo 2 Hybrid
- Invitrogen Countess 3FL

**Architectural Changes:**

- New casework with 850mm deep × 787mm high countertop
- Lab water supply and drainage for incubators and water baths

##### Rooms B-025A1 & B-037: Additional Freezer Storage

**Electrical Upgrades:**

- Re-circuit existing 15A-2P 208V and 20A-1P 120V circuits
- Connect to new standby power panelboards 'A' and 'B'

#### Electrical Distribution Upgrade (Standby Power)

**Major Electrical Infrastructure:**

| Component                 | Specification                   | Location                          |
| ------------------------- | ------------------------------- | --------------------------------- |
| Main Breaker              | 400A-3P within 4000A, 347/600V  | Sub-basement electrical room      |
| Emergency Breaker         | 400A-3P within 2400A, 347/600V  | Penthouse                         |
| Automatic Transfer Switch | 400A, 600/347V                  | Interstitial space above basement |
| Standby Power CDP         | 400A, 347/600V, full height     | Interstitial space above basement |
| Transformer               | 150KVA, 600-120/208V, K13 rated | Interstitial space above basement |
| Secondary CDP             | 600A, 120/208V, full height     | Interstitial space above basement |
| Panelboards 'A' & 'B'     | 200A, 120/208V, 72 circuit each | Interstitial space above basement |

**Panelboard Configuration (Each):**

- 22× 15A-2P breakers for freezers
- 11× 20A-1P breakers for CO₂ backup systems

**Critical Note:** Two generators synchronize for backup power. On failure of either generator, the new standby power distribution disconnects through load shed scheme.

#### Mechanical/HVAC Requirements

- Dehumidified air supply to freezer storage rooms ("bone-dry" rooms and vestibules)
- 4-ton supplemental cooling for Room B-017 (20 freezers use up to 14 kW maximum load)
- Floor drain provision for Room B-017
- HVAC upgrades to eliminate formalin off-gassing risk from brain bank

#### Katz Group Centre (KATZ) - 3rd Floor

**Building #51510** - Clean room and cell processing

##### Room 3-075 Suite: Clean Room Complex

Rooms ZZ, A, A1, B, B1, C, C1 for pilot system and water purification

**Purpose:** Cell processing and pilot manufacturing

**Equipment:**

- Sartorius Arium Comfort II Benchtop Water System
- 17× HEPA Filters (4×2 ft) + 2× HEPA Filters (2×2 ft) - replace all ceiling-mounted units
- Syntheon SolidLab 1 Pilot System

**Architectural Changes:**

- 2× new steel plates covering existing opening between 3075B and 3075B1
- Existing epoxy floor finish refinished per manufacturer specifications

**Mechanical:**

- Replace all existing ceiling-mounted HEPA filters
- Additional cooling in Room 3-075-B1
- Water and drain connections for pilot system

#### Floor Plans

Architectural floor plans prepared by GEC Architecture (issued August 1, 2023):

- [LKS Overall Lab Plan](../background/images/LKS_overall_lab_plan.png)
- [B-017 Freezer Farm Layout](../background/images/LKS_B017_freezer_farm.png)
- [B-017 Renovation Notes](../background/images/LKS_B017_renovation_notes.png)
- [B-025 and B-025A1](../background/images/LKS_B025_B025A1.png)
- [B-025A Processing Lab Layout](../background/images/LKS_B025A_processing_lab.png)
- [B-025A Equipment List](../background/images/LKS_B025A_equipment_list.png)
- [B-037 Layout](../background/images/LKS_B037.png)
- [Electrical Notes](../background/images/LKS_electrical_notes.png)
- [Katz 3-075 Clean Room Layout](../background/images/KATZ_3075_cleanroom_layout.png)
- [Katz 3-075 Equipment Notes](../background/images/KATZ_3075_equipment_notes.png)

#### Project Timeline

| Phase                         | Year 1       | Year 2     |
| ----------------------------- | ------------ | ---------- |
| Tender/In-House Project Queue | Months 1-3   | -          |
| Design                        | Months 3-8   | -          |
| Materials & Equipment Order   | Months 7-10  | -          |
| Construction                  | Months 10-12 | Months 1-6 |
| Close-Out & Turnover          | -            | Months 6-8 |

*Timeline commences upon Notice of Decision (NOD) for provincial matching funds. Subject to timing of site access and renovations queue. Long-lead delivery times accounted for due to supply chain challenges.*

---

## 10. Key Personnel and Staffing

### 10.1 Biorepository Staffing (B-PREPARED Model)

| Role                                | Responsibility                                    | FTE       | Funding             |
| ----------------------------------- | ------------------------------------------------- | --------- | ------------------- |
| **Biorepository Technician**  | Operation and maintenance of federated repository | 0.5       | CFI O&M             |
| **Site Technicians**          | Sample processing at each biorepository site      | 1.0+/site | Cost recovery       |
| **Sample Access Coordinator** | Sample access management and procurement          | 0.5       | Cost recovery       |
| **Lab Manager**               | Processing, QC oversight                          | 1.0       | CFI/Cost recovery   |
| **Quality Manager**           | QMS, compliance                                   | 0.5       | Institutional       |
| **IT Specialist**             | BioBank software, TRE integration                 | 0.5       | Shared with Suite 4 |

### 10.2 Cell Manufacturing Staffing (ACTM)

| Role                              | Responsibility        | FTE | Funding        |
| --------------------------------- | --------------------- | --- | -------------- |
| **Cell Manufacturing Lead** | ACTM operations       | 1.0 | Institutional  |
| **GMP Specialists**         | Cell production       | 2.0 | Grant/Industry |
| **QC Technologist**         | Batch release testing | 0.5 | Grant/Industry |

### 10.3 Governance

**Biobank Users Group (BUG) - UAlberta**

**Chair:** Dr. Bruce Ritchie (CBSR Director)

- Oversees local biobank operations
- Governance over local standard operating procedures
- Quality and biosafety procedures (ISBER Best Practices, institutional policy, PHAC guidelines)
- Early Career Researcher (ECR) representation included

**Data and Sample Stewardship Committee (DSSC)**

- Co-directors (2)
- Principal investigators (2-4)
- Research ethics board representatives (2)
- Ensures Tri-Council Policy Statement compliance
- Oversees data/sample curation, release, and collection policies

### 10.4 Operations and Maintenance

**Annual Maintenance Costs:**

| Category                    | Current (Pre-CTAP)            | Projected (Post-CTAP) |
| --------------------------- | ----------------------------- | --------------------- |
| CBSR maintenance            | ~$11,000/year | ~$45,000/year |                       |
| Equipment service contracts | Varies                        | Included in $45K      |
| Consumables                 | Direct charge                 | Direct charge         |

**Service Contracts Required:**

- Tecan robots (Edmonton)
- Fluorescent microscopes
- Fluorescence-activated cell sorters
- HVAC systems

**Risk Mitigation Systems:**

| Risk                      | Mitigation                                                            |
| ------------------------- | --------------------------------------------------------------------- |
| Power Loss                | Enhanced electrical backup with dual-generator load shed              |
| Sample Integrity          | Environmental monitoring, CO₂ backup cooling                         |
| Data Security             | AWS cloud integration with state-of-the-art physical/digital security |
| Geographic Redundancy     | Procedures for backup storage of sample subsets at multiple sites     |
| Contamination             | Portable peroxide generators for regular disinfection                 |
| Environmental Emergencies | HVAC upgrades, humidity control ("bone-dry" rooms)                    |

---

## 11. Implementation Timeline

### Phase 1: Foundation (Months 1-12)

| Milestone                    | Target   | Dependencies |
| ---------------------------- | -------- | ------------ |
| Cold storage procurement     | Month 4  | Procurement  |
| Freezer farm renovation      | Month 8  | Facilities   |
| Processing equipment install | Month 10 | Space ready  |
| BioBank software upgrade     | Month 12 | IT, Suite 4  |

### Phase 2: Integration (Months 13-24)

| Milestone                     | Target   | Dependencies |
| ----------------------------- | -------- | ------------ |
| Connect Care FHIR integration | Month 16 | Suite 4, AHS |
| Automated outcome annotation  | Month 18 | Suite 4      |
| AI inventory pilot            | Month 20 | Suite 4 AI   |
| GMP expansion complete        | Month 24 | ACTM         |

### Phase 3: Full Operations (Months 25-36)

| Milestone                        | Target   | Dependencies         |
| -------------------------------- | -------- | -------------------- |
| iPSC platform operational        | Month 28 | Equipment, personnel |
| Cross-trial reuse governance     | Month 30 | Portal, Suite 4      |
| Full Living Biorepository launch | Month 36 | All integrations     |

---

## 12. Risk Mitigation

| Risk                            | Likelihood | Impact | Mitigation                           |
| ------------------------------- | ---------- | ------ | ------------------------------------ |
| Freezer failure                 | Low        | High   | Redundancy, monitoring, backup power |
| Connect Care integration delays | Medium     | Medium | Early AHS engagement                 |
| Cell manufacturing QC failure   | Low        | High   | Robust QMS, redundant batches        |
| Consent complexity              | Medium     | Medium | Clear frameworks, dynamic consent    |
| Staff recruitment               | Medium     | Medium | Competitive compensation, training   |

---

## Appendix A: ISBER Compliance Checklist

| Domain                  | ISBER Requirement                  | Status                      |
| ----------------------- | ---------------------------------- | --------------------------- |
| 1.0 Governance          | Documented policies and procedures | Planned                     |
| 2.0 Facilities          | Appropriate space and utilities    | Planned (renovation)        |
| 3.0 Equipment           | Qualified, maintained, monitored   | Planned (Suite 2 equipment) |
| 4.0 Training            | Competency-based program           | Existing (CBSR)             |
| 5.0 Quality Management  | QMS with audits                    | Existing (CBSR)             |
| 6.0 Safety              | Biosafety program                  | Existing (institutional)    |
| 7.0 Specimen Collection | SOPs for each type                 | Existing + new              |
| 8.0 Specimen Processing | Validated protocols                | Existing + validation       |
| 9.0 Specimen Storage    | Secure, monitored                  | Planned (Suite 2)           |
| 10.0 Specimen Retrieval | Documented procedures              | Existing + automation       |
| 11.0 Shipping           | Cold chain validated               | Existing                    |
| 12.0 Informatics        | Validated LIMS/BioBank             | Existing + upgrade          |

---

## Appendix B: Related Documents

- [Suite 4: Data Platform](suite_4_data_platform.md) - TRE integration architecture; hosts data infrastructure originally proposed in B-PREPARED
- [B-PREPARED Biorepository Summary](../background/CBRF2_2023_00132_UAlberta_Biorepository_Summary_REV.md) - Source specifications for equipment, space, and renovations
- [B-PREPARED Data Infrastructure](../background/CBRF2_2023_00132_Data_Infrastructure_Summary.md) - Data systems context (now integrated into Suite 4)

## Appendix C: B-PREPARED Source Documentation

Suite 2 physical infrastructure specifications are derived from the B-PREPARED (Integrated Biobanks for Pandemic PREPAREDness and biomanufacturing in Alberta) proposal:

**Application ID:** CBRF2-2023-00132

**Administering Organization:** University of Alberta

**Key Source Components:**

- Cold storage equipment specifications (Section 2.3)
- Processing equipment list (Section 2.3)
- Space renovation plans - LKS and Katz buildings (Section 9.3)
- Electrical distribution upgrade specifications (Section 9.3)
- Staffing and maintenance model (Section 10)
- Governance framework (Section 10.3)
- PRAIRIE Hub integration (Section 7.3)

**Architectural Documentation:** GEC Architecture floor plans (August 1, 2023) - see Section 9.3 for links

---

*Document Version: 1.0 \| December 2024 \| CFI Innovation Fund 2027*
