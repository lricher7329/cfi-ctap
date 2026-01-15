# Identity Management System (Zero-Trust) - Pricing Reference

**Budget Item ID:** 35
**Suite:** 4 - Data Platform & AI/HPC
**Budget Amount:** $100,000 CAD
**Category:** Software
**Date:** January 2026

---

## Overview

Zero-trust identity management for the Trusted Research Environment (TRE), providing:
- Single sign-on (SSO) across CTAP platforms
- Multi-factor authentication (MFA)
- Role-based access control (RBAC)
- Just-in-time (JIT) privileged access
- Audit logging and compliance reporting

---

## Recommended Systems

### Option 1: Okta Workforce Identity

**Vendor:** Okta
**Website:** [okta.com](https://www.okta.com/)

#### Pricing Tiers

| Plan | Price (USD/user/month) | Features |
|------|----------------------|----------|
| Starter Suite | $6 | Basic SSO, MFA |
| Essentials Suite | $17 | SSO, MFA, Lifecycle Management |
| Professional Suite | Custom | + Advanced policies |
| Enterprise Suite | Custom | Full feature set |

#### Add-On Products

| Product | Price (USD/user/month) |
|---------|----------------------|
| Multi-Factor Authentication | $3 |
| Advanced Server Access | $15 |
| API Access Management | Custom |
| Identity Governance | Custom |

#### Estimated 5-Year Cost (200 users)

| Component | Annual (CAD) | 5-Year Total |
|-----------|-------------|--------------|
| Essentials Suite (200 users) | $55,000 | $275,000 |
| MFA add-on | Included | - |
| Implementation | $15,000 | $15,000 |
| **Total** | | **$290,000** |

*Note: Exceeds budget; consider hybrid approach*

#### Sources
- [Okta Pricing](https://www.okta.com/pricing/)
- [Okta Pricing Guide](https://supertokens.com/blog/okta-pricing-the-complete-guide)

---

### Option 2: Microsoft Entra ID (Azure AD)

**Vendor:** Microsoft
**Website:** [microsoft.com/entra](https://www.microsoft.com/en-ca/security/business/identity-access/microsoft-entra-id)

#### Pricing Tiers

| Plan | Price (USD/user/month) | Features |
|------|----------------------|----------|
| Free (with M365) | $0 | Basic SSO, MFA |
| P1 | $6 | Conditional access, hybrid |
| P2 | $9 | Identity protection, PIM |
| Governance | $7 (add-on) | Lifecycle, access reviews |

#### Advantages for UAlberta

- UAlberta likely already has Microsoft licensing
- Integration with existing campus AD
- Lower incremental cost
- Native Microsoft 365 integration

#### Estimated 5-Year Cost (200 users)

| Component | Annual (CAD) | 5-Year Total |
|-----------|-------------|--------------|
| Entra ID P2 (200 users) | $30,000 | $150,000 |
| Governance add-on | $20,000 | $100,000 |
| Minus existing licensing | ($100,000) | ($100,000) |
| Implementation | $15,000 | $15,000 |
| **Incremental Cost** | | **$65,000** |

#### Sources
- [Azure AD vs Okta Comparison](https://pathlock.com/learn/azure-ad-vs-okta-compared-on-features-pricing-and-support-options-2/)
- [Identity Service Pricing Comparison](https://hideez.com/blogs/news/identity-service-pricing-comparison)

---

## Budget Configuration

For the $100,000 CAD budget, recommended approach:

### Recommended: Microsoft Entra ID + Specialized Tools

| Component | Purpose | Cost (CAD) |
|-----------|---------|-----------|
| Entra ID P2 upgrade (incremental) | Core identity | $40,000 |
| Privileged Identity Management | JIT admin access | Included |
| Conditional Access policies | Zero-trust rules | Included |
| HashiCorp Vault | Secrets management | $15,000 |
| Implementation services | Configuration, policies | $25,000 |
| Training | Staff enablement | $10,000 |
| Documentation | SOPs, runbooks | $5,000 |
| Contingency | | $5,000 |
| **Total** | | **$100,000** |

---

## Zero-Trust Architecture

### Principles

| Principle | Implementation |
|-----------|----------------|
| Never trust, always verify | MFA for all access |
| Least privilege | RBAC with minimal permissions |
| Assume breach | Continuous monitoring |
| Verify explicitly | Context-aware policies |

### TRE Access Zones

| Zone | Access Requirements |
|------|-------------------|
| Zone 1 (Identifiable) | MFA + JIT + approval workflow |
| Zone 2 (Limited) | MFA + role-based |
| Zone 3 (De-identified) | MFA + researcher role |
| Zone 4 (Public) | Standard authentication |

### Conditional Access Policies

| Policy | Trigger | Action |
|--------|---------|--------|
| PHI Access | Zone 1 request | Require MFA + compliant device |
| Admin Access | Privileged operation | JIT activation + approval |
| External Access | Non-UAlberta network | Block or step-up auth |
| High Risk | Risky sign-in detected | Block + alert |

---

## Compliance Features

| Requirement | Feature |
|-------------|---------|
| HIPAA | Audit logs, access controls |
| 21 CFR Part 11 | E-signature, audit trail |
| TCPS2 | Consent tracking, data governance |
| PIPEDA | Privacy by design |

---

## Integration Points

| System | Integration |
|--------|-------------|
| REDCap | SAML SSO |
| OpenSpecimen | SAML/OAuth |
| AWS (Bedrock, S3) | IAM Identity Center |
| Connect Care | Federated identity |
| Palo Alto firewall | User-ID integration |

---

## Vendor Contacts

| Vendor | Contact | Notes |
|--------|---------|-------|
| Microsoft | Via UAlberta IT | Existing relationship |
| Okta | [okta.com](https://www.okta.com) | Healthcare team |
| HashiCorp | [hashicorp.com](https://www.hashicorp.com) | Secrets management |

---

## Quote Status

- [ ] Assess current UAlberta Microsoft licensing
- [ ] Determine incremental Entra ID P2 cost
- [ ] Evaluate HashiCorp Vault vs Azure Key Vault
- [ ] Plan conditional access policy framework
- [ ] Confirm integration requirements with platform vendors

---

*Document prepared for CFI Innovation Fund 2027 budget justification*
