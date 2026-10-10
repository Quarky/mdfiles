# Chandra, Acolyte of Flame — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Chandra, Acolyte of Flame |
| Oracle identity | `626e8acc-20da-496c-9a79-bfbf7529c01d` |
| MTG mana cost | {1}{R}{R} |
| Mana value | 3 |
| Types | Planeswalker |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Core Set 2020 |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/m20/126/chandra-acolyte-of-flame?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `planeswalkerSpell`
- Template key: `chandra-acolyte-of-flame`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **StartingLoyalty:** 4
- **StartingHp:** 80

### Exact structured conversion payload

```json
{
  "locked": true,
  "source": "docs/qa/ISSUE_33_CHANDRA_APPROVED_CONVERSION_SPEC.md",
  "startingLoyalty": 4,
  "startingHp": 80
}
```

## Converted Foundry actor

- HP: 80
- AC: unavailable
- Art/token audit: `not recorded`


## Newer approved Chandra rules — 2026-10-08

This section comes from [approved issue #33](https://github.com/Quarky/Pwalk5e/blob/main/docs/qa/ISSUE_33_CHANDRA_APPROVED_CONVERSION_SPEC.md), newer and more specific than the v9 checkpoint. These are *approved conversion mechanics*, not an assertion of completed live acceptance.

- Both versions begin at **4 loyalty**. Chandra commands spend the controller's **Action**, are **combat-only**, use sorcery timing and allow **one loyalty ability per turn**.
- Native D&D healing cannot restore a summoned Planeswalker. Damage reduces HP and synchronizes loyalty down; explicit loyalty changes adjust both current and maximum HP, preserving partial damage.
- `hpPerLoyalty = startingHP / 4`; `derivedLoyalty = ceil(currentHP / hpPerLoyalty)` for HP above zero, subject to cap; `maxHPAtLoyalty(L) = floor(hpPerLoyalty * L)`. At zero HP/loyalty, remove through the usual graveyard lifecycle.

### Acolyte of Flame abilities

| Loyalty cost | Conversion |
|---|---|
| 0 | Each red Planeswalker the controller controls gains +1 loyalty, applying the corresponding HP/max HP increase. |
| 0 | Create **two 1/1 red Elemental** tokens with haste; sacrifice them at the next end step. Reuse the locked token: **11 HP, AC 13, speed 30 ft, +4 to hit, Flame Touch 7 (2d4+2) fire**. |
| -2 | Cast an Instant or Sorcery card with **MV 3 or less** from controller's graveyard through the canonical pipeline; exile it instead of returning it to graveyard after this cast. Avoid double action/mana charging. |

Acolyte HP threshold: **20 HP per loyalty**, so loyalty 1/2/3/4 has maximum HP 20/40/60/80. Explicit increases continue cumulative 20-HP bands.

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
