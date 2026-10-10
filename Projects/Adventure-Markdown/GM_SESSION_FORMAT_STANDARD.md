# Portable GM Session Writing Standard

This is a reusable standard for RPG session production, maintained with the Shadowrun Arcology source documentation. The requirements are system-neutral; Foundry and game system mechanics are adapted project by project.

## Active requirements

**Status:** canonical additive contract for Shadowrun Arcology and other RPG projects.  
**Original source:** `RPG_Module_Build_Standards_RUNNING_2026-10-04.md` §7.1–7.4, including the 2026-10-04 mandatory three-layer Scene Dashboard requirement.  
**This file extends that standard; it does not replace or reduce it.**

## 1. Required deliverables

| Layer | Folder | What it must contain | Intended use |
|---|---|---|---|
| Full playable GM guide | `Sessions/` | Continuous living-world scene walkthrough with sensory openings, NPC agency, exploration, checks/consequences and transitions; separate daily Markdown | Running the actual story |
| **Pre-prep** | `Prep/00-PrePrep.md` | Tasks before play, review of previous choices, source validation, assets, staged NPC positions, reveal permissions, setup check | Preparing in advance |
| **GM prep** | `Prep/01-GM-Prep.md` | Full non-narrative NPC aims, map options, checks, roll tables, threat tracks, secrets, reveal timing, contingency and encounter matrix | Behind-screen reference |
| **Session summary** | `Prep/02-Session-Summary.md` | Concise overview, timeline, choices, stakes, outcomes and handoff; clearly mark proposed versus established events | Before and after each game |
| **Quick access** | `QuickAccess/00-Quick-Access.md` | A one-page-at-a-glance runtime control panel with agenda, anchors, NPC names, clocks, hooks, decisions and useful quick links | Live GM control |
| **Per-scene dashboards** | `Dashboards/` | One compact Markdown file **for each playable scene** plus a dashboard index ordered by play sequence | Seconds-long reminders |
| **Index and daily navigation** | `INDEX.md`, `Sessions/INDEX.md` | Linked date index, run order, sources, cross-layer links, continuation notes | Finding anything immediately |
| **Persistent continuity** | `CONTINUITY_AND_RECAP_TEMPLATE.md` and per-session notes | Immutable canon separated from player choices and contingent branches; updates after play | Preventing contradictions |

Keep the full continuous guide, standalone prep and dashboards **distinct**. A summary or dashboard must never stand in for prose runbook material.

## 2. Day-by-day and scene splitting

- Every story day gets its own `Sessions/Day-XX.md` Markdown, whether played slowly or fast-forwarded.
- Preserve an approved old guide **unchanged** in its own `Original-Prelude-v2/` and keep the full original master in `Sessions/`.
- A day can contain several H2 scenes; each playable H2 scene receives its own numbered dashboard, using filenames `Day-XX-01-short-slug.md`.
- A companion `Dashboards/INDEX.md` links all scenes; daily guides link their dashboard counterparts.
- New material is **additive**, labeled as optional insertions, and must not silently overwrite fixed continuity.
- When dates are rapidly advanced, write the *specific daily lived experience* first, then invite a concise montage; fast-forward is not a substitute for worldbuilding.

## 3. Runbook scene requirements

Each scene should contain a clear start and purpose; atmosphere and descriptive details; three simultaneous layers (worker, resident, system); credible NPC wants/fears; dialogue suggestions; choices and exits; physical routes and objects; narrative-dice checks where meaningful; success, advantage, triumph, failure, threat and despair interpretations; fail-forward alternatives; discovery independent of one skill check; optional pressure/event; consequences and next-scene link. Provide Foundry setup if maps/actors exist, but do not assert assets exist without verification.

## 4. Dashboard schema

Use compact bullets/tables under: **Now / Stakes**, **Entry state**, **Quick beats**, **NPC reactions**, **Checks**, **Physical situation**, **Reveals: player-facing vs GM-only**, **Branches and failure-forward**, **Exit state**, and **Critical reminders**. For a fast-forward scene, less prose and a single decision are acceptable; never omit the dashboard.

## 5. Story continuity and player agency

Established arcology baseline:
- **2059-12-09:** Frank and Angie first meet in Maintenance Node 7-G; contact, log, escape, Hidoshi retrieval, surviving `7G_ANOMALY.log` are fixed as previously agreed.
- **2059-12-19 18:55:** return/reunion to Node 7-G.
- **2059-12-19 19:02:09 PST:** the Shutdown starts; do not change this timestamp.
- **Hidoshi Tarada is Angie's father**. Describe emotional connection through actions and dialogue; do not dictate Angie's feelings.
- Angie and Frank, their abilities, equipment, relationships, and learned clues remain player-controlled except fixed agreed beats. Never decide their future choices in a note.
- The entity behind incidents is **not publicly identified as Deus** in the pre-Shutdown period. Keep GM-only reasoning hidden. Not every accident or conflict must be Deus's direct work.

## 6. The two-session progression

- **Session 02, December 9–12**: Day 9 continuously, Day 10 at deliberate slow pace, Day 11–12 accelerate with the first urgent physical stakes.
- **Session 03, December 13–19**: Daily accelerated but vivid vignettes; danger and meaningful intervention after the 10th, escalating to the known December 19 climax.
- Table schedule flexible: if players linger, carry unused day material to the next real-world sitting without changing in-universe dates. This two-session split is a planning map, not railroad.

## 7. Hydration/QA checklist

- [ ] Reload latest source Markdown, continuity/GM-only files and the most recent table recap.
- [ ] Compare against canonical existing runbook; no original text removed, no timeline retcon.
- [ ] Every day has complete standalone Markdown; every active scene a dashboard and link.
- [ ] Pre-prep, prep, summary, quick access and two session guides exist, with useful nonduplicate roles.
- [ ] NPCs each want something unrelated to player missions; at least three living-world layers in public spaces.
- [ ] Choices affect civilians, trust, resources, timing or route. Failed checks open a different problem, never block a fixed scene.
- [ ] Secrets correctly separated; public handouts never contain GM truth.
- [ ] Foundry assets/maps/actors are referenced conditionally unless verified present.
- [ ] At session end record elapsed in-world clock, NPC fates, evidence copies, relationship promises, inventory and unresolved hooks.
- [ ] Keep `INDEX.md` and all dashboard indexes correct after changes.
