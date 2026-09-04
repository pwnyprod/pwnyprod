# Agent-Harness — Stand 2026-09-03

Gepflegt vom Skill `agent-instructions-optimize`. Der nächste Lauf liest den
Backlog zuerst.

## Scorecard (0–3)

| Dimension | Vorher | Nachher |
|---|---:|---:|
| Kanonik & Symlinks | 3 | 3 |
| Faktentreue | 3 | 3 |
| Kontext-Ökonomie | 3 | 3 |
| Navigationskarte | 2 | 3 |
| Guardrails | 1 | 2 |
| Verifikations-Schleife | 3 | 3 |
| Path-scoped Instructions | 0 | 3 |
| Skills | 0 | 3 |
| Prompts | 0 | 3 |
| **Summe** | **15/27** | **26/27** |

## Agent-Abdeckung

| Agent | Datei | Status |
|---|---|---|
| codex | `AGENTS.md` | real, Git-Modus `100644` |
| agy | `AGENTS.md` + `GEMINI.md` | real + Symlink |
| claude | `CLAUDE.md` | Symlink → `AGENTS.md`, Git-Modus `120000` |
| gemini | `GEMINI.md` | Symlink → `AGENTS.md`, Git-Modus `120000` |
| copilot | `.github/copilot-instructions.md` | Symlink → `../AGENTS.md`, Git-Modus `120000` |

Guardrails-Abschnitt in `AGENTS.md`: vorhanden.
Path-scoped Regeln: Copilot-Datei plus Antigravity-Spiegel vorhanden.
Skill gespiegelt: `.agents/skills/readme-scribe-update/` plus Claude-/Copilot-Symlinks und Gemini-Wrapper.
Prompt gespiegelt: 3 von 3 nativ unterstützten Agents (Copilot/Claude/Gemini); Codex und Antigravity per Verweis in `AGENTS.md`.

## In diesem Lauf

- `AGENTS.md` als kanonische Quelle bestätigt und die drei vorhandenen Mirrors als Symlinks belassen.
- Guardrails als eigener, belegter Abschnitt geschärft; eine unbelegte PR-Zusammenfassungsregel entfernt.
- Path-scoped README-Regeln in `.github/instructions/readme-generator.instructions.md` und `.agents/rules/readme-generator.md` angelegt.
- Wiederkehrenden Template-/Workflow-Ablauf als `.agents/skills/readme-scribe-update/SKILL.md` mit Claude-/Copilot-Symlinks und Gemini-Wrapper dokumentiert.
- `validate-readme-change` als Copilot-, Claude- und Gemini-Prompt gespiegelt.
- `git diff --check` und beide Gemini-TOML-Dateien validiert; kein Projekt-Linter, Formatter, Build oder Test vorhanden.

## Backlog (nächster Lauf, wichtigstes zuerst)

1. Nach dem nächsten GitHub-Actions-Lauf prüfen, dass `README.md` weiterhin aus `templates/README.md.tpl` erzeugt wird; lokal gibt es dafür keinen konfigurierten Generator.
2. Guardrails erneut gegen eventuell später hinzugefügte `.claude/settings.json`, `.gemini/settings.json` oder `.codex/config.toml` prüfen; aktuell existieren diese Dateien nicht.
3. Neue Teilbäume nur bei belegten, wiederkehrenden Regeln um path-scoped Instructions oder Skills erweitern.

## Offene Fragen an den User

- Keine inhaltlichen Konflikte gefunden.
