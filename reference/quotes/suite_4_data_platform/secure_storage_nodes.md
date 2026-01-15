# Secure Storage Nodes (On-Premises) - Pricing Reference

**Budget Item ID:** 25
**Suite:** 4 - Data Platform & AI/HPC
**Budget Amount:** $400,000 CAD
**Category:** Equipment
**Date:** January 2026

---

## Overview

On-premises secure storage for the Trusted Research Environment (TRE) to host identifiable data (Zone 1) that cannot be stored in cloud due to privacy requirements. This storage tier complements cloud-based storage for de-identified data.

---

## Recommended Systems

### Option 1: Dell PowerStore

**Manufacturer:** Dell Technologies
**Website:** [dell.com/powerstore](https://www.dell.com/en-ca/dt/storage/powerstore.htm)

#### Models

| Model | Raw Capacity | Effective Capacity | Estimated Price (CAD) |
|-------|-------------|-------------------|----------------------|
| PowerStore 500T | 48 TB | ~100 TB | $80,000 - $120,000 |
| PowerStore 1000T | 96 TB | ~200 TB | $150,000 - $200,000 |
| PowerStore 3000T | 192 TB | ~400 TB | $250,000 - $350,000 |
| PowerStore 5000T | 384 TB | ~800 TB | $400,000 - $500,000 |

#### Key Features
- NVMe-native architecture
- Built-in data reduction (4:1 typical)
- Active-active clustering
- Encryption at rest (FIPS 140-2)
- VMware, container integration
- 99.9999% availability

### Option 2: NetApp AFF (All Flash FAS)

**Manufacturer:** NetApp
**Website:** [netapp.com](https://www.netapp.com/data-storage/aff-a-series/)

#### Models

| Model | Raw Capacity | Effective Capacity | Estimated Price (CAD) |
|-------|-------------|-------------------|----------------------|
| AFF A150 | 46 TB | ~150 TB | $60,000 - $90,000 |
| AFF A250 | 92 TB | ~300 TB | $100,000 - $150,000 |
| AFF A400 | 368 TB | ~1.2 PB | $200,000 - $300,000 |
| AFF A800 | 1.5 PB | ~5 PB | $400,000 - $600,000 |

#### Key Features
- ONTAP data management
- NetApp Volume Encryption
- SnapMirror replication
- Cloud tiering (StorageGRID, AWS)
- Healthcare/HIPAA validated
- Gartner Leader for primary storage

#### Healthcare Reference
NetApp delivered healthcare solutions for Cone Health's digitization of medical records across multiple locations for millions of patients, meeting HIPAA compliance requirements with hybrid cloud (Azure NetApp Files).

#### Sources
- [Dell vs NetApp Comparison](https://www.enterprisestorageforum.com/management/dell-emc-vs-netapp/)
- [NetApp Healthcare Solutions](https://www.netapp.com/blog/SAN-storage-comparison-netapp-vs-dell/)
- [Gartner Peer Insights](https://www.gartner.com/reviews/market/primary-storage-platforms/compare/dell-technologies-vs-netapp)

---

## Budget Configuration

For the $400,000 CAD budget, recommended configuration:

### Primary Configuration (NetApp)

| Component | Specification | Estimated Cost (CAD) |
|-----------|--------------|---------------------|
| NetApp AFF A400 | 368 TB raw (~1.2 PB effective) | $280,000 |
| Additional shelves | 2 × NS224 NVMe shelves | $40,000 |
| Encryption license | NetApp Volume Encryption | $15,000 |
| SnapMirror license | Disaster recovery | $12,000 |
| Professional services | Installation, configuration | $25,000 |
| 3-year support | Premium support | $28,000 |
| **Total** | | **$400,000** |

### Alternative Configuration (Dell)

| Component | Specification | Estimated Cost (CAD) |
|-----------|--------------|---------------------|
| Dell PowerStore 3000T | 192 TB raw (~400 TB effective) | $300,000 |
| Additional expansion | 1 × expansion shelf | $35,000 |
| CloudIQ monitoring | Analytics and monitoring | $10,000 |
| Professional services | Installation, validation | $25,000 |
| 3-year ProSupport | Plus support | $30,000 |
| **Total** | | **$400,000** |

---

## TRE Storage Architecture

### Zone-Based Storage Requirements

| Zone | Data Type | Storage Location | Capacity Needed |
|------|-----------|-----------------|-----------------|
| Zone 1 | Identifiable (PHI) | On-premises only | 200 TB |
| Zone 2 | Limited dataset | On-prem or private cloud | 100 TB |
| Zone 3 | De-identified (OMOP) | Cloud eligible | 500 TB+ |
| Zone 4 | Anonymous/public | Cloud preferred | Variable |

### Security Requirements

| Requirement | Implementation |
|-------------|----------------|
| Encryption at rest | AES-256, FIPS 140-2 |
| Access control | RBAC, AD integration |
| Audit logging | Comprehensive audit trail |
| Network isolation | VLAN segmentation |
| Backup | Daily snapshots, offsite replication |

---

## Comparison Summary

| Feature | Dell PowerStore | NetApp AFF |
|---------|----------------|------------|
| Performance | Excellent | Excellent |
| Data reduction | 4:1 typical | 4:1+ typical |
| Cloud integration | Dell APEX | ONTAP Cloud |
| Healthcare experience | Strong | Extensive (Cone Health) |
| Price/performance | Good | Good |
| Gartner rating | 4.8/5 | 4.8/5 |

---

## Vendor Contacts

| Vendor | Contact | Notes |
|--------|---------|-------|
| Dell Technologies | [dell.com/contact](https://www.dell.com/en-ca/dt/contact-us.htm) | Canadian enterprise sales |
| NetApp | [netapp.com/contact](https://www.netapp.com/company/contact-us/) | Healthcare specialist available |

---

## Quote Status

- [ ] Request formal quote from Dell Canada
- [ ] Request formal quote from NetApp Canada
- [ ] Obtain academic/institutional pricing
- [ ] Confirm encryption and compliance features
- [ ] Validate integration with existing UAlberta infrastructure

---

*Document prepared for CFI Innovation Fund 2027 budget justification*
