---
name: readme-scribe-update
description: "Update or review this repository's generated GitHub profile README and its readme-scribe workflow. Use for: README template changes, readme-scribe workflow changes, generated README validation."
---

# README Scribe update

1. Inspect `templates/README.md.tpl`, `README.md`, and `.github/workflows/readme-scribe.yml` before editing.
2. Put persistent profile or layout changes in `templates/README.md.tpl`; do not hand-edit generated `README.md`.
3. Preserve the template's `{{range ...}}` and `{{- end}}` directives.
4. When changing the workflow, verify its `template`/`writeTo` paths, `main` branch, and `PERSONAL_GITHUB_TOKEN`/`GITHUB_TOKEN` secret names against the complete file.
5. Run `git diff --check`, then review the diff. No local build, test, lint, or formatter command is configured for this repository; GitHub Actions is authoritative for workflow execution.
