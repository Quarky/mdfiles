# Guttersnipe — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Guttersnipe |
| Oracle identity | `c6bdaf76-6a03-4695-9c4b-f040e73435af` |
| MTG mana cost | {2}{R} |
| Mana value | 3 |
| Types | Creature Goblin Shaman |
| Base P/T | 2/2 |
| Deck quantity in saved snapshot | 1 |
| Saved printing | GRN Guild Kit |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/gk1/31/guttersnipe?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `creatureSpell`
- Template key: `guttersnipe`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Dnd**

- Band Level: 6
- Hp: 40
- Ac: 16
- To Hit: +7
- Target Dpr: 15
- Attack: {"name":"Ember Spit","type":"Ranged Spell Attack","to_hit":"+7","range":"60 ft","damage":"14 (3d6 + 4) fire","count":1}

**Ability**

- Name: Spellfire Trigger
- Text: Whenever controller casts an Instant or Sorcery, each opposing side immediately takes 5 damage before the spell resolves.


### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{2}{R}",
    "mv": 3,
    "types": [
      "Creature",
      "Goblin",
      "Shaman"
    ],
    "pt": "2/2"
  },
  "dnd": {
    "band_level": 6,
    "hp": 40,
    "ac": 16,
    "to_hit": "+7",
    "target_dpr": 15,
    "attack": {
      "name": "Ember Spit",
      "type": "Ranged Spell Attack",
      "to_hit": "+7",
      "range": "60 ft",
      "damage": "14 (3d6 + 4) fire",
      "count": 1
    }
  },
  "ability": {
    "name": "Spellfire Trigger",
    "text": "Whenever controller casts an Instant or Sorcery, each opposing side immediately takes 5 damage before the spell resolves."
  },
  "status": "locked"
}
```

## Converted Foundry actor

- HP: 40
- AC: 16
- Art/token audit: `REJECT_TOKEN_REGEN_REQUIRED`

- Attack routine: **Ember Spit**; 14 (3d6+4) fire; count 1

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
