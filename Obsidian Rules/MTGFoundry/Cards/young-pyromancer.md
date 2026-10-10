# Young Pyromancer — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Young Pyromancer |
| Oracle identity | `5fac139a-07d3-4e6c-98e3-d98b199f7a6f` |
| MTG mana cost | {1}{R} |
| Mana value | 2 |
| Types | Creature Human Shaman |
| Base P/T | 2/1 |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Tarkir: Dragonstorm Commander |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/tdc/95/young-pyromancer?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `creatureSpell`
- Template key: `young-pyromancer`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Dnd**

- Band Level: 3
- Hp: 15
- Ac: 13
- Speed: 30 ft
- Target Dpr: 8
- Attack: {"name":"Pyromancer's Flame","type":"Ranged Spell Attack","to_hit":"+5","range":"60 ft","damage":"8 (2d6+1) fire"}

- **Trigger:** Whenever controller casts an Instant or Sorcery, create one 1/1 red Elemental creature token. Token is created from cast event before spell resolves and remains even if spell is later countered.
**Elemental Token**

- Metadata: ["Token","Creature","Elemental","Red","1/1","MV0"]
- Physical Band: 1/1 -> MV1/level-1-equivalent
- Hp: 11
- Ac: 13
- Speed: 30 ft
- To Hit: +4
- Target Dpr: 7
- Attack: {"name":"Flame Touch","damage":"7 (2d4+2) fire"}
- Summoning Rule Ref: conversion_rules.summoning


### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{1}{R}",
    "mv": 2,
    "types": [
      "Creature",
      "Human",
      "Shaman"
    ],
    "pt": "2/1",
    "color": "Red"
  },
  "dnd": {
    "band_level": 3,
    "hp": 15,
    "ac": 13,
    "speed": "30 ft",
    "target_dpr": 8,
    "attack": {
      "name": "Pyromancer's Flame",
      "type": "Ranged Spell Attack",
      "to_hit": "+5",
      "range": "60 ft",
      "damage": "8 (2d6+1) fire"
    }
  },
  "trigger": "Whenever controller casts an Instant or Sorcery, create one 1/1 red Elemental creature token. Token is created from cast event before spell resolves and remains even if spell is later countered.",
  "elemental_token": {
    "metadata": [
      "Token",
      "Creature",
      "Elemental",
      "Red",
      "1/1",
      "MV0"
    ],
    "physical_band": "1/1 -> MV1/level-1-equivalent",
    "hp": 11,
    "ac": 13,
    "speed": "30 ft",
    "to_hit": "+4",
    "target_dpr": 7,
    "attack": {
      "name": "Flame Touch",
      "damage": "7 (2d4+2) fire"
    },
    "summoning_rule_ref": "conversion_rules.summoning"
  },
  "status": "locked"
}
```

## Converted Foundry actor

- HP: 15
- AC: 13
- Art/token audit: `REJECT_TOKEN_REGEN_REQUIRED`

- Attack routine: **Pyromancer's Flame**; 8 (2d6+1) fire; count 1

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
