# Star Wars FFG Session Markdown Hydration Spec — Session + Prep + Scene Dashboards

**Campaign:** Chronicles of the Gatekeeper  
**Spec update:** 2026-10-04

This campaign uses **three complementary Markdown layers**. The dashboard layer is additive and must remain separate; it does not replace the other session documents.

## Layer 1 — Extended Session / living-world runbook

Keep the complete table-running document with scene-by-scene walkthroughs, sensory openings, NPC behavior, dialogue, checks, narrative-dice outcomes, failure-forward handling, clocks, map use, branches, discoveries, transitions, and carry-forward state. This remains the authoritative runtime detail.

## Layer 2 — Prep / reference material

Keep preparation and support material separate where it improves use: GM engines, trackers, handout/reveal indexes, encounter/reference notes, campaign continuity, and other preparation documents. Do not collapse these into the dashboard merely to reduce file count.

## Layer 3 — Scene Dashboards — required separate Markdown files

Create a **separate fast-scan Markdown dashboard for every playable scene or major runtime beat**. Also create a per-session dashboard index and a campaign-wide master dashboard index when useful.

Each scene dashboard should prioritize quick table recall with concise bullets and tables for:

- scene purpose and stakes;
- starting state / what is already moving without the PCs;
- critical NPCs or forces in motion;
- immediately relevant checks and mechanics;
- hazards, clocks, pressure, and escalation;
- clues, discoveries, and information boundaries;
- important player choices and branch handling;
- failure-forward consequences;
- likely outcomes and transition / carry-forward state;
- a link back to the authoritative Extended Session.

### Dashboard rules

1. **Do not replace the Extended Session.** Exact dialogue, full map keys, deep branches, detailed mechanics, provenance, and complete living-world treatment stay in the runbook.
2. **Do not replace Prep / Reference.** Trackers, handout indexes, shared engines, and preparation material remain available as their own layer.
3. Keep dashboards fast to parse during play. Prefer concise tables and bullets over long prose.
4. Keep one dashboard scoped to one playable scene/major beat unless two beats are inseparable in actual table use.
5. Preserve GM/player information boundaries. The dashboard is GM-facing unless explicitly marked otherwise.
6. When the source changes, refresh the affected dashboard so it never contradicts the authoritative session document.

## Installer behavior

Markdown installers for this campaign should install the current Extended Session files, current Prep/Reference files, and the separate Scene Dashboard layer together. Before overwriting an existing note, back up the prior note to a timestamped campaign-specific backup folder at the Obsidian vault root.
