# AWS Cloud Services & Amazon Bedrock - Pricing Reference

**Budget Item IDs:** 24 (replacing GPU nodes), 28, 29
**Suite:** 4 - Data Platform & AI/HPC
**Combined Budget:** $1,600,000 CAD (GPU $800K + AWS Credits $500K + Pro-Serve $300K)
**Category:** Cloud Services
**Date:** January 2026

---

## Overview

Suite 4's AI/ML capabilities will be delivered through AWS cloud services, specifically Amazon Bedrock for foundation model hosting, rather than on-premises GPU infrastructure. This approach provides:
- Scalability without capital hardware investment
- Access to latest foundation models (Claude, Llama, Amazon Nova)
- HIPAA-eligible services for healthcare data
- Pay-per-use economics

**Vendor:** Amazon Web Services (AWS)
**Website:** [aws.amazon.com/bedrock](https://aws.amazon.com/bedrock/)

---

## Budget Reallocation

| Original Item | Original Amount | New Allocation |
|--------------|-----------------|----------------|
| GPU-Enabled Secure Compute Nodes | $800,000 | AWS Bedrock Provisioned Throughput + Cloud Compute |
| AWS Cloud Credits & Compute Reserve | $500,000 | AWS Research Credits + Operational Compute |
| AWS Pro-Serve / Architecture Consulting | $300,000 | AWS Professional Services |
| **Total** | **$1,600,000** | **Cloud-First Architecture** |

---

## Amazon Bedrock Pricing

### On-Demand Pricing (Pay-Per-Token)

| Model | Input (per 1K tokens) | Output (per 1K tokens) |
|-------|----------------------|------------------------|
| Amazon Nova Micro | $0.000035 USD | $0.00014 USD |
| Amazon Nova Lite | $0.00006 USD | $0.00024 USD |
| Amazon Nova Pro | $0.0008 USD | $0.0032 USD |
| Amazon Nova Premier | $0.0025 USD | $0.0125 USD |
| Claude 3 Haiku | $0.00025 USD | $0.00125 USD |
| Claude 3.5 Sonnet | $0.003 USD | $0.015 USD |
| Llama 3.1 70B | $0.00099 USD | $0.00099 USD |

### Provisioned Throughput (Enterprise)

For production workloads requiring consistent performance:

| Commitment | Minimum Cost |
|------------|--------------|
| No commitment | ~$15,000 USD/month minimum |
| 1-month commitment | 20-30% discount |
| 6-month commitment | 40-50% discount |

**Recommendation:** Start with on-demand, move to provisioned once usage patterns established.

### Custom Model Import

- **Import cost:** Free
- **Inference cost:** Based on Custom Model Units (CMUs)
- **Example:** Llama 3.1 8B requires 2 CMUs; Llama 3.1 70B requires 8 CMUs

### Model Fine-Tuning

| Service | Cost |
|---------|------|
| Fine-tuning (100M tokens) | ~$200 USD |
| Model storage (100 GB) | ~$5 USD/month |

#### Sources
- [Amazon Bedrock Pricing - Official](https://aws.amazon.com/bedrock/pricing/)
- [AWS Bedrock Pricing Guide 2024](https://umbrellacost.com/blog/aws-bedrock-pricing/)
- [Caylent Bedrock Pricing Explained](https://caylent.com/blog/amazon-bedrock-pricing-explained)

---

## AWS Cloud Credits for Research

### Program Details

| Aspect | Details |
|--------|---------|
| Faculty/Staff awards | Not capped (based on proposal) |
| Student awards | Up to $5,000 USD |
| Credit validity | 12 months from receipt |
| Eligible services | On-demand and Spot instances |

### Application Process
1. Set up AWS account
2. Submit proposal via [AWS Cloud Credit for Research](https://aws.amazon.com/government-education/research-and-technical-computing/cloud-credit-for-research/)
3. Decision typically within 30 days
4. Requires institutional email (.edu)

### Estimated Research Credits (5-Year)

| Year | Estimated Credits (CAD) |
|------|------------------------|
| Year 1 | $150,000 |
| Year 2 | $125,000 |
| Year 3 | $100,000 |
| Year 4 | $75,000 |
| Year 5 | $50,000 |
| **Total** | **$500,000** |

*Note: Research credits reduce effective cost; operational budget covers difference*

#### Sources
- [AWS Cloud Credit for Research](https://aws.amazon.com/government-education/research-and-technical-computing/cloud-credit-for-research/)
- [AWS Research Credit FAQs](https://aws.amazon.com/government-education/research-and-technical-computing/cloud-credit-for-research/faqs/)

---

## AWS Professional Services

### Service Rates (Estimated)

| Service Tier | Estimated Rate (CAD) |
|-------------|---------------------|
| Associate Consultant | $250-$350/hour |
| Consultant | $350-$450/hour |
| Senior Consultant | $450-$600/hour |
| Principal Consultant | $600-$800/hour |

### HIPAA Compliance Services

| Service | Estimated Cost (CAD) |
|---------|---------------------|
| HIPAA architecture review | $25,000 - $50,000 |
| BAA execution and configuration | Included with eligible services |
| Security assessment | $30,000 - $60,000 |
| Compliance documentation | $15,000 - $30,000 |

### Recommended Engagement ($300,000 CAD)

| Phase | Activities | Estimated Cost |
|-------|------------|----------------|
| **Discovery & Assessment** | | **$50,000** |
| - Current state analysis | Infrastructure review | $20,000 |
| - Requirements gathering | Clinical trial workflows | $15,000 |
| - Security assessment | HIPAA/privacy review | $15,000 |
| **Architecture Design** | | **$75,000** |
| - TRE architecture | Zone-based data platform | $35,000 |
| - AI/ML pipeline design | Bedrock integration | $25,000 |
| - Security architecture | Zero-trust design | $15,000 |
| **Implementation Support** | | **$125,000** |
| - Infrastructure build | IaC development | $50,000 |
| - Data pipeline development | ETL, OMOP integration | $40,000 |
| - Security implementation | IAM, encryption, monitoring | $35,000 |
| **Knowledge Transfer** | | **$50,000** |
| - Documentation | Runbooks, architecture docs | $20,000 |
| - Training | Staff enablement | $20,000 |
| - Go-live support | Post-deployment support | $10,000 |
| **Total** | | **$300,000** |

#### Sources
- [AWS HealthLake Pricing](https://aws.amazon.com/healthlake/pricing/)
- [AWS Healthcare Compliance](https://aws.amazon.com/health/healthcare-compliance/)

---

## Healthcare & HIPAA Compliance

### AWS HIPAA-Eligible Services (166+)

Key services for CTAP:
- Amazon Bedrock (foundation models)
- Amazon S3 (storage)
- Amazon EC2 (compute)
- Amazon RDS (databases)
- AWS Lambda (serverless)
- Amazon SageMaker (ML platform)
- AWS HealthLake (FHIR data store)

### Security Certifications
- HIPAA BAA available
- HITRUST CSF certified
- SOC 1/2/3
- ISO 27001, 27017, 27018
- FedRAMP (for government)

---

## 5-Year Cost Projection

| Category | Year 1 | Year 2 | Year 3 | Year 4 | Year 5 | Total |
|----------|--------|--------|--------|--------|--------|-------|
| Bedrock (AI/ML) | $150,000 | $175,000 | $200,000 | $200,000 | $200,000 | $925,000 |
| Compute (EC2/ECS) | $80,000 | $90,000 | $100,000 | $100,000 | $100,000 | $470,000 |
| Storage (S3/EBS) | $30,000 | $40,000 | $50,000 | $55,000 | $60,000 | $235,000 |
| Networking | $20,000 | $25,000 | $30,000 | $30,000 | $30,000 | $135,000 |
| Support (Enterprise) | $50,000 | $50,000 | $50,000 | $50,000 | $50,000 | $250,000 |
| **Subtotal** | $330,000 | $380,000 | $430,000 | $435,000 | $440,000 | $2,015,000 |
| Less: Research Credits | ($150,000) | ($125,000) | ($100,000) | ($75,000) | ($50,000) | ($500,000) |
| **Net Cost** | $180,000 | $255,000 | $330,000 | $360,000 | $390,000 | $1,515,000 |

*Note: Pro-Serve $300K is one-time Year 1 cost not shown in recurring projection*

---

## Quote Status

- [ ] Submit AWS Cloud Credit for Research application
- [ ] Engage AWS Healthcare team for CTAP discussion
- [ ] Request AWS Professional Services SOW
- [ ] Confirm Bedrock provisioned throughput pricing for Canada region
- [ ] Validate HIPAA BAA requirements

---

*Document prepared for CFI Innovation Fund 2027 budget justification*
