<!-- Suite 5 shared description - used by RTA and suite 5 concept brief -->
<!-- Source of truth: rta/rta.md Section 6 -->

## Suite 5: Trial Innovation Tools & Wearables

**Budget: $376,000**

This suite enables decentralized, embedded, and pragmatic trials—especially for Precision Population Health and Indigenous streams—with modern eConsent, digital recruitment, telehealth, and wearable-based monitoring.

### Key Components

* **Enterprise eConsent Platform** - Digital recruitment platform with patient portal that CRAIDL's Ethics Agent will interface with for consent form generation; integrated with AI Scribe for voice-first consent documentation and audit trail generation

* **Mobile Devices and Kiosks** - 80 devices for consent and data capture in clinics, enabling remote enrollment and participant tracking

* **Wearable Monitoring Devices** - 250 units including ECG patches, blood pressure monitors, and actigraphy devices for decentralized trial endpoints

* **Remote Telehealth Kits** - 20 kits for rural and Indigenous sites enabling remote participation without travel to Edmonton; AI Scribe integration enables automatic documentation of telehealth trial visits with Alberta-only data residency. Designed for infrastructure realism: store-and-forward data sync during connectivity windows, durable hardware, and voice-first documentation that reduces workload. Previous REDCap deployments in northern settings failed because of connectivity constraints and workflows that increased burden—CTAP prioritizes reliability over feature richness.

* **Data Visualization Dashboards** - Trial oversight dashboards integrating with CRAIDL's Data Management Agent outputs for real-time monitoring

* **Digital Health Device Validation Program** - Clinical validation infrastructure ensuring that novel sensors and digital therapeutics produce data streams compatible with CRAIDL's analytical requirements. Validated devices enter Suite 4's device registry, enabling AI agents to incorporate their outputs into trial monitoring workflows. The program operates in partnership with iSMART (only GLP-compliant facility in Western Canada) and the Digital Health Unit. Active pipeline includes Light/Baghelani microwave glucose sensor (→ Events Agent blood glucose monitoring), Gupta diabetic wound sensors (→ automated healing trajectory analysis), Mushahwar Smart-e-Pants (→ mobility endpoint digitization), and HiMARC 3MDR VR therapy (→ PTSD symptom tracking). Each validated device becomes a CRAIDL training data source.

### Objectives Supported

- **Objective 2**: Indigenous (15%) and rural (20%) recruitment targets
- **Objective 5**: AI-enabled consent generation and recruitment
- **Objective 7**: Training HQP in decentralized trial methods

### Target Populations

- Indigenous communities (culturally safe, remote-accessible)
- Rural Alberta (telehealth-enabled participation)
- Pediatric populations (family-friendly consent)
- Cardio-renal-metabolic disease (continuous wearable monitoring)

### Decentralized Trial Model

```
Traditional:  Patient → Travel → Clinic → Assessment → Data Entry

CTAP:        Patient → eConsent → Wearable Data → Telehealth → Connect Care Integration
```

This infrastructure reduces participant burden, enables broader geographic reach, and generates continuous real-world data that enriches trial endpoints beyond scheduled visits.
