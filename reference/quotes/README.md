# Vendor Quotes and Pricing Documentation

This folder contains vendor quotes, pricing documentation, and reference materials to support CFI budget justification.

## Folder Structure

```
quotes/
├── README.md                    # This file
├── suite_1_clinical/            # Suite 1: Clinical Trials Infrastructure
├── suite_2_biorepository/       # Suite 2: Living Biorepository
├── suite_3_translational/       # Suite 3: Translational Science Hub
├── suite_4_data_platform/       # Suite 4: Data Platform & AI/HPC
├── suite_5_innovation/          # Suite 5: Trial Innovation & Wearables
└── renovation/                  # Renovation estimates
```

## File Naming Convention

```
[vendor]_[product]_[date].pdf
```

Examples:
- `openspecimen_enterprise_2026-01.pdf`
- `thermofisher_tsx_freezers_2026-01.pdf`
- `aws_proserve_estimate_2026-01.pdf`

## Required Documentation for CFI

For each budget item, CFI requires:

1. **Vendor Quote** (preferred) - Formal quote with pricing breakdown
2. **List Price Documentation** - Published pricing from vendor website
3. **Comparable Quotes** - For items >$100K, multiple quotes recommended

## Quote Status Tracking

The `quote_reference` column in `core/data/budget_items.csv` links to files in this folder.

| Status | Meaning |
|--------|---------|
| Empty | Quote not yet obtained |
| `quotes/filename.pdf` | Quote on file |
| `URL` | Web reference for pricing |

## Priority Items for Quotes

### High Priority (>$200K)
- [ ] Automated Liquid Handling System (Hamilton/Tecan) - $650,000
- [ ] GPU-Enabled Secure Compute Nodes - $800,000
- [ ] Renovations & Fit-Out - $800,000
- [ ] AWS Cloud Credits & Compute Reserve - $500,000
- [ ] High-Throughput Imaging Cytometer - $500,000
- [ ] EDC/eSource Platform - $400,000
- [ ] Data Visualization & Dashboard Software - $380,000

### Medium Priority ($100K-$200K)
- [ ] Ultra-Low Temp Freezers (-80C) - $200,000
- [ ] LN2 Vapour-Phase Storage System - $200,000
- [ ] Vital Sign Monitors (High Acuity) - $200,000
- [ ] Point-of-Care Lab Analyzers - $200,000
- [ ] Automated Dispensing Cabinets - $200,000
- [ ] Cold-Chain Logistics Equipment - $200,000
- [ ] Networking & Security Core - $180,000
- [ ] Cryo-EM Sample Prep Robotics - $150,000
- [ ] High-Throughput Autosamplers - $150,000
- [ ] Environmental Monitoring System - $140,000
- [ ] OpenSpecimen Plugin Development - $125,000
- [ ] Secure IP Pharmacy Storage - $100,000
- [ ] Programmable Infusion Pumps - $100,000
- [ ] Resuscitation Equipment - $100,000
- [ ] Refrigerated Centrifuges - $100,000
- [ ] Remote Monitoring / Telehealth Kits - $100,000
- [ ] Mobile Data Capture Kiosks/Tablets - $100,000
- [ ] Plunge Freezers & Grid Prep Tools - $100,000
- [ ] Identity Management System - $100,000
- [ ] OMOP ETL & OHDSI Tooling - $100,000

## Vendor Contacts

| Vendor | Product Area | Contact |
|--------|--------------|---------|
| OpenSpecimen (Krishagni) | Biobank LIMS | sales@openspecimen.org |
| Hamilton | Liquid Handling | |
| Tecan | Liquid Handling | |
| Thermo Fisher | Freezers, Centrifuges | |
| Chart MVE | LN2 Storage | |
| AWS | Cloud Services | |
| Medidata/Veeva | EDC Platforms | |
| Epic | Connect Care Integration | via AHS |

## Notes

- All quotes should be in CAD or converted at current exchange rate
- Include shipping, installation, and warranty costs where applicable
- Note any academic/institutional discounts applied
- For multi-year licenses, break down annual costs
