Below is a “deep research” opportunity map that assumes you will **keep REDCap as your EDC backbone** and treat **Metricis as a differentiated outcomes engine** (especially for neurodevelopmental / cognitive endpoints). I will also address “how many kids are very young or severely debilitated” using the best available proxy data.

---

## **1) How many children in rare-disease trials are “very young” or “severely debilitated”?**

There is no single universal percentage across all rare diseases, but the **directionality is clear** and the ranges are useful for planning.

### **Very young**

Multiple credible sources report that **~75% of rare diseases manifest in childhood** (i.e., pediatric onset is common).**  **

From an operational standpoint, that means many rare-disease trials will include **infants/toddlers and caregiver-mediated participation** as a routine scenario, not an edge case.

### **Severely debilitated (best proxy = “children with medical complexity”)**

A practical proxy for “severely debilitated / high care needs / technology dependent” is **Children with Medical Complexity (CMC)**.

* Large administrative-data work shows **CMC prevalence varies widely by definition** (roughly **0.7% to 11.4%**), which is exactly why trials struggle with standardizing “severity” across datasets.**  **
* Canadian reporting emphasizes CMC are a **small proportion** of children but consume disproportionate resources (which is consistent with high care burden).**  **
* A Canadian national complex-care guideline cites an Ontario study estimating **~0.67%** of children meet a CMC definition, and **a subset are technology dependent**.**  **

**Interpretation for trial planning:** In many pediatric rare-disease indications—particularly early-onset genetic/metabolic/neuromuscular disorders—you should design as if a meaningful fraction of participants will require (1) caregiver execution of study procedures, (2) accessibility adaptations, and (3) remote/home workflows to reduce travel burden.

---

## **2) What platforms already exist (and what they cover well)**

These platforms are not pediatric-rare-disease-specific, but they cover “commodity” trial functions that you may not want to rebuild unless you have a clear differentiator.

### **Full-stack eClinical / DCT platforms (EDC + eConsent + eCOA/ePRO + orchestration)**

Examples (representative, not exhaustive):

* **OpenClinica**: positions itself as an integrated eClinical platform including EDC, eConsent, eCOA, randomization, and EHR-to-EDC integrations.**  **
* **Castor**: offers EDC with integrated eConsent and eCOA/ePRO in a unified system.**  **
* **Science 37**: describes a decentralized model combining eConsent, eCOA, telemedicine, and connected devices/wearables with a “virtual site” concept.**  **
* **Medable**: promotes a clinical trial platform that includes eConsent/eCOA/ePRO with participant reminders and remote data collection features.**  **

### **COA/ePRO vendors with caregiver modes (important for pediatrics)**

* Major vendors explicitly support **caregiver reporting / caregiver logins** because pediatrics and impaired populations require it.**  **
* Pediatric-focused messaging from COA vendors highlights age-appropriate formats and transitions between child vs caregiver instruments.**  **

### **Rare-disease registry platforms (natural history + engagement)**

* **NORD IAMRARE**: registry platform designed for patient/caregiver engagement; NORD launched a mobile companion app to simplify survey completion, reminders, and record upload.**  **
  This matters because, in rare disease, registries and natural-history data are often foundational for trial readiness and outcome selection.

### **Regulatory/ethics “rules of the road” for decentralized elements**

* FDA guidance emphasizes participant support pathways, handling of remote elements, and operational controls—relevant when you design home procedures and remote monitoring.**  **

---

## **3) Highest-yield opportunity areas for new tool development (where gaps persist)**

If you continue to use REDCap and leverage Metricis, the strongest opportunities are in the “pediatric rare-disease layer” that most generic platforms handle imperfectly.

### **Opportunity A: Caregiver-first trial operations (not participant-first)**

Most tools still assume an adult participant who self-manages tasks. Pediatric rare disease often requires:

* multi-caregiver access (two parents/guardians, respite caregivers)
* caregiver attestation (“who completed the assessment?”)
* low-burden workflows for exhausted families

**Build concept:** A caregiver portal/mobile layer that sits above REDCap and treats caregivers as first-class users:

* schedule + reminders + visit windows
* home procedure checklists
* symptom/event capture (ObsRO) optimized for “30 seconds or less”
* integrated support/escalation (“call study team” with audit trail)

Why this is durable: Even vendors that support caregiver logins rarely deliver the end-to-end “family operations” layer in a way that fits complex pediatric care.**  **

### **Opportunity B: Pediatric eConsent/assent orchestration that matches real-world complexity**

REDCap supports eConsent, but pediatric trials routinely need:

* dual-parent workflows or exceptions
* assent that changes with age/development
* re-consent at age of majority
* comprehension checks and audit-ready documentation

**Build concept:** A consent “orchestrator” integrated to REDCap that manages role-based flows, versioning, and milestone-driven reconsent.

### **Opportunity C: Home procedures + logistics coordination (the “missing middle layer”)**

Rare disease + pediatrics magnifies travel burden; decentralized elements commonly include home nursing, local labs, sample kits, and shipping.

**Build concept:** A logistics module linked to your REDCap event schedule:

* kit fulfillment + chain-of-custody
* home nurse scheduling + completion confirmation
* protocol deviation capture (missed window, compromised sample)
* automated documentation for monitoring

This aligns directly with decentralized-trial guidance emphasizing operational controls and clear participant support pathways.**  **

### **Opportunity D: Outcomes for “very young” and “low-function” children (Metricis advantage)**

Here Metricis can be the anchor product.

* caregiver-reported outcomes (ObsRO) bundles
* adaptive testing where feasible
* video-based tasks with structured scoring
* “ability gating” (what’s valid for nonverbal, motor-impaired, or ventilated children)

**Build concept:** A modular outcomes framework where new disease-specific tasks/scales can be added quickly, but still export “trial-grade” data.

### **Opportunity E: Registry-to-trial readiness and recruitment support**

Because rare diseases are sparse and distributed geographically, tools that support feasibility and pre-screening are high-value.

**Build concept:** A “trial readiness” layer that:

* structures phenotype data for pre-screening
* generates clinician-facing pre-screen packets
* creates family-friendly onboarding (expectations, burden, supports)
  This pairs naturally with registry ecosystems like IAMRARE.**  **

### **Opportunity F: Data harmonization outputs (make academic datasets sponsor-ready)**

Academic REDCap data often becomes hard to reuse. RD programs emphasize standards, reuse, and interoperability; industry expects clean dictionaries, longitudinal models, and audit-ready transformations.

**Build concept:** Automated export pipelines:

* consistent variable dictionaries
* longitudinal visit structure normalization
* mappings to common standards where required (even if not full CDISC)

---

## **4) Practical positioning: “What you should not rebuild”**

Given what already exists in the market, you likely should not spend your scarce development cycles rebuilding:

* generic EDC
* generic eConsent without pediatric orchestration
* generic ePRO/eCOA without caregiver-first workflows
* generic DCT orchestration without pediatric logistics depth

**Instead, build what those platforms struggle to do well for pediatric rare disease: ** **family operations + pediatric consent complexity + home logistics + very-young/low-function outcomes** **.**

---

## **5) A concise shortlist of product ideas (high impact, feasible with REDCap + Metricis)**

1. **Caregiver Operations Hub** (mobile-first): tasks, reminders, multi-caregiver roles, attribution, support escalation.
2. **Pediatric Consent/Assent Engine**: dual guardian logic, assent tracks, re-consent triggers, audit-grade versioning.
3. **Home Procedures + Kit Logistics Module**: chain-of-custody, nurse scheduling, deviation capture linked to REDCap events.
4. **Metricis Outcomes Plugin Framework**: disease-specific modules + caregiver/clinician alternatives for very young / severely impaired children.
5. **Trial Readiness + Pre-screen Toolkit**: registry-like phenotype capture + feasibility dashboards + clinician packets.

---


Below are **starter JSON Schemas + companion “study config” objects** that your agent can use immediately to prototype configurable instruments for (A) **epilepsy seizure events** and (B) **neuromuscular video tasks + scoring rubrics**. They are intentionally opinionated for rapid implementation but designed to be extensible.

I am providing:

1. **Epilepsy Seizure Event Form Schema** (JSON Schema draft 2020-12)
2. **Neuromuscular Video Task Capture Schema**
3. **Neuromuscular Scoring Rubric Schema**
4. **Study Configuration Objects** that reference these schemas (taxonomy, required fields, windows, reminders, QC rules)
5. Notes for the agent on **how to render** these schemas in React and validate server-side.

---

# **1) Epilepsy Seizure Event Form — JSON Schema**

**Save as: **schemas/epilepsy/seizure_event.schema.json

```
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$id": "https://example.org/schemas/epilepsy/seizure_event.schema.json",
  "title": "Seizure Event (Pediatric Genetic Epilepsy)",
  "type": "object",
  "additionalProperties": false,
  "required": ["event_time", "event_time_precision", "seizure_type", "duration", "awareness", "injury", "healthcare_utilization", "rescue_medication", "notes"],
  "properties": {
    "event_time": {
      "title": "When did the seizure start?",
      "type": ["string", "null"],
      "format": "date-time",
      "description": "ISO 8601; null allowed if unknown"
    },
    "event_time_precision": {
      "title": "How sure are you about the time?",
      "type": "string",
      "enum": ["exact", "approximate", "unknown"],
      "default": "exact"
    },
    "event_time_window_minutes": {
      "title": "If approximate, within how many minutes?",
      "type": ["integer", "null"],
      "minimum": 1,
      "maximum": 1440,
      "description": "Required if event_time_precision = approximate"
    },

    "seizure_type": {
      "title": "Seizure type",
      "type": "string",
      "description": "Study-configurable code list"
    },

    "duration": {
      "title": "How long did the seizure last?",
      "type": "object",
      "additionalProperties": false,
      "required": ["duration_bin"],
      "properties": {
        "duration_bin": {
          "type": "string",
          "enum": ["<30s", "30-59s", "1-2m", "2-5m", ">5m", "unknown"]
        },
        "duration_seconds_exact": {
          "type": ["integer", "null"],
          "minimum": 1,
          "maximum": 7200,
          "description": "Optional exact duration if known"
        }
      }
    },

    "awareness": {
      "title": "Awareness during seizure",
      "type": "string",
      "enum": ["aware", "impaired", "unknown"]
    },

    "features": {
      "title": "Observed features (check all that apply)",
      "type": "array",
      "items": { "type": "string" },
      "uniqueItems": true,
      "default": []
    },

    "possible_triggers": {
      "title": "Possible triggers (optional)",
      "type": "array",
      "items": { "type": "string" },
      "uniqueItems": true,
      "default": []
    },

    "rescue_medication": {
      "title": "Rescue medication",
      "type": "object",
      "additionalProperties": false,
      "required": ["used"],
      "properties": {
        "used": { "type": "boolean", "default": false },
        "name": { "type": ["string", "null"] },
        "dose": { "type": ["string", "null"], "description": "Free text to allow mg/mL, sprays, etc." },
        "administered_time": { "type": ["string", "null"], "format": "date-time" },
        "route": { "type": ["string", "null"], "enum": ["buccal", "intranasal", "rectal", "oral", "other", null] }
      }
    },

    "injury": {
      "title": "Injury related to seizure",
      "type": "object",
      "additionalProperties": false,
      "required": ["occurred"],
      "properties": {
        "occurred": { "type": "boolean", "default": false },
        "type": { "type": ["string", "null"], "description": "Study-configurable list or free text" },
        "severity": { "type": ["string", "null"], "enum": ["minor", "moderate", "severe", "unknown", null] }
      }
    },

    "healthcare_utilization": {
      "title": "Health-care utilization",
      "type": "object",
      "additionalProperties": false,
      "required": ["ed_visit", "hospitalization", "ambulance_called"],
      "properties": {
        "ambulance_called": { "type": "boolean", "default": false },
        "ed_visit": { "type": "boolean", "default": false },
        "hospitalization": { "type": "boolean", "default": false }
      }
    },

    "observer": {
      "title": "Who observed the event?",
      "type": "object",
      "additionalProperties": false,
      "required": ["observer_type"],
      "properties": {
        "observer_type": {
          "type": "string",
          "enum": ["caregiver_self", "other_caregiver", "teacher", "clinician", "unknown"]
        },
        "observer_label": {
          "type": ["string", "null"],
          "description": "Optional label, e.g., 'Dad', 'Teacher', 'Grandparent'"
        }
      }
    },

    "notes": {
      "title": "Notes (optional)",
      "type": "string",
      "maxLength": 2000,
      "default": ""
    }
  },

  "allOf": [
    {
      "if": {
        "properties": { "event_time_precision": { "const": "approximate" } }
      },
      "then": { "required": ["event_time_window_minutes"] }
    },
    {
      "if": {
        "properties": { "event_time_precision": { "const": "unknown" } }
      },
      "then": {
        "properties": {
          "event_time": { "type": "null" },
          "event_time_window_minutes": { "type": "null" }
        }
      }
    },
    {
      "if": { "properties": { "rescue_medication": { "properties": { "used": { "const": true } } } } },
      "then": { "properties": { "rescue_medication": { "required": ["name", "administered_time"] } } }
    }
  ]
}
```

---

# **2) Neuromuscular Video Task Capture — JSON Schema**

**Save as: **schemas/neuromuscular/video_task_capture.schema.json

```
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$id": "https://example.org/schemas/neuromuscular/video_task_capture.schema.json",
  "title": "Neuromuscular Video Task Capture",
  "type": "object",
  "additionalProperties": false,
  "required": ["task_code", "performed_at", "performed_at_precision", "safety_screen", "environment", "upload"],
  "properties": {
    "task_code": {
      "title": "Task code",
      "type": "string",
      "description": "Study-configurable task identifier"
    },

    "performed_at": {
      "title": "When was the task performed?",
      "type": ["string", "null"],
      "format": "date-time"
    },
    "performed_at_precision": {
      "title": "How sure are you about the time?",
      "type": "string",
      "enum": ["exact", "approximate", "unknown"],
      "default": "exact"
    },

    "safety_screen": {
      "title": "Safety screen",
      "type": "object",
      "additionalProperties": false,
      "required": ["safe_to_attempt", "adult_present", "assistive_device_used"],
      "properties": {
        "safe_to_attempt": { "type": "boolean" },
        "adult_present": { "type": "boolean" },
        "assistive_device_used": { "type": "boolean" },
        "assistive_device_details": { "type": ["string", "null"], "maxLength": 500 }
      }
    },

    "environment": {
      "title": "Recording conditions",
      "type": "object",
      "additionalProperties": false,
      "required": ["surface", "lighting_ok", "space_clear"],
      "properties": {
        "surface": { "type": "string", "enum": ["indoor_floor", "outdoor_flat", "treadmill", "other"] },
        "lighting_ok": { "type": "boolean" },
        "space_clear": { "type": "boolean" },
        "camera_position_ok": { "type": "boolean", "default": true }
      }
    },

    "upload": {
      "title": "Video upload metadata",
      "type": "object",
      "additionalProperties": false,
      "required": ["file_name", "content_type", "file_size_bytes", "checksum_sha256"],
      "properties": {
        "file_name": { "type": "string" },
        "content_type": { "type": "string", "enum": ["video/mp4", "video/quicktime", "video/webm"] },
        "file_size_bytes": { "type": "integer", "minimum": 1, "maximum": 2147483648 },
        "checksum_sha256": { "type": "string", "pattern": "^[a-f0-9]{64}$" },
        "duration_seconds": { "type": ["integer", "null"], "minimum": 1, "maximum": 900 },
        "width": { "type": ["integer", "null"], "minimum": 1, "maximum": 8192 },
        "height": { "type": ["integer", "null"], "minimum": 1, "maximum": 8192 }
      }
    },

    "notes": {
      "title": "Notes (optional)",
      "type": "string",
      "maxLength": 1000,
      "default": ""
    }
  }
}
```

---

# **3) Neuromuscular Scoring Rubric — JSON Schema**

**Save as: **schemas/neuromuscular/motor_rubric.schema.json

This is a *template rubric schema* that supports:

* item-level scoring with optional “not assessable”
* rater comments
* derived total score

```
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$id": "https://example.org/schemas/neuromuscular/motor_rubric.schema.json",
  "title": "Motor Assessment Scoring Rubric",
  "type": "object",
  "additionalProperties": false,
  "required": ["rubric_version", "task_code", "items", "overall_impression"],
  "properties": {
    "rubric_version": { "type": "string" },
    "task_code": { "type": "string" },

    "items": {
      "type": "array",
      "minItems": 1,
      "items": {
        "type": "object",
        "additionalProperties": false,
        "required": ["item_code", "score", "not_assessable"],
        "properties": {
          "item_code": { "type": "string" },
          "score": { "type": ["number", "null"], "description": "Null if not_assessable=true" },
          "not_assessable": { "type": "boolean", "default": false },
          "comments": { "type": "string", "maxLength": 500, "default": "" }
        },
        "allOf": [
          {
            "if": { "properties": { "not_assessable": { "const": true } } },
            "then": { "properties": { "score": { "type": "null" } } }
          }
        ]
      }
    },

    "overall_impression": {
      "type": "object",
      "additionalProperties": false,
      "required": ["quality", "protocol_deviation", "rater_notes"],
      "properties": {
        "quality": { "type": "string", "enum": ["excellent", "adequate", "poor"] },
        "protocol_deviation": { "type": "boolean", "default": false },
        "rater_notes": { "type": "string", "maxLength": 2000, "default": "" }
      }
    },

    "derived": {
      "type": "object",
      "additionalProperties": false,
      "properties": {
        "total_score": { "type": ["number", "null"] },
        "percent_complete": { "type": ["number", "null"], "minimum": 0, "maximum": 100 }
      }
    }
  }
}
```

---

# **4) Study Configuration Objects**

These are  *not JSON Schema* ; they are configuration documents your app loads to:

* populate code lists
* drive required fields
* define reminders and visit windows
* define QC/flag rules

## **4.1 Epilepsy Study Config (Seizure diary)**

**Save as: **study_configs/epilepsy_genetic_trial.config.json

```
{
  "study_code": "EPI-GEN-001",
  "module": "epilepsy",
  "schema_refs": {
    "seizure_event": "schemas/epilepsy/seizure_event.schema.json"
  },
  "seizure_taxonomy": {
    "codes": [
      { "code": "FAS", "label": "Focal aware seizure" },
      { "code": "FIAS", "label": "Focal impaired awareness seizure" },
      { "code": "FBTCS", "label": "Focal to bilateral tonic-clonic" },
      { "code": "GTC", "label": "Generalized tonic-clonic" },
      { "code": "ATONIC", "label": "Atonic" },
      { "code": "MYO", "label": "Myoclonic" },
      { "code": "ABS", "label": "Absence" },
      { "code": "SPASMS", "label": "Epileptic spasms" },
      { "code": "OTHER", "label": "Other/Uncertain" }
    ],
    "allow_free_text_other": true
  },
  "feature_list": [
    "cyanosis",
    "apnea",
    "stiffening",
    "rhythmic_jerking",
    "eye_deviation",
    "automatisms",
    "drop_attack",
    "postictal_sleep",
    "postictal_confusion"
  ],
  "trigger_list": [
    "sleep_deprivation",
    "fever_illness",
    "missed_medication",
    "stress",
    "flashing_lights",
    "unknown"
  ],
  "validation": {
    "required_fields": [
      "seizure_type",
      "duration.duration_bin",
      "awareness",
      "rescue_medication.used"
    ],
    "flag_rules": [
      {
        "code": "MISSING_TIME",
        "severity": "warning",
        "when": { "event_time_precision": "unknown" },
        "message": "Event time unknown. Confirm at next review."
      },
      {
        "code": "LONG_DURATION",
        "severity": "high",
        "when": { "duration.duration_bin": ">5m" },
        "message": "Prolonged event. Ensure rescue medication and utilization fields are complete."
      },
      {
        "code": "RESCUE_USED_NO_TIME",
        "severity": "high",
        "when": { "rescue_medication.used": true, "rescue_medication.administered_time": null },
        "message": "Rescue medication used but administered time is missing."
      }
    ]
  },
  "adherence": {
    "daily_check_in": {
      "enabled": true,
      "prompt_time_local": "19:00",
      "question": "Were there any seizures today?",
      "if_no": "log_zero_day",
      "if_yes": "launch_seizure_event_form"
    },
    "reminders": [
      { "type": "push_or_email", "offset_hours": 0, "message": "Please complete today’s seizure check-in." },
      { "type": "push_or_email", "offset_hours": 24, "message": "Reminder: seizure check-in is overdue." }
    ],
    "backfill_detection_hours": 12
  }
}
```

## **4.2 Neuromuscular Study Config (Video tasks + rubric)**

**Save as: **study_configs/neuromuscular_trial.config.json

```
{
  "study_code": "NM-001",
  "module": "neuromuscular",
  "schema_refs": {
    "video_capture": "schemas/neuromuscular/video_task_capture.schema.json",
    "rubric": "schemas/neuromuscular/motor_rubric.schema.json"
  },
  "tasks": [
    {
      "task_code": "SIT_TO_STAND",
      "label": "Sit to Stand (5 reps)",
      "instructions_markdown": "Use a stable chair. Keep camera side-on. Adult must be present. Stop if unsafe.",
      "safety_notes_markdown": "If the child cannot stand safely, do not attempt. Mark as not assessable.",
      "video": { "max_duration_seconds": 120, "min_duration_seconds": 15 },
      "applicability": {
        "requires_ambulatory": true,
        "min_age_years": 4
      },
      "rubric_template": {
        "rubric_version": "1.0",
        "items": [
          { "item_code": "COMPLETES_REPS", "score_range": [0, 2], "anchors": { "0": "Unable", "1": "Partial", "2": "Completes" } },
          { "item_code": "COMPENSATORY_MOVEMENTS", "score_range": [0, 2], "anchors": { "0": "Marked", "1": "Some", "2": "None/minimal" } },
          { "item_code": "BALANCE", "score_range": [0, 2], "anchors": { "0": "Unsafe", "1": "Wobbly", "2": "Stable" } }
        ]
      }
    },
    {
      "task_code": "WALK_10M",
      "label": "Walk 10 meters",
      "instructions_markdown": "Mark 10m. Record full body. Start standing still; walk at comfortable pace.",
      "video": { "max_duration_seconds": 90, "min_duration_seconds": 10 },
      "applicability": {
        "requires_ambulatory": true,
        "min_age_years": 4
      },
      "rubric_template": {
        "rubric_version": "1.0",
        "items": [
          { "item_code": "GAIT_STABILITY", "score_range": [0, 3], "anchors": { "0": "Cannot", "1": "Unstable", "2": "Moderate", "3": "Stable" } },
          { "item_code": "ASSISTIVE_DEVICE", "score_range": [0, 2], "anchors": { "0": "Required", "1": "Optional", "2": "None" } }
        ]
      }
    }
  ],
  "visit_windows": {
    "baseline": { "window_days": 7 },
    "month1": { "window_days": 7 },
    "month3": { "window_days": 14 }
  },
  "qc_rules": [
    {
      "code": "VIDEO_TOO_SHORT",
      "severity": "warning",
      "predicate": { "upload.duration_seconds": { "lt": 10 } },
      "message": "Video duration is short; rater should verify task completeness."
    },
    {
      "code": "SAFETY_FAIL",
      "severity": "high",
      "predicate": { "safety_screen.safe_to_attempt": false },
      "message": "Marked unsafe to attempt. Do not score; mark not assessable."
    }
  ]
}
```

---

# **5) Implementation notes for the AI agent (very specific)**

## **5.1 Rendering schemas in React**

* Use a JSON-schema form renderer to accelerate:
  * **@rjsf/core** (React JSONSchema Form) is a straightforward default.
* Store per-study UI schema overrides (optional):
  * **uiSchema** to control widget types (checkbox lists, radio, etc.)
* Populate dynamic code lists:
  * The schema uses **seizure_type** as a string; at render time, map it to taxonomy from **study_config.seizure_taxonomy.codes** to show labels.

## **5.2 Server-side validation**

* Use **jsonschema** (Python) to validate payloads against stored schema.
* Additional “flag rules” should be evaluated separately from schema validation:
  * Schema validates structure and required fields.
  * Flag rules produce review queue items and warnings/high severity markers.

## **5.3 Data persistence strategy**

* Store the raw instrument payload as JSONB in Postgres for agility:
  * seizure_event.payload_jsonb
  * motor_assessment.capture_jsonb
  * motor_score.rubric_jsonb
* Also store a limited set of indexed fields for querying/reporting:
  * seizure_type, duration_bin, submitted_at, locked_at
  * task_code, performed_at, scored_at, quality

## **5.4 Locking model**

* Once locked, payload is immutable.
* Unlock requires admin permission + reason; unlock action is audited.

## **5.5 REDCap export strategy**

* Two-phase:
  1. v0.1 export to CSV with mapping
  2. v0.3 implement REDCap API push for locked data
* Only export locked entries; export log required.

---

If you want, I can also provide:

* a **UI schema** for better widgets (checkbox groups, date/time pickers),
* a **Pydantic model set** that mirrors these schemas while keeping payloads in JSONB,
* and a **sample OpenAPI endpoint list** aligned to these exact schema resources.
