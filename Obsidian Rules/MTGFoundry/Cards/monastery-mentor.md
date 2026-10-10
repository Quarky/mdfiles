# Monastery Mentor — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Monastery Mentor |
| Oracle identity | `3979067a-9c68-443d-a85f-d9f07be880b9` |
| MTG mana cost | {2}{W} |
| Mana value | 3 |
| Types | Creature Human Monk |
| Base P/T | 2/2 |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Tarkir: Dragonstorm Commander |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/tdc/125/monastery-mentor?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `creatureSpell`
- Template key: `monastery-mentor`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Dnd**

- Band Level: 6
- Hp: 40
- Ac: 16
- Speed: 40 ft
- To Hit: +7
- Target Dpr: 15
- Attack: {"name":"Disciplined Strikes","count":2,"damage_each":"7 (1d6+4) bludgeoning"}

- **Prowess:** Whenever controller casts a noncreature spell, +1/+1 until end of current round. Stacks. Use temporary Toughness buffer; no AC increase unless effect itself is armor-like.
- **Token Trigger:** Whenever controller casts a noncreature spell, create one 1/1 white Monk creature token with Prowess.
**Monk Token**

- Metadata: ["Token","Creature","Monk","White","1/1","Prowess","MV0"]
- Physical Band: 1/1 -> MV1/level-1-equivalent
- Hp: 11
- Ac: 15
- Speed: 40 ft
- Target Dpr: 7
- Summoning Rule Ref: conversion_rules.summoning
- Note: Exact token basic attack name/dice not separately locked.
- Attack: {"name":"Focused Strike","type":"Melee Weapon Attack","to_hit":"+4","reach":"5 ft","damage":"7 (2d4 + 2) bludgeoning","count":1}


### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{2}{W}",
    "mv": 3,
    "types": [
      "Creature",
      "Human",
      "Monk"
    ],
    "pt": "2/2",
    "keywords": [
      "Prowess"
    ],
    "color": "White"
  },
  "dnd": {
    "band_level": 6,
    "hp": 40,
    "ac": 16,
    "speed": "40 ft",
    "to_hit": "+7",
    "target_dpr": 15,
    "attack": {
      "name": "Disciplined Strikes",
      "count": 2,
      "damage_each": "7 (1d6+4) bludgeoning"
    }
  },
  "prowess": "Whenever controller casts a noncreature spell, +1/+1 until end of current round. Stacks. Use temporary Toughness buffer; no AC increase unless effect itself is armor-like.",
  "token_trigger": "Whenever controller casts a noncreature spell, create one 1/1 white Monk creature token with Prowess.",
  "monk_token": {
    "metadata": [
      "Token",
      "Creature",
      "Monk",
      "White",
      "1/1",
      "Prowess",
      "MV0"
    ],
    "physical_band": "1/1 -> MV1/level-1-equivalent",
    "hp": 11,
    "ac": 15,
    "speed": "40 ft",
    "target_dpr": 7,
    "summoning_rule_ref": "conversion_rules.summoning",
    "note": "Exact token basic attack name/dice not separately locked.",
    "attack": {
      "name": "Focused Strike",
      "type": "Melee Weapon Attack",
      "to_hit": "+4",
      "reach": "5 ft",
      "damage": "7 (2d4 + 2) bludgeoning",
      "count": 1
    }
  },
  "status": "locked"
}
```

## Converted Foundry actor

- HP: 40
- AC: 16
- Art/token audit: `REJECT_TOKEN_REGEN_REQUIRED`

- Attack routine: **Disciplined Strikes**; 7 (1d6+4) bludgeoning; count 2

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
