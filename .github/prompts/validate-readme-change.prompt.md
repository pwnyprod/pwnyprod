---
description: Validate a README template or readme-scribe workflow change in pwnyprod.
---

Review the current working-tree diff for a pwnyprod README, README template, or readme-scribe workflow change.

Verify that:

- persistent content is in `templates/README.md.tpl`, not a hand-edit to generated `README.md`;
- the template's `{{range ...}}` and `{{- end}}` directives remain intact;
- workflow paths, `main`, `PERSONAL_GITHUB_TOKEN`, and `GITHUB_TOKEN` are unchanged unless the diff explicitly intends that change;
- `git diff --check` passes.

Report findings with file and line references. Do not modify files.
