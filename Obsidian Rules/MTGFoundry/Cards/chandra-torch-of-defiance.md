# Chandra, Torch of Defiance — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Chandra, Torch of Defiance |
| Oracle identity | `12cc800c-c7be-4811-8207-fd01a99cc892` |
| MTG mana cost | {2}{R}{R} |
| Mana value | 4 |
| Types | Planeswalker |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Reality Fracture |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/fra/309/chandra-torch-of-defiance?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `planeswalkerSpell`
- Template key: `chandra-torch-of-defiance`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **StartingLoyalty:** 4
- **StartingHp:** 90

### Exact structured conversion payload

```json
{
  "locked": true,
  "source": "docs/qa/ISSUE_33_CHANDRA_APPROVED_CONVERSION_SPEC.md",
  "startingLoyalty": 4,
  "startingHp": 90
}
```

## Converted Foundry actor

- HP: 90
- AC: unavailable
- Art/token audit: `not recorded`


## Newer approved Chandra rules — 2026-10-08

This section comes from [approved issue #33](https://github.com/Quarky/Pwalk5e/blob/main/docs/qa/ISSUE_33_CHANDRA_APPROVED_CONVERSION_SPEC.md), newer and more specific than the v9 checkpoint. These are *approved conversion mechanics*, not an assertion of completed live acceptance.

- Both versions begin at **4 loyalty**. Chandra commands spend the controller's **Action**, are **combat-only**, use sorcery timing and allow **one loyalty ability per turn**.
- Native D&D healing cannot restore a summoned Planeswalker. Damage reduces HP and synchronizes loyalty down; explicit loyalty changes adjust both current and maximum HP, preserving partial damage.
- `hpPerLoyalty = startingHP / 4`; `derivedLoyalty = ceil(currentHP / hpPerLoyalty)` for HP above zero, subject to cap; `maxHPAtLoyalty(L) = floor(hpPerLoyalty * L)`. At zero HP/loyalty, remove through the usual graveyard lifecycle.

### Torch of Defiance abilities

| Loyalty cost | Conversion |
|---|---|
| +1 | Exile the Library's top card with temporary cast permission; if not cast via that permission, deal **5 D&D damage** (2 MTG) to each opponent. |
| +1 | Add **{R}{R} to stored mana**, which may overflow its usual cap; unspent mana follows the existing mana-burn rule. |
| -3 | Deal **10 D&D fire damage** (4 MTG) to one target creature. |
| -7 | Create a persistent emblem: on qualifying spell cast, deal **13 D&D fire damage** (5 MTG) to any legal target. Activation is combat-only, but emblem triggers persist afterward, including outside combat. |

Torch HP threshold: **22.5 HP/loyalty** with cumulative-floor maximums: L1→22, L2→45, L3→67, L4→90, L5→112. On damage, HP 68–90→L4; 46–67→L3; 23–45→L2; 1–22→L1; 0→L0.

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
