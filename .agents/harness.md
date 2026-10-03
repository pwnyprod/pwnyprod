# Agent-Harness — Stand 2026-10-03

Gepflegt vom Skill `agent-instructions-optimize`. Der nächste Lauf liest den
Backlog zuerst.

## Scorecard (0–3)

| Dimension | Vorher | Nachher |
|---|---:|---:|
| Kanonik & Symlinks | 3 | 3 |
| Faktentreue | 2 | 3 |
| Kontext-Ökonomie | 3 | 3 |
| Navigationskarte | 3 | 3 |
| Guardrails | 3 | 3 |
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

Keine verschachtelten `AGENTS.md` (Suche ohne `.git/` und `graphify-out/`).
Guardrails-Abschnitt in `AGENTS.md`: vorhanden; um `graphify-out/` ergänzt.
Path-scoped Regeln: `.github/instructions/readme-generator.instructions.md` +
Antigravity-Spiegel `.agents/rules/readme-generator.md` (inhaltsgleich).
Skill gespiegelt: `.agents/skills/readme-scribe-update/SKILL.md` plus
`.claude/skills/readme-scribe-update` und `.copilot/skills/readme-scribe-update`
(Symlinks, Git-Modus `120000`) und `.gemini/commands/readme-scribe-update.toml` (Wrapper).
Prompt gespiegelt: 3 von 3 nativ unterstützten Agents (copilot/claude/gemini);
Codex und Antigravity per Verweiszeile in `AGENTS.md`.
Technische Durchsetzung: `.claude/settings*.json`, `.gemini/settings.json`,
`.codex/config.toml`, `.mcp.json` existieren nicht.

## In diesem Lauf

- Drift seit letztem Lauf: Commits `8ea071f`/`361a228` (2026-09-25) haben `.DS_Store` und
  `graphify-out/` in `.gitignore` aufgenommen → `AGENTS.md`-Beschreibung von `.gitignore`
  korrigiert und Guardrail „generierte lokale Dateien" um `graphify-out/` ergänzt.
- Workflow-Gotcha aufgenommen: Bot committet bei jedem Push und stündlich auf `main`
  (Beleg: `readme-scribe.yml` `cron: "0 */1 * * *"`, `branch: main`; 1039 Bot-Commits) →
  vor dem Push `origin/main` integrieren.
- Commit-Konvention belegt aufgenommen: letzte 5 menschliche Commits sind englische
  Conventional Commits (`docs:`/`chore:`/`fix:`), Bot-Commits `Update generated README`.
- Backlog 1 erledigt: Workflow schreibt weiterhin `templates/README.md.tpl` → `README.md`
  auf `main` mit `PERSONAL_GITHUB_TOKEN`/`GITHUB_TOKEN`; Actions bleiben auf `@master`/`@v4`
  (keine Patch-Versionen in `AGENTS.md`).
- Backlog 2: Settings-Dateien existieren weiterhin nicht. Backlog 3: keine neuen Kandidaten.
- Secrets-Scan über alle getrackten Dateien: keine Klartext-Tokens; Workflow nutzt nur
  `secrets.*`-Referenzen.
- Fixup-Muster im Log: einmalig `361a228` (per Skript angehängte `.gitignore`-Zeile ohne
  Zeilenumbruch), ein Merge `57aa080` von 2022 — nicht wiederkehrend, kein Skill/Prompt nötig.

## Backlog (nächster Lauf, wichtigstes zuerst)

1. `.github/workflows/readme-scribe.yml` erneut gegen `AGENTS.md` prüfen (Template-Pfad,
   `writeTo`, `main`, Secret-Namen, Trigger).
2. `.gitignore` gegen die Aufzählung in `AGENTS.md` und die Guardrail-Zeile abgleichen.
3. Falls `.claude/settings.json`, `.gemini/settings.json` oder `.codex/config.toml` angelegt
   werden: Guardrails dagegen abgleichen (nicht selbst editieren).

## Offene Fragen an den User

- Keine inhaltlichen Konflikte gefunden.
