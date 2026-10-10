# Zada, Hedron Grinder — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Zada, Hedron Grinder |
| Oracle identity | `9f7d5e1c-bf5b-4ab9-bd6e-2627b4d22b36` |
| MTG mana cost | {3}{R} |
| Mana value | 4 |
| Types | Legendary Creature Goblin Ally |
| Base P/T | 3/3 |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Foundations Jumpstart |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/j25/76/zada-hedron-grinder?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `creatureSpell`
- Template key: `zada-hedron-grinder`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Dnd**

- Band Level: 9
- Hp: 68
- Ac: 16
- Speed: 30 ft
- Pb: +4
- To Hit: +8
- Target Dpr: 17
- Attack: {"name":"Hedron-Charged Pestle","count":2,"damage_each":"1d6+4 bludgeoning + 1 force","average_each":8.5,"average_total":17}

- **Trigger:** Whenever controller casts an Instant or Sorcery targeting only Zada, create one copy for each other creature controller controls that the original could legally target; each copy targets a different eligible creature.
- **Copy Rule Ref:** conversion_rules.spell_copies
- **Simultaneous Trigger Order Ref:** module_logic.trigger_engine.simultaneous_order

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{3}{R}",
    "mv": 4,
    "types": [
      "Legendary",
      "Creature",
      "Goblin",
      "Ally"
    ],
    "pt": "3/3",
    "color": "Red"
  },
  "dnd": {
    "band_level": 9,
    "hp": 68,
    "ac": 16,
    "speed": "30 ft",
    "pb": "+4",
    "to_hit": "+8",
    "target_dpr": 17,
    "attack": {
      "name": "Hedron-Charged Pestle",
      "count": 2,
      "damage_each": "1d6+4 bludgeoning + 1 force",
      "average_each": 8.5,
      "average_total": 17
    }
  },
  "trigger": "Whenever controller casts an Instant or Sorcery targeting only Zada, create one copy for each other creature controller controls that the original could legally target; each copy targets a different eligible creature.",
  "copy_rule_ref": "conversion_rules.spell_copies",
  "simultaneous_trigger_order_ref": "module_logic.trigger_engine.simultaneous_order",
  "status": "locked"
}
```

## Converted Foundry actor

- HP: 68
- AC: 16
- Art/token audit: `REJECT_TOKEN_REGEN_REQUIRED`

- Attack routine: **Hedron-Charged Pestle**; 1d6+4 bludgeoning + 1 force; count 2

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
