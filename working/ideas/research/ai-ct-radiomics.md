This review and research synthesis is tailored for integration into your infrastructure grant proposal. It focuses on the gap you identified:  **the role of AI and medical imaging (radiomics) in accelerating clinical trials** , specifically within the Alberta context (Connect Care, provincial biobanking).

### **Executive Summary for Proposal Integration**

To close the loop on an "AI-first" clinical trial infrastructure, your proposal must position **Medical Imaging AI** not just as a diagnostic tool, but as a  **high-throughput data capture engine** . By integrating Dr. Amber Simpson’s expertise in "computational biomarkers" with the provincial clinical information system (Connect Care/Epic), your infrastructure can unlock a new class of trial acceleration tools:  **automated eligibility screening via imaging** ,  **radiomic surrogate endpoints** , and  **virtual biopsies** .

---

### **1. Key Expert Profile: Dr. Amber Simpson**

*Use this section to substantiate the "Team/Leadership" or "Expertise" section of your grant.*

* **Role & Affiliation:** Canada Research Chair in Biomedical Computing and Informatics; designated expert joining the University of Alberta (U of A) and collaborating with the Canadian Cancer Trials Group (CCTG).
* **Relevance to Proposal:** Dr. Simpson is a world leader in **Radiomics** and **"Rawdiomics"** (extracting data from raw sensor data rather than reconstructed images). Her work directly addresses the "missing link" in your proposal: converting standard-of-care medical images into mineable, quantitative data.
* **Specific Capabilities for the Grant:**
  * **Phenotyping for Trials:** She specializes in developing computational biomarkers that predict **treatment response** (e.g., predicting liver metastasis recurrence). This expertise allows your infrastructure to stratify patients *before* enrollment, ensuring trials are populated with "likely responders" (enrichment design).
  * **Federated Learning:** Dr. Simpson has experience with distributed data networks, which is crucial for utilizing provincial data (Connect Care) without compromising patient privacy or moving massive imaging datasets unnecessarily.

---

### **2. Deep Research: AI & Imaging to Accelerate Clinical Trials**

*This section provides the evidence base for your "Methodology" or "Infrastructure Development" modules.*

#### **A. Accelerating Patient Identification & Eligibility (The "Funnel" Problem)**

* **Current Bottleneck:** Trial coordinators manually scan radiology reports to find patients with specific tumor sizes or characteristics (e.g., "RECIST measurable disease").
* **AI Solution:** **Automated Imaging Phenotyping.** Your infrastructure can deploy AI algorithms within the Connect Care environment to automatically scan PACS (Picture Archiving and Communication System) data.
  * **Mechanism:** Algorithms automatically segment tumors and calculate volumetric data in real-time.
  * **Grant Language:** *"We will implement an automated 'Imaging Prescreening' pipeline. Instead of passive recruitment, AI agents will flag patients within the Provincial Clinical Information System (Connect Care) whose imaging biomarkers match trial inclusion criteria (e.g., specific tumor texture or volume), instantly alerting trial navigators."*

#### **B. Radiomics as "Virtual Biopsies" (Data Capture)**

* **The Opportunity:** You mentioned a strong focus on biological samples. Radiomics bridges the gap when tissue is inaccessible.
* **Integration Point:** By linking your **Centralized Biobank** with  **Imaging Data** , you create a **Radiogenomic** dataset.
  * **Mechanism:** AI correlates invisible imaging features (texture, entropy, wavelet frequencies) with genomic data from the biobank.
  * **Benefit:** This allows the infrastructure to validiate "virtual biopsies"—using non-invasive imaging to infer molecular status (e.g., EGFR mutation status in lung cancer) for trial eligibility, reducing the need for repeat invasive tissue biopsies and speeding up enrollment.

#### **C. Surrogate Endpoints & "Rawdiomics"**

* **Current Bottleneck:** Trials often wait months for "Overall Survival" or macroscopic "Progression-Free Survival" data.
* **AI Solution:** Radiomic changes often precede visible tumor shrinkage.
  * **Grant Language:** *"Our infrastructure will support the development of 'Radiomic Delta' endpoints. By analyzing raw sensor data (CT sinograms/k-space data) rather than processed images, we can detect subtle therapeutic responses weeks earlier than standard RECIST measurements, allowing for 'Go/No-Go' decisions in adaptive trial designs."*

---

### **3. Infrastructure Integration Strategy (The Alberta Context)**

*Specific technical language to connect your AI goals with existing provincial assets.*

| **Component**                          | **Integration Strategy for Proposal**                                                                                                                                                                                                                                                                                                      |
| -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Provincial CIS (Connect Care/Epic)** | **"In-Workflow AI:"**Do not propose a separate silo. Propose deploying AI models directly into the clinical workflow using Epic’s*Nebula*or*Cognitive Computing*frameworks (or local equivalent). The goal is for the AI to "read" the image immediately after acquisition at AHS sites and populate the "Research" tab in Connect Care.    |
| **Biobanking**                         | **"Paired Asset Collection:"**The infrastructure must mandate that every biobanked sample is effectively "twinned" with its corresponding raw imaging data (DICOM + Raw). Dr. Simpson’s "Rawdiomics" approach requires the raw data often discarded by standard PACS; your grant can fund the storage layer for this "pre-reconstruction" data. |
| **Data Capture**                       | **"Automated Form Filling:"**Use AI to pre-populate Case Report Forms (CRFs). Instead of a human measuring a lesion on a screen and typing "2.4cm" into a database (e.g., REDCap), the AI pushes the measurement directly from the image to the trial database.                                                                                  |

### **4. Grant Text Snippets (Drafting Assistance)**

**For the "Innovation" Section:**

> "While standard clinical trials rely on 'human-visible' imaging features (size, location), our infrastructure adopts a 'Deep Phenotyping' approach. Leveraging the expertise of Dr. Amber Simpson, we will implement a radiomics pipeline that extracts thousands of quantitative features from standard-of-care images acquired across the province. This transforms medical imaging from a static display of anatomy into a dynamic, high-dimensional data stream, capable of predicting trial eligibility and therapeutic response with precision far exceeding human interpretation."

**For the "Feasibility/Environment" Section:**

> "Uniquely, this infrastructure leverages the single-source truth of Alberta’s province-wide clinical information system (Connect Care). By embedding imaging AI algorithms directly adjacent to clinical workflows, we eliminate the 'data silo' problem that plagues multi-center trials. We will create a closed-loop system where biobanked samples are automatically linked to their radiomic profiles, creating a turnkey 'Radiogenomic Atlas' for rapid hypothesis testing and trial design."

### **5. Strategic "Look For" (Gap Analysis)**

* **Standardization:** Radiomics is highly sensitive to how the image was taken (scanner brand, contrast timing). **Grant Tip:** Specifically mention that your infrastructure will include an **"AI Calibration Phantom" program** or software-based **"Harmonization"** (like ComBat normalization) to ensure images from a rural hospital in Alberta are mathematically comparable to those from the U of A Hospital. This is a common critique of imaging AI grants that you can preempt.

### **Next Step**

Would you like me to draft a specific **"Specific Aims"** page for this grant proposal that incorporates these three pillars (Connect Care, Biobanking, and Simpson-led Radiomics)?
