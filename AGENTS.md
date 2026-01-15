# Repository Guidelines

## Project Structure & Module Organization
This repository follows a core-to-derived document model.
- `core/` is the source of truth: `core/MASTER.md`, `core/suites/`, and `core/data/*.csv`.
- `derived/` contains generated outputs: `derived/includes/`, `derived/briefs/`, `derived/rta/`, `derived/budget/`, and `derived/full_app/`. Avoid editing these unless explicitly requested, and propagate improvements back to `core/`.
- `assets/` holds figures and prompts; `exports/` holds built DOCX files.
- `reference/` and `references/` store background research and vendor quotes.
- `working/` captures drafts, ideas, and collaboration artifacts.
- `references.bib` is the Zotero auto-export used for citations.

## Build, Test, and Development Commands
Builds use the shared Makefile in the writing workspace; project settings live in `project.mk`.
- `make docx PROJECT=cfi-ctap` builds the default RTA (`derived/rta/rta.md`).
- `make docx PROJECT=cfi-ctap MANUSCRIPT=derived/briefs/executive_brief.md` builds a specific document.
- `make all-docx PROJECT=cfi-ctap` builds all configured outputs.
- `make gdoc PROJECT=cfi-ctap MANUSCRIPT=derived/rta/rta.md` uploads a single document to Google Docs.
- `make gdoc-info PROJECT=cfi-ctap` lists tracked Google Docs.

## Coding Style & Naming Conventions
- Markdown is the primary format; keep paragraphs short and use descriptive headings.
- Filenames are lowercase `snake_case`; suites follow `suite_<number>_*.md`.
- CSV headers are lowercase `snake_case`; update data in `core/data/*.csv` only.
- `core/data/equipment.csv` has a computed `total_cost` (quantity * unit_cost); do not hand-edit it.

## Testing Guidelines
- No automated tests are defined in this repo.
- Validate changes by rebuilding affected documents and spot-checking rendered DOCX outputs in `exports/`.
- For data consistency, run DuckDB queries via the grant-data MCP server using `core/data/views.sql`.

## Commit & Pull Request Guidelines
- Commit messages are short, imperative statements (see `git log`).
- PRs should summarize core vs. derived changes, list rebuilt outputs, and cite sources for new data (e.g., quotes or background docs).
