# Dreadhorde Arcanist — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Dreadhorde Arcanist |
| Oracle identity | `4c05b382-58ab-4a2d-a81c-408ea273b6b6` |
| MTG mana cost | {1}{R} |
| Mana value | 2 |
| Types | Creature Zombie Wizard |
| Base P/T | 1/3 |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Foundations Jumpstart |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/j25/539/dreadhorde-arcanist?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `creatureSpell`
- Template key: `dreadhorde-arcanist`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Dnd**

- Band Level: 3
- Alignment: Neutral Evil (conversion inference)
- Hp: 46
- Ac: 15
- Speed: 30 ft
- Target Dpr: 4
- Attack: {"name":"Gravefire Bolt","type":"Ranged Spell Attack","to_hit":"+5","range":"60 ft","damage":"3 (1d6) fire + 1 necrotic","average":4.5}

**Gravefire Arcanist**

- Trigger: When Dreadhorde Arcanist takes the Attack action on its turn.
- Selection: Instant/Sorcery in controller's graveyard with MV <= current Power.
- Cast: Cast immediately for 0 mana; still counts as cast.
- Extra Costs: Required non-mana/additional costs remain; no alternative cost substitution; X=0 unless another effect says otherwise.
- After: If it would go to graveyard after being cast this way, exile it.
- Power Check: Check current Power at target selection and re-check current Power when the triggered ability resolves.
- Extra Attack: Extra Attack does not multiply trigger; a separate Attack action can.

**Trample**

- Distance Beyond Initial: 10 ft
- Rule Ref: conversion_rules.trample


### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{1}{R}",
    "mv": 2,
    "types": [
      "Creature",
      "Zombie",
      "Wizard"
    ],
    "pt": "1/3",
    "keywords": [
      "Trample"
    ],
    "color": "Red"
  },
  "dnd": {
    "band_level": 3,
    "alignment": "Neutral Evil (conversion inference)",
    "hp": 46,
    "ac": 15,
    "speed": "30 ft",
    "target_dpr": 4,
    "attack": {
      "name": "Gravefire Bolt",
      "type": "Ranged Spell Attack",
      "to_hit": "+5",
      "range": "60 ft",
      "damage": "3 (1d6) fire + 1 necrotic",
      "average": 4.5
    }
  },
  "gravefire_arcanist": {
    "trigger": "When Dreadhorde Arcanist takes the Attack action on its turn.",
    "selection": "Instant/Sorcery in controller's graveyard with MV <= current Power.",
    "cast": "Cast immediately for 0 mana; still counts as cast.",
    "extra_costs": "Required non-mana/additional costs remain; no alternative cost substitution; X=0 unless another effect says otherwise.",
    "after": "If it would go to graveyard after being cast this way, exile it.",
    "power_check": "Check current Power at target selection and re-check current Power when the triggered ability resolves.",
    "extra_attack": "Extra Attack does not multiply trigger; a separate Attack action can."
  },
  "trample": {
    "distance_beyond_initial": "10 ft",
    "rule_ref": "conversion_rules.trample"
  },
  "status": "locked"
}
```

## Converted Foundry actor

- HP: 46
- AC: 15
- Art/token audit: `REJECT_TOKEN_REGEN_REQUIRED`

- Attack routine: **Gravefire Bolt**; 3 (1d6) fire + 1 necrotic; count 1

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
