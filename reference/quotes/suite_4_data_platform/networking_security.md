# Networking & Security Core - Pricing Reference

**Budget Item ID:** 26
**Suite:** 4 - Data Platform & AI/HPC
**Budget Amount:** $180,000 CAD
**Category:** Equipment
**Date:** January 2026

---

## Overview

Network infrastructure and security appliances for the Trusted Research Environment (TRE), providing:
- Network segmentation between TRE zones
- Firewall protection (next-generation)
- Intrusion detection/prevention
- VPN for secure remote access
- Network monitoring and analytics

---

## Recommended Systems

### Next-Generation Firewall

#### Option 1: Palo Alto Networks

**Manufacturer:** Palo Alto Networks
**Website:** [paloaltonetworks.com](https://www.paloaltonetworks.com/)

| Model | Throughput | Sessions | Estimated Price (CAD) |
|-------|-----------|----------|----------------------|
| PA-440 | 2.8 Gbps | 200K | $3,000 - $5,000 |
| PA-450 | 3.2 Gbps | 300K | $5,000 - $8,000 |
| PA-460 | 4.7 Gbps | 400K | $8,000 - $12,000 |
| PA-3410 | 13.5 Gbps | 1.4M | $25,000 - $40,000 |
| PA-3420 | 17 Gbps | 2M | $40,000 - $60,000 |
| PA-5410 | 30 Gbps | 4M | $80,000 - $120,000 |

**Subscription Services (Annual):**
- Threat Prevention: $2,000 - $15,000
- URL Filtering: $1,500 - $10,000
- WildFire: $2,000 - $12,000
- GlobalProtect VPN: $1,500 - $8,000

#### Option 2: Cisco Secure Firewall

**Manufacturer:** Cisco Systems
**Website:** [cisco.com](https://www.cisco.com/site/ca/en/products/security/firewalls/index.html)

| Model | Throughput | Estimated Price (CAD) |
|-------|-----------|----------------------|
| Firepower 1010 | 650 Mbps | $1,500 - $2,500 |
| Firepower 1120 | 1.5 Gbps | $3,000 - $5,000 |
| Firepower 2110 | 2 Gbps | $8,000 - $12,000 |
| Firepower 2130 | 4.75 Gbps | $20,000 - $30,000 |
| Firepower 4110 | 12 Gbps | $50,000 - $70,000 |

**Note:** Palo Alto consistently rated higher for security effectiveness (Gartner Magic Quadrant Leader 2024), while Cisco offers better value for organizations already in Cisco ecosystem.

#### Sources
- [Palo Alto Networks Pricing Guide](https://underdefense.com/industry-pricings/palo-alto-networks-pricing-ultimate-guide-for-security-products/)
- [Cisco vs Palo Alto Comparison](https://www.esecurityplanet.com/products/cisco-vs-palo-alto-networks/)
- [Gartner Peer Insights](https://www.gartner.com/reviews/market/security-service-edge/compare/cisco-systems-vs-palo-alto-networks)

---

### Network Switches

#### Cisco Catalyst (Recommended)

| Model | Ports | Features | Estimated Price (CAD) |
|-------|-------|----------|----------------------|
| Catalyst 9200L-24P | 24 × 1GbE PoE+ | Layer 2 | $3,000 - $4,500 |
| Catalyst 9200-48P | 48 × 1GbE PoE+ | Layer 2/3 | $5,000 - $7,000 |
| Catalyst 9300-24T | 24 × 1GbE | Layer 3 | $6,000 - $9,000 |
| Catalyst 9300-48UXM | 48 × mGig | Layer 3, UPOE+ | $12,000 - $18,000 |
| Catalyst 9500-24Y4C | 24 × 25GbE | Core/distribution | $25,000 - $35,000 |

---

## Budget Configuration

For the $180,000 CAD budget:

| Component | Specification | Quantity | Unit Cost (CAD) | Total (CAD) |
|-----------|--------------|----------|-----------------|-------------|
| **Firewall** | | | | |
| Palo Alto PA-3420 | Primary NGFW | 1 | $55,000 | $55,000 |
| PA-3420 HA pair | Secondary for HA | 1 | $45,000 | $45,000 |
| Threat Prevention (3yr) | Subscription | 2 | $8,000 | $16,000 |
| URL Filtering (3yr) | Subscription | 2 | $6,000 | $12,000 |
| **Switching** | | | | |
| Cisco Catalyst 9300-48P | Access layer | 2 | $8,000 | $16,000 |
| Cisco Catalyst 9500-24Y4C | Core | 1 | $30,000 | $30,000 |
| **Implementation** | | | | |
| Professional services | Design & implementation | 1 | $15,000 | $15,000 |
| **Total** | | | | **$189,000** |

### Budget-Optimized Configuration

| Component | Specification | Total (CAD) |
|-----------|--------------|-------------|
| Palo Alto PA-3410 (HA pair) | Primary + secondary | $70,000 |
| 3-year subscriptions | Threat, URL, WildFire | $24,000 |
| Cisco Catalyst 9300-48P × 2 | Access switching | $16,000 |
| Cisco Catalyst 9300-24T | Core/distribution | $9,000 |
| GlobalProtect VPN (3yr) | Remote access | $6,000 |
| Cabling and accessories | Fiber, patch cables | $5,000 |
| Professional services | Installation | $25,000 |
| Contingency | | $25,000 |
| **Total** | | **$180,000** |

---

## TRE Network Architecture

### Zone Segmentation

| Zone | VLAN | Purpose | Firewall Policy |
|------|------|---------|-----------------|
| Zone 1 (Identifiable) | VLAN 10 | PHI data processing | Most restrictive |
| Zone 2 (Limited) | VLAN 20 | Limited dataset | Controlled access |
| Zone 3 (De-identified) | VLAN 30 | OMOP analytics | Research access |
| Zone 4 (Public) | VLAN 40 | Published data | External access |
| Management | VLAN 99 | Infrastructure | Admin only |

### Security Features Required

| Feature | Purpose |
|---------|---------|
| App-ID | Application-level visibility |
| User-ID | Identity-based policies |
| SSL Decryption | Encrypted traffic inspection |
| Threat Prevention | IPS/IDS, antivirus |
| URL Filtering | Web security |
| DNS Security | DNS-based threat protection |
| GlobalProtect | Secure VPN access |

---

## Healthcare Compliance

| Requirement | Implementation |
|-------------|----------------|
| HIPAA | Audit logging, access controls |
| Encryption | TLS 1.3 for transit |
| Segmentation | Zone-based architecture |
| Monitoring | SIEM integration ready |
| Incident response | Automated threat blocking |

---

## Vendor Contacts

| Vendor | Contact | Notes |
|--------|---------|-------|
| Palo Alto Networks | [paloaltonetworks.com](https://www.paloaltonetworks.com) | Healthcare specialist |
| Cisco | [cisco.com](https://www.cisco.com) | Canadian enterprise |

---

## Quote Status

- [ ] Request Palo Alto quote via partner
- [ ] Request Cisco quote for switching
- [ ] Confirm UAlberta networking standards
- [ ] Validate integration with campus infrastructure
- [ ] Obtain 3-year subscription pricing

---

*Document prepared for CFI Innovation Fund 2027 budget justification*
