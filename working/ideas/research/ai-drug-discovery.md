This is a pivotal addition. The University of Alberta is uniquely positioned to lead this "AI-First" approach because it hosts a convergence of three national powerhouses: **Amii** (AI), **GlycoNet** (Glycomics), and  **The Metabolomics Innovation Centre (TMIC)** .

Below is a deep review of U of A’s specific expertise in these areas, followed by the "Infrastructure & Equipment" module you requested, tailored to fill the gaps between these existing giants.

### **1. Deep Research: U of A’s Existing "AI Drug Discovery" Ecosystem**

*Your proposal should argue that you are not building from scratch, but rather "activating" the connections between these siloed world-class assets.*

#### **A. The "Digital Twin" & Systems Pharmacology Engine**

* **The Asset:** **Applied Pharmaceutical Innovation (API).**
* **Relevance:** API (based at U of A) already operates a **Quantitative Systems Pharmacology (QSP)** division.^1^ **They use mathematical modeling to predict how drugs interact with biological systems before human trials.**^2^
  **+1**
* **Proposal Integration:** You do not need to propose building a "Digital Twin" team from zero. Instead, propose a **"Clinical-QSP Loop."**
  * *Concept:* Feed real-time clinical data from **Connect Care** back into API’s QSP models to refine them. This creates a "Living Digital Twin" that gets smarter with every patient treated in Alberta.

#### **B. Synthetic Discovery (The "Billion Molecule" Scale)**

* **The Asset:****48Hour Discovery** (U of A Spinoff, founded by Dr.^3^ **Ratmir Derda).**^4^
  **+1**
* **Relevance:** They use **Phage Display** (synthetic biology) to screen *billions* of genetically encoded peptides in days.^5^ They essentially use "Synthetic Cells" (phages) to find drug leads.
* **Proposal Integration:** Cite this as the "Discovery Engine." Your infrastructure will link their massive "hit" data with patient genomic data to understand *why* certain molecules work for certain genetic profiles.

#### **C. The "Omics" Pillars (Glycomics & Metabolomics)**

* **The Assets:**
  * **GlycoNet:** U of A hosts this national network. Glycans (sugars on cells) are often the "docking ports" for drugs and viruses.
  * **TMIC (The Metabolomics Innovation Centre):** Led by Dr. David Wishart at U of A. This is likely the best metabolomics facility in Canada.
* **The Gap:** While these centers exist, their data is often disconnected from the  **clinical record (Connect Care)** . Your infrastructure grant is the "bridge" that links a patient's glycan profile in GlycoNet to their MRI in PACS.

---

### **2. Infrastructure & Equipment Requirements**

*To facilitate "Synthetic Cell" modeling and "Single-Cell Omics" that integrates with the above ecosystem, you need specific "Bridging Infrastructure."*

#### **A. The "Single-Cell" Hardware Stack (Biomarker Discovery)**

*This equipment is needed to understand patient response at a cellular resolution.*

| **Equipment Name**                        | **Purpose in Your Proposal**                                                                                                                                                                      | **Integration with U of A Ecosystem**                                                                                                     |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| **10x Genomics Xenium**(In Situ Analyzer) | **Spatial Transcriptomics.**It maps RNA expression*without*destroying the tissue structure. You can see*exactly*which immune cells are attacking the tumor and which are excluded.                  | **Radiomics Link:**Use this to validate the "Virtual Biopsy." If the AI says "active tumor," the Xenium confirms it at the molecular level.     |
| **IsoPlexis IsoLight**                    | **Functional Proteomics.**Unlike standard sequencing, this measures what cells*do*(secreting cytokines), not just what they *are* . It defines the "functional state" of a patient's immune system. | **Patient Response:**Predicts "Cytokine Storms" or immunotherapy failure before they happen.                                                    |
| **Berkeley Lights (now PhenomeX) Beacon** | **Optofluidic Cell Selection.**It uses light to move individual cells into "pens" to watch how they react to a drug in real-time.                                                                       | **Synthetic Cell:**This is the ultimate tool for testing "Synthetic Cells" or patient-derived cells against thousands of drug variants rapidly. |

#### **B. The "Digital Twin" Compute Infrastructure**

*Standard clusters aren't enough for QSP and Multi-Modal AI. You need high-memory interconnects.*

* **Hardware:** **NVIDIA H100 Tensor Core GPUs** (or equivalent DGX cluster).
* **Why:** You are training models on *graphs* (molecular structures) and *volumes* (3D MRIs) simultaneously. This requires massive memory bandwidth.
* **Software Layer:** **NVIDIA BioNeMo.** This is a generative AI framework specifically for drug discovery. It allows you to "generate" new molecular structures that fit a specific protein pocket found in your patient data.

---

### **3. Strategic "Look For": The Integration Diagram**

*When writing the "Approach" section, visualize the flow of data.*

* **Left Side (Patient Input):** Connect Care Data + Medical Imaging + Biobank Samples.
* **Center (The "Omics" Engines):**
  * Samples **$\rightarrow$** **TMIC** (Metabolomics)
  * Samples **$\rightarrow$** **GlycoNet** (Glycomics)
  * Samples **$\rightarrow$** **Single Cell Core** (The new Xenium/IsoLight equipment).
* **Right Side (The AI Brain - Amii/API):**
  * Data flows into the **"Patient Digital Twin."**
  * **AI predicts response.**^6^
  * **Output:** "Virtual Trial" simulation results.

### **4. Draft Text for the Proposal (Innovation Section)**

> "While the University of Alberta hosts world-leading nodes in AI (Amii), Metabolomics (TMIC), and Glycomics (GlycoNet), these assets currently operate as parallel lines. **This infrastructure proposal creates the 'Cross-Bar Switch'.**
>
> By integrating **Single-Cell Spatial Analysis** (via new Xenium/Beacon infrastructure) with **Quantitative Systems Pharmacology** models (via API), we will move beyond static biomarkers. We will generate 'Dynamic Patient Digital Twins'—computational avatars that simulate a patient's metabolic and immune response to therapy *in silico* before a single dose is administered. This closes the loop between 'Discovery' (48Hour Discovery) and 'Delivery' (Connect Care), creating a self-learning provincial health system."

### **Next Step**

Would you like me to create the **Budget Justification Table** for the specific equipment listed above (Xenium, IsoLight, DGX Cluster), including estimated costs and "Scientific Necessity" arguments to satisfy the grant reviewers?
