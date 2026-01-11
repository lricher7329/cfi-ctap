### Review and Investment Case: Digital Trusted Research Environments (TRE) in Healthcare

Executive Summary

The integration of research with clinical care is the defining characteristic of a learning health system. By leveraging Digital Trusted Research Environments (TREs), health systems can transform raw data into life-saving insights. This review outlines a strategic roadmap for investment, grounding the case in the proven success of Ontario’s GEMINI project—which has demonstrably reduced hospital mortality—and the cutting-edge infrastructure currently being deployed in Alberta via the AWS TRE and the MANTA platform.

---

### 1. The Evidence Base: GEMINI and the Value of Scale

The strongest argument for investment lies in the tangible clinical outcomes achieved by the **GEMINI** project in Ontario. It serves as the proof-of-concept for the architecture proposed for Alberta.

* **Scale and Reach:** GEMINI has established a data-sharing network covering over **30 hospitals** and approximately  **70% of Ontario’s medical hospital beds** . This scale allows for "near real-time" use of data, moving beyond retrospective analysis to active clinical support.
* **Impact on Mortality (The "Chartwatch" Intervention):** The critical reference for the "reduced morbidity and mortality" claim is the deployment of  **Chartwatch** , an AI-based early warning system developed using GEMINI data at St. Michael’s Hospital. A study published in the *Canadian Medical Association Journal* (CMAJ) found that this tool led to a **26% reduction in unexpected deaths** among hospitalized patients. This provides a direct causal link between this data architecture and saved lives.
* **Standardization:** GEMINI harmonizes data across disparate hospital systems, creating a standard that enables comparative analytics and quality improvement across the province.

### 2. The Alberta Architecture: AWS TRE and MANTA

Alberta is uniquely positioned to advance this model by addressing a critical gap:  **unstructured data** . While GEMINI largely utilizes structured clinical data (labs, vitals), the Alberta architecture focuses on the rich narratives found in clinical notes.

#### A. The AWS Trusted Research Environment (TRE)

Based on the provided documentation, the AWS TRE architecture in Alberta is designed specifically to bridge the gap between **Alberta Health Services (AHS)** data governance and **University of Alberta (UofA)** research capabilities.

* **Secure Ingestion & Anonymization:**
  * Data flows from AHS to a dedicated **Ingestion Account** where it is isolated.
  * A "Service Role" (machine, not human) enables anonymization using a UofA-owned model running within a secure VPC.
  * This ensures that **only anonymized data** reaches the research environment, satisfying strict privacy constraints while unlocking data utility.
* **Next-Generation AI Capabilities:**
  * Unlike traditional SQL-based databases, this environment is built for Generative AI. It explicitly incorporates **Amazon Bedrock** and  **SageMaker AI** .
  * This infrastructure is critical for processing  **unstructured text** —medical notes, discharge summaries, and pathology reports—which contain the nuance often lost in structured codes.
* **Role-Based Access:**
  * The system uses strict IAM (Identity and Access Management) roles (e.g., "Research Practitioner," "AHS Data Administrator") to ensure researchers can access tools without compromising the underlying raw data.

#### B. The MANTA Platform (University of Calgary)

Complementing the AWS TRE is the **MANTA** platform, developed under the Libin Cardiovascular Institute’s Precision Medicine Initiative.

* **Purpose:** MANTA focuses on  **harmonization and governance** , acting as a bridge to integrate diverse data sources (e.g., patient-reported measures, electronic health records) into a "super" database.
* **Precision Medicine:** It enables the linking of biological/genomic data with clinical outcomes, facilitating the move toward personalized care plans rather than population averages.

#### C. The Role of Snowflake

To operationalize these environments, **Snowflake** is being utilized as the "Data Cloud" layer. Its architecture is vital for this ecosystem because:

* **Breaking Silos:** It allows for data sharing across different cloud regions and organizations (interoperability) without moving the actual data, preserving security governance.
* **Scalability:** It separates compute from storage, allowing the system to handle the massive datasets required for training AI models without performance bottlenecks.

---

### 3. The Future State: Project VITAL

The convergence of these projects is  **VITAL** , a pan-Canadian collaboration involving Alberta, Ontario, and Quebec.

* **Goal:** To establish a  **Canada-wide, near real-time health data system** .
* **Synergy:** VITAL leverages GEMINI’s proven data models and expands them using the infrastructure being built in Alberta and Quebec.
* **Strategic Importance:** Participation in VITAL ensures Alberta’s health data is not siloed but is part of a national federated learning network, increasing the sample size for rare diseases and improving the generalizability of AI models.

### 4. The Investment Case

Investing in this architecture is not merely an IT upgrade; it is a clinical imperative. The case for investment rests on three pillars:

1. **Proven ROI in Patient Safety:** The GEMINI/Chartwatch example (26% mortality reduction) proves that when researchers have near real-time access to hospital data, they can build tools that save lives. Alberta’s AWS TRE is the prerequisite infrastructure to deploy similar tools here.
2. **Unlocking the "Unstructured" Gold Mine:** 80% of healthcare data is unstructured. The current AWS TRE’s integration with **Bedrock and SageMaker** gives Alberta a competitive advantage in Natural Language Processing (NLP), allowing researchers to mine insights from clinical notes that structured databases (like standard EMRs) miss.
3. **National Interoperability:** By aligning with VITAL and using industry-standard tools like Snowflake and AWS, Alberta ensures it is a leader in the national health data fabric, attracting top-tier research talent and federal funding opportunities.

Conclusion:

The architecture represented by the AWS TRE, MANTA, and the VITAL partnership creates a closed-loop system: Data flows from care to research, generates AI-driven insights, and flows back to care to improve outcomes. Continued investment is essential to transition this from a pilot environment to the standard of care for all Albertans.
