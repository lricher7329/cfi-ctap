# AWS Trusted Research Environment (TRE) & Frontier AI Infrastructure

## CFI Eligibility Justification

### Overview
This document provides justification for AWS cloud infrastructure as CFI-eligible capital expenditure, specifically for Trusted Research Environment (TRE) capabilities and frontier AI/LLM access that cannot be replicated on-premises.

---

## Prior Institutional Investment

The University of Alberta and Amii have already invested substantially in TRE and AI infrastructure, establishing proven foundations that the CFI request extends:

| Category | Investment | Status |
|----------|------------|--------|
| TRE Architecture Development | ~$350,000 | Deployed |
| AWS Credits (AI Scribe, TRE) | $500,000+ | Active - supports AI Scribe across 10 Alberta EDs |
| AWS ProServe Expert Consulting | ~$500,000 (in-kind) | Complete |
| **Total Prior Investment** | **~$1,350,000** | |

**Why CFI Request Is Not Redundant:**

The prior investment established the TRE architecture and proved the concept. The CFI request funds:

1. **Clinical trials-specific infrastructure** - CDISC compliance, regulatory-grade data capture, prospective trial workflows not supported by general-purpose TRE
2. **Multi-institutional federation** - Extending from single-institution pilot to ACT-AEC, RareKids-CAN, VITAL networks
3. **Production scale** - From pilot operations to 50+ concurrent trials capacity with guaranteed availability
4. **Reserved capacity commitments** - 3-year committed use agreements for production reliability and cost predictability

**Leverage Ratio:** CFI's $550K AWS infrastructure request builds on ~$1,350K prior investment (**2.4:1 leverage**).

---

## 1. AWS TRE Infrastructure Setup & Reserved Capacity ($250,000)

### Justification: Unique TRE Capabilities
AWS provides specialized Trusted Research Environment infrastructure that meets Canadian health data sovereignty requirements and cannot be cost-effectively replicated on-premises:

**Health Information Privacy Compliance:**
- **PIPEDA (Personal Information Protection and Electronic Documents Act)** - AWS Canada regions are fully compliant
- **Provincial PHIA/HIA** - Alberta Health Information Act compliance through AWS GovCloud-equivalent controls
- **SOC 2 Type II** - Continuous security auditing and attestation
- **HIPAA BAA** - Business Associate Agreements for health data
- **FedRAMP Moderate** - US federal security baseline applicable to cross-border research

**TRE-Specific Capabilities:**
- **AWS Clean Rooms** - Privacy-preserving data collaboration without exposing raw patient data
- **AWS HealthLake** - FHIR-compliant health data lake with built-in PHI protections
- **AWS Nitro Enclaves** - Hardware-isolated compute for sensitive health data processing
- **Data Residency Controls** - Guaranteed Canadian data residency (ca-central-1)

**Why On-Premises Cannot Replicate:**
1. **Certification burden**: Achieving SOC 2/HIPAA/PIPEDA certifications independently would cost $500K+ and require ongoing compliance staff
2. **Security expertise**: AWS employs 1000+ security engineers; replicating this expertise is infeasible
3. **Multi-institutional collaboration**: TRE enables secure data sharing across institutions without data movement
4. **Audit infrastructure**: Built-in logging, monitoring, and compliance reporting

### Cost Structure
| Component | Amount | Type |
|-----------|--------|------|
| TRE Environment Setup | $100,000 | One-time |
| Reserved Capacity (3-year) | $150,000 | Prepaid commitment |
| **Total** | **$250,000** | Capital |

---

## 2. AWS Bedrock Reserved AI Capacity ($150,000)

### Justification: Committed Use Agreement for Frontier AI Infrastructure

**Structure: 3-Year Reserved Capacity Commitment**

This is a **committed use agreement** for reserved AI compute capacity, analogous to purchasing dedicated GPU infrastructure but for frontier models not available for self-hosting. The commitment structure functions as infrastructure acquisition:

| Component | Amount | Structure |
|-----------|--------|-----------|
| Reserved Throughput Units (3-year) | $120,000 | Committed capacity purchase |
| Model Customization Capacity | $30,000 | One-time fine-tuning allocation |
| **Total** | **$150,000** | **Capital - committed use** |

**Why This Is Infrastructure, Not Operating Expense:**
1. **Committed capacity** - Reserved throughput is purchased upfront as a lump-sum prepayment, not consumption-based pay-per-use
2. **Fixed-term commitment** - 3-year agreement mirrors equipment lifecycle; capacity cannot be reduced or returned
3. **Dedicated allocation** - Reserved capacity is exclusively allocated to CTAP, not shared across AWS customers
4. **Capital accounting** - AWS invoices reserved capacity as prepaid infrastructure; institution books as capital asset
5. **No per-query charges** - Unlike API consumption, reserved throughput incurs no additional costs during the commitment period

**CFI Eligibility Rationale:**
Reserved AI capacity meets CFI's infrastructure criteria because:
- **Prepaid commitment** functions identically to purchasing dedicated GPU hardware—the difference is that frontier models (Claude, GPT-4) cannot be self-hosted at any price
- **Fixed-term agreements** are explicitly CFI-eligible under the same rationale as multi-year software licenses
- **Unique capability** justification: This infrastructure enables research capabilities (frontier AI for clinical trials) that would otherwise require $2M+ in on-premises GPU infrastructure that still couldn't access proprietary frontier models
- **CFI precedent**: Multi-year committed cloud capacity has been approved in CFI IF2020/IF2023 for compute-intensive research where on-premises alternatives are technically or economically infeasible

**Unique Capabilities (Not Available On-Premises):**
AWS Bedrock provides access to frontier foundation models that are:
1. **Not available for on-premises deployment** - Claude, GPT-4, and other frontier models are API-only
2. **Essential for clinical trial innovation** - NLP for adverse event detection, patient matching, protocol optimization
3. **Health-data compliant** - Bedrock operates within the TRE security boundary

**Frontier Models Available via Bedrock:**
- **Anthropic Claude 3/4** - Medical documentation analysis, clinical note summarization
- **Amazon Titan** - Embeddings for patient similarity and cohort discovery
- **Meta Llama 3** - Open-weight models for customization within TRE

**Health Data Privacy Protections:**
- **No model training on customer data** - Explicit contractual guarantee
- **Data isolation** - Each inference request is isolated and ephemeral
- **Canadian data residency** - Inference runs in ca-central-1
- **Audit logging** - Full traceability of all AI interactions with PHI
- **PIPEDA/PHIA compliance** - Meets Alberta Health Information Act requirements

**Why On-Premises Cannot Replicate:**
1. **Model access**: Frontier models (Claude, GPT-4) are not available for self-hosting
2. **Compute requirements**: Running open models at scale would require $2M+ in GPU infrastructure
3. **Model updates**: Cloud-based models receive continuous safety and capability updates
4. **Regulatory compliance**: Anthropic/OpenAI maintain health-specific compliance certifications

---

## 3. AWS Pro-Serve TRE Architecture Consulting ($300,000)

### Justification: Specialized Health Data Architecture Expertise

**Scope of Work:**
- TRE architecture design meeting PIPEDA/PHIA requirements
- Security architecture review and threat modeling
- Integration design with Connect Care (Epic) FHIR APIs
- Data sovereignty and residency controls implementation
- Compliance documentation for REB/ethics review

**Why This Is CFI-Eligible:**
- One-time professional services for infrastructure design
- Equivalent to architectural/engineering services for physical infrastructure
- Essential for establishing the research capability

---

## Hybrid Architecture Summary

```
┌─────────────────────────────────────────────────────────────────────────┐
│                      HYBRID TRE ARCHITECTURE                              │
│              CFI Request Builds on ~$1.35M Prior Investment               │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  ON-PREMISES (CFI: $1,630,000)     AWS TRE (CFI: $550,000)              │
│  ┌─────────────────────┐          ┌─────────────────────────────┐       │
│  │ GPU Compute Nodes   │          │ [EXISTING] TRE Architecture │       │
│  │ ($800K + $250K)     │◄────────►│  (~$350K deployed)          │       │
│  │                     │  Secure  │                             │       │
│  │ Secure Storage      │  Link    │ [EXISTING] AWS Credits      │       │
│  │ ($400K)             │          │  ($500K+ active - AI Scribe)│       │
│  │                     │          │                             │       │
│  │ Network/Security    │          │ [CFI] TRE Setup ($250K)     │       │
│  │ ($180K)             │          │ [CFI] Bedrock ($150K)       │       │
│  │                     │          │ [CFI] Pro-Serve ($150K)     │       │
│  └─────────────────────┘          └─────────────────────────────┘       │
│           │                                │                             │
│           └────────────┬───────────────────┘                            │
│                        │                                                 │
│              ┌─────────▼─────────┐                                      │
│              │  Connect Care     │                                      │
│              │  (Epic FHIR)      │                                      │
│              └───────────────────┘                                      │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## CFI Eligibility Summary

| Item | Amount | CFI Category | Justification |
|------|--------|--------------|---------------|
| AWS TRE Setup & Reserved Capacity | $250,000 | Infrastructure Acquisition | Prepaid compute commitment equivalent to equipment purchase |
| AWS Bedrock Reserved AI Capacity | $150,000 | Infrastructure Acquisition | 3-year prepaid committed use agreement (lump-sum, non-refundable) for frontier AI compute not available on-premises at any price |
| AWS Pro-Serve Consulting (Year 1) | $150,000 | Professional Services | One-time architecture design (phased; Year 1 portion) |
| **Total AWS (CFI Request)** | **$550,000** | | |

| Prior Institutional Investment | Amount | Status |
|-------------------------------|--------|--------|
| TRE Architecture & Setup | ~$350,000 | Deployed |
| AWS Credits (AI Scribe, TRE) | $500,000+ | Active |
| AWS ProServe (In-Kind) | ~$500,000 | Complete |
| **Total Prior Investment** | **~$1,350,000** | |

**Leverage Ratio: 2.4:1** - CFI request builds on proven institutional investment.

**Key Arguments for CFI Eligibility:**
1. **Builds on proven investment** - ~$1.35M institutional investment demonstrates commitment and reduces risk
2. **Committed use agreements** function as capital acquisition, not operating expense
3. **Reserved capacity** is purchased upfront with fixed-term commitment (3 years)
4. **Unique capabilities** not replicable on-premises justify cloud infrastructure
5. **Health data compliance** requirements necessitate specialized TRE environment
6. **One-time setup costs** are equivalent to construction/renovation for physical infrastructure

---

## References

- AWS for Health: https://aws.amazon.com/health/
- AWS Canada Compliance: https://aws.amazon.com/compliance/canada/
- AWS Bedrock: https://aws.amazon.com/bedrock/
- PIPEDA Compliance: https://www.priv.gc.ca/en/privacy-topics/privacy-laws-in-canada/the-personal-information-protection-and-electronic-documents-act-pipeda/
