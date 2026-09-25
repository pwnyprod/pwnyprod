# Agent-Harness — Stand 2026-09-13

Gepflegt vom Skill `agent-instructions-optimize`. Der nächste Lauf liest den
Backlog zuerst.

## Scorecard (0–3)

| Dimension | Vorher | Nachher |
|---|---:|---:|
| Kanonik & Symlinks | 3 | 3 |
| Faktentreue | 3 | 3 |
| Kontext-Ökonomie | 3 | 3 |
| Navigationskarte | 3 | 3 |
| Guardrails | 2 | 3 |
| Verifikations-Schleife | 3 | 3 |
| Path-scoped Instructions | 3 | 3 |
| Skills | 3 | 3 |
| Prompts | 3 | 3 |
| **Summe** | **26/27** | **27/27** |

## Agent-Abdeckung

| Agent | Datei | Status |
|---|---|---|
| codex | `AGENTS.md` | real, Git-Modus `100644` |
| agy | `AGENTS.md` + `GEMINI.md` | real + Symlink (`120000`) |
| claude | `CLAUDE.md` | Symlink → `AGENTS.md`, Git-Modus `120000` |
| gemini | `GEMINI.md` | Symlink → `AGENTS.md`, Git-Modus `120000` |
| copilot | `.github/copilot-instructions.md` | Symlink → `../AGENTS.md`, Git-Modus `120000` |
| opencode | `AGENTS.md` (dieselbe Datei wie codex) | real, kein Extra-Symlink nötig |

Guardrails-Abschnitt in `AGENTS.md`: vorhanden, gegen den Schritt-6-Katalog (destruktive
Targets, Prod-Deploy, Secrets-Dateien, Force-Push-CI) durchgeprüft — für dieses Repo
vollständig oder nicht zutreffend (kein Makefile, keine `.env`, kein Force-Push-Job).
Path-scoped Regeln: `.github/instructions/readme-generator.instructions.md` +
Antigravity-Spiegel `.agents/rules/readme-generator.md`, beide inhaltsgleich mit
Workflow/Template verifiziert.
Skill gespiegelt: `.agents/skills/readme-scribe-update/SKILL.md` plus
`.claude/skills/readme-scribe-update` und `.copilot/skills/readme-scribe-update`
(Symlinks, verifiziert) und `.gemini/commands/readme-scribe-update.toml` (Wrapper).
Prompt gespiegelt: 3 von 3 nativ unterstützten Agents (`.github/prompts/validate-readme-change.prompt.md`,
`.claude/commands/validate-readme-change.md`, `.gemini/commands/validate-readme-change.toml`);
Codex und Antigravity per Verweiszeile in `AGENTS.md`.

## In diesem Lauf

Reiner Verifikationslauf — keine Drift gefunden, nichts inhaltlich geändert.

- `.agents/harness.md`-Backlog vom 2026-09-03 abgearbeitet:
  1. `.github/workflows/readme-scribe.yml` gegen `AGENTS.md` gelesen und geprüft: Template-Pfad
     (`templates/README.md.tpl`), `writeTo` (`README.md`), Secrets (`PERSONAL_GITHUB_TOKEN`,
     `GITHUB_TOKEN`) und Ziel-Branch (`main`) stimmen weiterhin exakt mit der Dokumentation überein.
  2. `.claude/settings.json`, `.gemini/settings.json`, `.codex/config.toml` erneut geprüft:
     existieren weiterhin nicht — keine technische Durchsetzung zu referenzieren.
  3. Keine neuen wiederkehrenden Teilbaum-Workflows im Repo gefunden — kein neuer
     Skill/Prompt nötig.
- Alle vier Kanonik-Dateien erneut per `readlink`/`git ls-files -s` verifiziert: drei
  Symlinks korrekt (`120000`), `AGENTS.md` real (`100644`).
- `.gitignore` gegen den Text „IntelliJ project files and generated IDE output" in
  `AGENTS.md` abgeglichen (`.idea`, `*.iml`, `out`, `gen`) — deckt sich.
- `README.md` gegen `templates/README.md.tpl` verglichen: Kopf identisch (erwartetes
  Generat-Verhalten des Workflows), keine manuelle Abweichung.
- Guardrails-Dimension von 2 auf 3 gehoben: gegen den vollständigen Schritt-6-Katalog
  geprüft, keine belegte Lücke mehr offen für dieses Repo.
- `git status --short` zeigt nur `.DS_Store` und `graphify-out/` als untracked — beides
  außerhalb des Harness-Scopes, nicht angefasst.

## Backlog (nächster Lauf, wichtigstes zuerst)

1. Bei nächstem Lauf erneut prüfen, dass `.github/workflows/readme-scribe.yml` weiterhin
   `templates/README.md.tpl` → `README.md` gegen `main` schreibt (einzige Stelle, die sich
   ohne Repo-Commit ändern könnte, z. B. durch GitHub-UI-Edits).
2. Sollte künftig `.claude/settings.json`, `.gemini/settings.json` oder `.codex/config.toml`
   angelegt werden, Guardrails-Abschnitt in `AGENTS.md` gegen deren `permissions`/Approval-
   Overrides abgleichen und die Lücke im Bericht vermerken (dieser Skill editiert diese
   Dateien nicht selbst).
3. Neue Teilbäume/Workflows nur bei belegten, wiederkehrenden Mustern um path-scoped
   Instructions oder Skills erweitern — aktuell keine Kandidaten.

## Offene Fragen an den User

- Keine inhaltlichen Konflikte gefunden.
