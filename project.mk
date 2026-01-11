# Project-specific defaults for CFI CTAP
PROJECT := cfi-ctap

# Primary document (RTA stage - default)
MANUSCRIPT := derived/rta/rta.md

# Bibliography (auto-exported from Zotero)
# Path relative to repo root (writing/)
BIB := projects/cfi-ctap/references.bib

# Citation style
CSL := shared/csl/vancouver.csl

# Word template
REFDOC := shared/reference-doc/cihr-reference.docx

# =============================================================================
# Multi-Document Configuration for Google Docs Workflow
# =============================================================================
# Use with: make all-docx PROJECT=cfi-ctap
#           make all-gdoc PROJECT=cfi-ctap
# =============================================================================

# List of documents to build (space-separated)
# Core documents
DOCUMENTS := rta full_app budget_narrative
# Briefs (executive and suite concept briefs)
DOCUMENTS += exec_brief suite_1 suite_2 suite_3 suite_4 suite_5

# Document-specific manuscript paths
# Format: <doc_name>_MANUSCRIPT := <path_relative_to_project>

# Core documents
rta_MANUSCRIPT := derived/rta/rta.md
full_app_MANUSCRIPT := derived/full_app/full_application.md
budget_narrative_MANUSCRIPT := derived/budget/budget_narrative.md

# Briefs
exec_brief_MANUSCRIPT := derived/briefs/executive_brief.md
suite_1_MANUSCRIPT := derived/briefs/suite_1_clinical_trials.md
suite_2_MANUSCRIPT := derived/briefs/suite_2_biospecimen.md
suite_3_MANUSCRIPT := derived/briefs/suite_3_translational.md
suite_4_MANUSCRIPT := derived/briefs/suite_4_data_platform.md
suite_5_MANUSCRIPT := derived/briefs/suite_5_innovation.md

# Google Drive folder structure
# Documents will be uploaded to: writing_projects/cfi-ctap/<subfolder>/
# The subfolder is determined by the directory containing the manuscript
# e.g., rta/rta.md -> writing_projects/cfi-ctap/rta/

# =============================================================================
# Build Commands
# =============================================================================
# Single document:
#   make docx PROJECT=cfi-ctap                          # Default (RTA)
#   make docx PROJECT=cfi-ctap MANUSCRIPT=rta/rta.md    # Explicit RTA
#   make gdoc PROJECT=cfi-ctap MANUSCRIPT=rta/rta.md    # Upload RTA to Drive
#
# All documents:
#   make all-docx PROJECT=cfi-ctap                      # Build all DOCX
#   make all-gdoc PROJECT=cfi-ctap                      # Build and upload all
#
# View tracking:
#   make gdoc-info PROJECT=cfi-ctap                     # Show tracked Google Docs
#   make gdoc-list                                      # List all tracked docs
# =============================================================================
