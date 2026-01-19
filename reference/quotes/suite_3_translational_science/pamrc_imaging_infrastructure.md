# PAMRC Imaging Infrastructure - Quote Reference

## Budget Items (IDs 85-90)

| ID | Component | Amount | Category |
|----|-----------|--------|----------|
| 85 | PAMRC Network Link (10Gbps Fiber to TRE Zone 2) | $25,000 | equipment |
| 86 | PAMRC Storage Node (NVMe Cache + LORIS DB) | $75,000 | equipment |
| 87 | Research PACS Server (Orthanc + Hardware) | $50,000 | software |
| 88 | LORIS Research Data Platform (Server + Deployment) | $60,000 | software |
| 89 | Radiomic Analysis Workstations (2×) | $20,000 | equipment |
| 90 | PACS/LORIS-TRE Integration & DICOM-OMOP Mapping | $40,000 | service |
| **Total** | | **$270,000** | |

---

## Open-Source PACS: Orthanc

**Selection Rationale:**

Per PMC10584756 analysis of open-source PACS options:

| System | Language | License | Strengths |
|--------|----------|---------|-----------|
| **Orthanc** ✓ | C++ | GPLv3 | Best documentation ("Orthanc book"), lightweight VNA, extensive plugin ecosystem |
| DCM4CHE | Java | MPL/GPL/LGPL | Highest community activity (416 forks), enterprise features |
| DCMTK | C/C++ | BSD | Cross-platform, business-friendly licensing |
| Dicoogle | Java | Open | Learning-oriented, good for research/education |

**Why Orthanc:**
- Excellent documentation via the "Orthanc Book"
- Lightweight footprint suitable for research environment
- Extensive REST API for integration with LORIS and TRE
- Active plugin ecosystem (de-identification, web viewer, PostgreSQL)
- GPLv3 license aligns with academic open-source philosophy

**Resources:**
- Main site: https://www.orthanc-server.com/
- Documentation: https://orthanc.uclouvain.be/book/
- Source: https://github.com/jodogne/Orthanc

**Hardware Requirements:**
- Commodity x86-64 server
- Recommended: 32GB RAM, 4+ cores
- Storage: Scales with DICOM volume (separate from storage node)

**Estimated Cost Breakdown:**
- Server hardware: $30,000
- Configuration & deployment: $20,000
- **Total: $50,000**

---

## Research Data Platform: LORIS

**Montreal Neurological Institute Model:**

LORIS (Longitudinal Online Research and Imaging System) is the MNI's open-source research data management platform, currently operational across 150+ research sites managing 40TB+ of data.

**Capabilities:**
- Longitudinal study tracking
- Imaging QC workflows
- Multi-modal data integration (imaging + clinical + biospecimen)
- De-identification via PBKDF2/SHA1 hashing
- RESTful APIs for data access
- Quality control modules
- Data querying and export

**Technical Requirements:**
- **Operating System:** Linux (Ubuntu 20.04+ LTS or CentOS 7+)
- **Web Server:** Apache 2.4+
- **Database:** MySQL 8.0+
- **PHP:** 8.0+
- **Memory:** 16GB+ RAM recommended
- **Storage:** Depends on study size; requires MySQL storage + file storage

**Resources:**
- GitHub: https://github.com/aces/Loris
- Documentation: https://github.com/aces/Loris/wiki
- MNI site: https://loris.ca/

**Estimated Cost Breakdown:**
- Server hardware: $35,000
- Implementation & deployment: $25,000
- **Total: $60,000**

---

## Storage Node

**Purpose:**
- NVMe cache for DICOM and k-space files (high-speed staging for analysis)
- MySQL database hosting for LORIS
- Local repository for imaging studies before TRE archival

**Specifications:**
- NVMe storage array: 50TB usable capacity
- RAID configuration for redundancy
- Network: 10Gbps to Orthanc, LORIS, workstations
- Backup integration with institutional systems

**Estimated Cost: $75,000**

---

## Network Link

**10Gbps Fiber Connection:**
- Dedicated link from PAMRC to TRE Zone 2
- Enables high-bandwidth DICOM/k-space transfer
- Supports real-time radiomic analysis workflows
- Integration with CyberaNet backbone

**Estimated Cost: $25,000**

---

## Radiomic Analysis Workstations (2×)

**Specifications:**
- Commodity GPU-enabled workstations suitable for radiomic analysis

**Configuration:**
- CPU: Multi-core processor
- RAM: 32-64GB
- GPU: NVIDIA RTX-class GPU for AI/radiomics
- Storage: NVMe + HDD
- Network: 10Gbps

**Use Cases:**
- Radiomic feature extraction (PyRadiomics, ITK)
- Image segmentation (3D Slicer, ITK-SNAP)
- Multi-modal fusion analysis

**Estimated Cost:**
- 2 × $10,000 = $20,000

---

## PACS/LORIS-TRE Integration

**Scope:**
- DICOM metadata mapping to OMOP CDM
- LORIS REST API integration with Suite 4 TRE
- Bidirectional data flow configuration
- Connect Care linkage for patient-imaging correlation
- ETL pipeline development

**Deliverables:**
- DICOM-to-OMOP ETL scripts
- LORIS-TRE API connectors
- Data governance documentation
- Integration testing and validation

**Estimated Cost: $40,000** (one-time professional services)

---

## References

1. PMC10584756 - Open-source PACS comparison study
2. LORIS GitHub: https://github.com/aces/Loris
3. Orthanc Book: https://orthanc.uclouvain.be/book/
4. MNI neuroimaging infrastructure model
