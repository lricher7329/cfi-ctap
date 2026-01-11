This review outlines a strategic approach to integrating Equity, Diversity, and Inclusion (EDI) into a Canada Foundation for Innovation (CFI) Innovation Fund proposal.

For the CFI Innovation Fund, EDI is no longer a supplementary "box-checking" exercise; it is a weighted criterion. The proposal must demonstrate how the **infrastructure itself** (the Trusted Research Environment - TRE) will help overcome systemic barriers in research, rather than just reinforcing existing hierarchies.

Based on the UofA guides and the specific nature of your AWS/VITAL/MANTA architecture, here is a structured EDI strategy for the grant.

---

### 1. EDI in Team Composition: Moving Beyond Representation

*Context: The "Team" includes the Principal Investigators (PIs), the technical staff managing the AWS environment, and the Highly Qualified Personnel (HQP) / students.*

**The CFI Requirement:** You must identify systemic barriers in your specific field (Health Informatics/AI) and propose concrete mitigation strategies.

* **The Problem (Systemic Barrier):** Health data science and cloud computing (AWS) are fields historically dominated by men and non-minority groups. Recruitment often relies on "network hire" bias.
* **The Proposed Solution:**
  * **Recruitment:** Commit to using the UofA’s *Equitable Recruitment and Selection* checklists (referenced in your links) for all grant-funded technical roles (e.g., Cloud Architects, Data Stewards).
  * **Training Environment:** The grant will fund "Psychological Safety" training for the lab. In a high-stakes environment dealing with sensitive health data, team members must feel safe reporting errors or security concerns without fear of disproportionate blame, which often affects marginalized groups more heavily.
  * **Meaningful Mentorship:** Establish a mentorship structure where senior researchers don't just "supervise" but actively champion HQP from underrepresented groups, specifically connecting them to the VITAL national network for career growth.

### 2. Equitable Access to Infrastructure: "Democratizing Data"

*Context: This is the most critical section for an Infrastructure Grant. Who gets to use this powerful AWS TRE?*

**The Argument:** A major barrier in health research is that only well-funded, highly technical teams can afford secure computing environments and data access fees. This excludes early-career researchers, community-based researchers, and those from smaller institutions.

**Your Strategy:**

* **Low-Code/No-Code Access:** Highlight that the TRE leverages  **Amazon Bedrock and SageMaker** . These tools can lower the technical barrier to entry. You can argue that this infrastructure allows clinical researchers (who may lack deep coding skills but have diverse lived experience) to query data using natural language, broadening the pool of potential researchers.
* **The "Resource Bank":** Propose that a percentage of the compute cycles or storage funded by the CFI grant be reserved for "Equity Priority Projects"—studies specifically focused on marginalized populations or led by underrepresented researchers who lack matching funds.
* **Remote Accessibility:** The cloud nature of the AWS TRE allows researchers in rural Alberta or Northern communities to access the data without physically being at the UofA or UofC, flattening the geography-based hierarchy of research.

### 3. Research Principles: Patient-Oriented Research (POR) & Data Justice

*Context: Connecting the technical architecture to the patient experience.*

A. Avoiding "Algorithmic Bias" (The Technical Argument)

Since the TRE focuses on unstructured text and AI, you must address the risk of bias.

* *The Risk:* AI models trained on standard datasets often underperform for women and racialized groups (e.g., dermatology AI failing on darker skin; NLP models misinterpreting AAVE or Indigenous dialects in clinical notes).
* *The Infrastructure Fix:* The proposal will state that the AWS TRE will host specific "Audit Toolkits." Before any model is deployed (like the Chartwatch mortality predictor), it must be tested within the TRE for performance disparities across demographic groups. **The infrastructure enables the ethical validation of the science.**

**B. Patient Partners as Governance Members**

* In line with UofA’s Clinical Trials Office (CTO) guidance, Patient Partners should not just be "subjects."
* **Governance:** Include a Patient Partner on the  **Data Access Committee (DAC)** . This person helps decide *what* research questions are worth asking of the data.
* **Compensation:** Explicitly budget for the compensation of Patient Partners, recognizing their time and expertise as equal to academic consultants.

### 4. Indigenous Data Sovereignty (OCAP®)

*Context: In Canada, specifically Western Canada, no health data proposal is complete without addressing Indigenous Data Sovereignty.*

The AWS TRE architecture is uniquely suited to support the **OCAP® principles** (Ownership, Control, Access, Possession) asserted by First Nations.

* **The Argument:** Standard "Data Lakes" often mix all data together.
* **The Technical Solution:** You can leverage the **IAM (Identity and Access Management)** roles detailed in your AWS_TRE.pdf to create a specific "Indigenous Data Steward" role.
  * Data identified as Indigenous can be tagged and segregated.
  * Access to this subset of data can be programmatically locked, requiring specific digital approval from an Indigenous governing body *before* the AWS service role allows a researcher to see it.
  * This transforms the infrastructure from a "passive storage bucket" into an "active enforcer of Indigenous rights."

### 5. Summary Table for the Grant Proposal

| **CFI Section**       | **Key EDI Principle**             | **Concrete Grant Action**                                                                                                   |
| --------------------------- | --------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| **Team**              | Diverse Perspectives improve Innovation | Implementation of "Rooney Rule" equivalent for interviewing technical staff; Budget for EDI training.                             |
| **Infrastructure**    | Equitable Access                        | Allocating reserved compute resources for underfunded/community researchers; Leveraging Low-Code AI to reduce technical barriers. |
| **Methodology**       | Patient-Oriented Research (POR)         | Mandating "Algorithmic Bias Audits" for all AI models developed in the TRE; Patient Partners on the Data Governance Committee.    |
| **Policy/Governance** | Indigenous Sovereignty                  | Using AWS IAM policies to technically enforce OCAP®; requiring specific consent for Indigenous data usage.                       |

### Conclusion for the Proposal

*"We are not just building a server farm; we are building a socio-technical system. By embedding EDI principles directly into the code (via IAM roles and bias auditing) and the governance (via Patient Partners), the Alberta VITAL node will ensure that the benefits of AI in healthcare are shared equitably across all populations, particularly those historically harmed or excluded by medical research."*
