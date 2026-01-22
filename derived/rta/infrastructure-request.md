# Infrastructure Request Justification

The total infrastructure request is $7,069,000 CAD, organized into five suites aligned with the platform's integrated domains.

## Suite 1: Clinical Trials Participant & Procedure Infrastructure ($2,290,000)

This suite enhances an existing network of three clinical research units while establishing two specialized units.

**Existing Facility Upgrades:**

- Adult Clinical Investigation Unit (UAH MacKenzie Centre): POC laboratory ($200,000), IP pharmacy automation ($300,000), vital signs monitoring ($260,000), infusion pumps ($140,000), resuscitation equipment ($100,000), renovations ($200,000)
- Pediatric Clinical Investigation Unit (Stollery Children's Hospital): No equipment requested (existing infrastructure adequate)
- ADI Clinical Research Unit (Li Ka Shing Centre): Bariatric-capable clinical spaces with specialized exam tables ($22,260), hospital beds ($9,875), chairs ($4,061), weighing equipment ($4,895); temperature-monitored IP pharmacy storage ($21,255); vital signs monitoring ($18,270); ultrasound-guided phlebotomy for difficult vascular access ($7,618); 12-lead ECG for cardiac safety monitoring ($6,938); vascular access trainer ($6,036); specimen storage ($945); smart TVs for patient comfort ($12,390)

**New Specialized Units:**

- **Vaccine Challenge Trial Unit ($990,000):** Western Canada's first academic controlled human infection model (CHIM) facility supporting Dr. Michael Houghton's hepatitis C vaccine program and pandemic preparedness. Four negative-pressure isolation rooms with HEPA filtration ($80,000), continuous monitoring ($60,000), pathogen preparation area ($50,000), and major renovation for containment fit-out ($800,000).

- **Autonomic Function Laboratory ($261,000):** Research-grade tilt table ($35,000), continuous beat-to-beat BP monitoring (Finapres NOVA, $45,000), QSART system for sudomotor testing ($40,000), autonomic analysis workstation ($15,000), research ECG/HRV monitor ($25,000), Valsalva apparatus ($3,000), respiratory monitor ($8,000), end-tidal CO2 monitor ($12,000), transcranial Doppler ($45,000), cerebral oximetry ($25,000), and pediatric adaptations ($8,000).

- **Pediatric Rare Disease Unit ($170,000):** Long-term monitoring stations ($40,000), telehealth/remote monitoring ($30,000), and Connect Care data integration ($30,000) for gene therapy trials requiring 15+ year follow-up. Connects to RareKids-CAN network and WCHRI Translational Genomics Hub.

## Suite 2: Living Biorepository ($2,510,000)

This suite establishes the Living Biorepository—transforming biospecimen management from static storage into an intelligent, continuously-updated discovery engine with real-time EMR linkage enabling automated outcome annotation.

**Sample Processing & Storage ($1,450,000):**
- Automated liquid handling system (Hamilton/Tecan, $650,000) for high-throughput sample aliquoting
- 10 ULT freezers (-80°C Thermo Fisher TSX Series, $200,000)
- 4 LN2 vapour-phase tanks (Chart MVE High Efficiency, $200,000)
- 6 Class II biosafety cabinets ($90,000)
- 4 refrigerated centrifuges (Beckman Coulter Avanti, $100,000)
- Environmental monitoring system (Rees Scientific/Vaisala, $140,000)
- Clinical-grade microscopes and counters ($70,000)

**BioBank LIMS Platform ($335,000):**
- OpenSpecimen basic support license (5-year, 21 CFR Part 11 compliant, $60,000)
- Plugin development and data migration ($135,000)
- Connect Care FHIR integration ($45,000)
- Dynamic consent module ($60,000)
- Staff training ($35,000)

**Capacity Expansion ($725,000):** Additional freezers, storage, and automation reallocated from Suite 4 SDRE consolidation.

*Note: Cell therapy manufacturing capabilities are provided through existing ACTM infrastructure and are not included in this request.*

## Suite 3: Translational Science Integration Hub ($555,000)

This suite provides the trial-to-facility interface layer connecting clinical trials with UAlberta's omics and imaging infrastructure through partnerships rather than duplication.

**PAMRC Imaging Integration ($250,000):**
- 10Gbps fiber network link to TRE Zone 2 ($25,000)
- NVMe storage node with LORIS research data platform ($75,000)
- Orthanc open-source research PACS ($50,000)
- LORIS deployment for longitudinal imaging-trial tracking ($60,000)
- PACS/LORIS-TRE integration and DICOM-to-OMOP mapping ($40,000)

**Cold-Chain & Quality Systems ($200,000):**
- Cold-chain logistics equipment (Credo Cubes, data loggers) for sample transport standardization

**AI/ML Development Infrastructure ($75,000):**
- CRAIDL AI development stations (2x PAMRC, 4x Kipnes Institute) for local agent development and prototyping before SDRE scale-up

**Collaboration Infrastructure ($30,000):**
- Video conferencing system for CRAIDL conference room enabling patient participation and real-time translation

## Suite 4: Data Platform, Secure Environments, AI/HPC ($1,338,000)

This suite builds the unified data architecture connecting trial data to the TRE and CRAIDL agents. CTAP leverages ~$1.35M in prior institutional AWS investment (TRE architecture, AI Scribe credits, ProServe consulting) and UAlberta's substantial existing SDRE/Amii HPC infrastructure rather than duplicating it.

**Clinical Trials Platform ($1,058,000):**
- EDC/eSource platform (21 CFR Part 11 compliant, 3-year contract, $160,000)
- Clinical trial data platform licenses ($120,000)
- AWS TRE infrastructure and reserved compute/storage ($458,000)
- AWS Bedrock reserved AI capacity for health data compliance ($150,000)
- AWS Pro-Serve TRE architecture consulting ($150,000)
- Networking and security core with zero-trust architecture ($180,000)

**SDRE & AHS Integration ($200,000):**
- SDRE integration and access allocation ($100,000)
- AHS Snowflake research instance integration ($75,000)
- BioBank/OpenSpecimen-TRE integration ($75,000)

**Per-Trial Cost Framework:** Based on AWS guidance, CTAP models cloud costs per-trial: genomics trials (~$24,000/year, compute-dominant), imaging trials (~$20,000/year, balanced), and standard clinical trials (~$8,000/year, operational). This activity-based model ties infrastructure spending directly to research output.

## Suite 5: Trial Innovation Tools & Wearables ($376,000)

Suite 5 transforms how clinical trials reach participants—enabling CTAP's target of 20% rural/remote and 15% Indigenous participation through decentralized and hybrid trial infrastructure.

**Remote Monitoring & Data Capture ($201,000):**
- Telehealth kits and wearable sensors for 20 rural/Indigenous sites ($101,000)
- Mobile data capture kiosks/tablets ($100,000)

**Device Validation Infrastructure ($175,000):**
- Device data integration APIs for wearables and novel sensors ($75,000)
- Validation protocol library ($25,000)
- Sensor development equipment and reference device pool ($75,000)

*Note: This suite is explicitly designed for operational realities beyond urban academic centres, with store-and-forward data synchronization enabling trial participation from northern communities where reliable real-time connectivity does not exist.*
