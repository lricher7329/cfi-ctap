<!-- Suite 2 shared description - used by RTA and suite 2 concept brief -->
<!-- Source of truth: rta/rta.md Section 6 -->

## Suite 2: Living Biorepository & Cell Manufacturing

**Budget: $5,837,911**

This suite establishes the **Living Biorepository**—a fundamental reconceptualization that transforms biospecimen management from static storage into an intelligent, continuously-updated discovery engine—while expanding ACTM and the future pluripotent stem cell core.

### Living Biorepository Capabilities

The Living Biorepository delivers four core capabilities that distinguish CTAP from traditional biobanks:

1. **Real-Time EMR Linkage** - Specimens remain continuously linked to participants' Connect Care records via FHIR API, updating as new clinical events occur

2. **Automated Outcome Annotation** - Trial samples are automatically annotated with long-term outcomes from provincial health records, enabling 5-10 year follow-up without participant re-contact

3. **Predictive Inventory Management** - AI predicts sample depletion, suggests optimal aliquoting strategies, and identifies underutilized specimens

4. **Consent-Aware Sample Routing** - Specimens flow automatically to approved studies based on consent scope; new uses trigger re-consent workflows via the participant engagement portal

### Active Biorepository Architecture

Unlike passive storage, the Living Biorepository operates bidirectionally—not just "Sample → Data" but also "Data → Sample." Suite 4's AI agents can trigger sample-level actions based on clinical events:

**Event-Driven Sample Retrieval:**
- **Safety Signal Response**: When Connect Care records a hospitalization for a trial participant, the Events Agent automatically generates a sample retrieval request, queuing the specimen for urgent toxicology or pharmacokinetic analysis within hours of the clinical event
- **Outcome-Triggered Analysis**: When a participant reaches a primary endpoint (treatment response, disease progression), the Protocol Agent notifies the biorepository to queue samples for post-hoc biomarker analysis
- **Adaptive Trial Support**: When interim analysis identifies a subgroup signal, CRAIDL generates targeted sample pull requests for validation testing—enabling biomarker hypothesis generation without delaying the trial

**Technical Implementation:**
- OpenSpecimen REST API enables programmatic sample queries and retrieval requests from CRAIDL agents
- FHIR Subscription service monitors Connect Care for trial-relevant events (hospitalizations, lab results, diagnoses)
- Workflow engine in Zone 2 coordinates TRE analytics with biorepository actions, maintaining full audit trails

This transforms the biorepository from a passive archive into a research-responsive system that accelerates discovery.

### Physical Infrastructure

* **Ultra-Low Temperature Storage** - -80°C freezers with racks and CO₂ backup (10 units)
* **Cryogenic Storage** - LN₂ vapour-phase storage tanks with 24/7 monitoring
* **Biosafety Infrastructure** - Class II biosafety cabinets and refrigerated centrifuges with biocontainment rotors
* **High-Throughput Processing** - Automated liquid handling system for high-throughput aliquoting
* **GMP Cell Manufacturing** - GMP bioreactors, cell washers, clinical-grade incubators (ACTM expansion)
* **Pluripotent Stem Cell Platform** - Automated culture platform for iPSC-derived cell products
* **Environmental Monitoring** - 24/7 facility control for GMP cleanrooms

**Security Advantage**: Centralized biorepository management addresses sample loss and diversion risks inherent in distributed storage models, with 24/7 monitoring, badge + biometric access control, and full chain-of-custody traceability. This architecture aligns with federal research security requirements (STRAC/NSGRP).

### Objectives Supported

- **Objective 3**: First-in-human cell therapy trials through GMP manufacturing
- **Objective 4**: Integrated biospecimen pipelines for 70%+ of trials, with EMR linkage
- **Objective 6**: National backbone for cell therapy via ACTM

### Proven Translational Pipeline: CAR-T Cell Therapy

The ACTM's cell therapy capability is not theoretical—it is already operational. Dr. Michael Chiu's CAR-T cell therapy program at the Cross Cancer Institute demonstrates the complete translational pathway: patient cells collected via leukapheresis are manufactured into therapeutic products at ACTM and administered back to patients. CTAP infrastructure will expand this proven model to support multiple cell and gene therapy trials, including MS cell therapies and regulatory T-cell programs.

### Partner Facilities

- Canadian BioSample Repository (CBSR)
- Alberta Cell Therapy Manufacturing (ACTM)
- Cross Cancer Institute (CAR-T cell therapy)
- PRAIRIE Hub (vaccine development)

### Integration with Data Platform (Suite 4)

- Consent status flows from TRE Zone 1 → BioBank for sample release decisions
- De-identified specimen metadata flows from BioBank → Zone 2 for linkage
- Linked clinical data flows from Zone 2 → BioBank as outcome annotations
- Aggregate specimen queries flow from OMOP (Zone 3) → researchers

### Sustainability

Fee-for-service biobanking ($35/sample processing, $5-15/year storage), cell manufacturing contracts, cross-trial reuse governance enabling secondary use revenue.
