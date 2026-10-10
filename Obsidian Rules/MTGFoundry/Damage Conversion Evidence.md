# Damage Conversion Evidence — MTGFoundry

**Rules baseline:** Planeswalker5e checkpoint v9 §7.3. **Source audit:** 2026-10-10, current Pwalk5e native Item definitions.

## Direct MTG damage / life

Default magnitude is **1 MTG point ≈ 2.5 D&D hit points**; use half-up rounding. Distinguish *typed damage* from *life paid/lost* (direct HP loss). Card-specific exceptions override this default.

| MTG amount | D&D amount | Basis |
|---:|---:|---|
| 0 | 0 | Calculated default; not a separate card approval |
| 1 | 3 | Source-confirmed examples + multiplier |
| 2 | 5 | Source-confirmed examples + multiplier |
| 3 | 8 | Calculated default; not a separate card approval |
| 4 | 10 | Source-confirmed examples + multiplier |
| 5 | 13 | Calculated default; not a separate card approval |
| 6 | 15 | Calculated default; not a separate card approval |
| 7 | 18 | Calculated default; not a separate card approval |
| 8 | 20 | Calculated default; not a separate card approval |
| 9 | 23 | Calculated default; not a separate card approval |
| 10 | 25 | Calculated default; not a separate card approval |
| 11 | 28 | Calculated default; not a separate card approval |
| 12 | 30 | Calculated default; not a separate card approval |
| 13 | 33 | Calculated default; not a separate card approval |
| 14 | 35 | Calculated default; not a separate card approval |
| 15 | 38 | Calculated default; not a separate card approval |
| 16 | 40 | Calculated default; not a separate card approval |
| 17 | 43 | Calculated default; not a separate card approval |
| 18 | 45 | Calculated default; not a separate card approval |
| 19 | 48 | Calculated default; not a separate card approval |
| 20 | 50 | Calculated default; not a separate card approval |

## Verified examples in source-converted cards

| MTG effect | Converted effect | Evidence |
|---|---|---|
| Guttersnipe — 2 damage | 5 per opposing side on relevant spell cast | [[Cards/guttersnipe]] converted `ability` |
| Fiery Inscription — 2 damage | 5 per opposing side on relevant spell cast | [[Cards/fiery-inscription]] converted `trigger` |
| Reckless Rage — 4 enemy / 2 friendly | 10 fire enemy / 5 fire friendly | [[Cards/reckless-rage]] converted `dnd` |
| Talisman of Conviction — 1 self-damage | 3 typed HP damage | [[Cards/talisman-of-conviction]] converted `damage_rule` |

**Caution:** Other card targets and triggers may be implementation-specific. For example, some native source definitions still mark damage type as pending.

## Different formula for creature Power

**Do not use this 2.5 multiplier for +1 Power.** MV gives a level band. Creature damage derives from that band's expected PC DPR multiplied by the printed/current Power ratio relative to a typical creature of that MV. `+1 Power` changes derived DPR *within the current tier*. The checkpoint does **not** define exact per-tier expected Power values, HP baselines or DPR baselines.

Example: [[Cards/defiant-strike]] explicitly says recalculate Power-dependent DPR/abilities for the +1/+0 duration; it does not grant flat +2.5 attack damage.

## Conversion needs still open

- Recover/approve per-MV expected creature Power, Toughness, PC HP and PC DPR baselines; avoid invented numerical tables.
- Distinguish damage vs lifeloss and healing in every card.
- Reconcile any newer card-specific conversion overrides with current module source.
