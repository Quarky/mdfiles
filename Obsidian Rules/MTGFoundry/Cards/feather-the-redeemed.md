# Feather, the Redeemed — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Feather, the Redeemed |
| Oracle identity | `aa219936-661b-4ccb-8741-78b70cff2b1a` |
| MTG mana cost | {R}{W}{W} |
| Mana value | 3 |
| Types | Legendary Creature Angel |
| Base P/T | 3/4 |
| Deck quantity in saved snapshot | 1 |
| Saved printing | War of the Spark |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/war/197/feather-the-redeemed?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `creatureSpell`
- Template key: `feather-the-redeemed`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Dnd**

- Band Level: 6
- Hp: 80
- Ac: 16
- Speed: 30 ft, fly 60 ft
- Target Dpr: 22
- Attack: {"name":"Redeemed Blade","count":2,"to_hit":"+7","damage_each":"11 (2d6+4)"}

- **Ability:** When controller casts a converted Instant/Sorcery targeting at least one creature they control, mark it for recovery. If it resolves and would enter graveyard, exile instead; at beginning of controller's next end step return it to hand. Mana/spell resources are not refunded.
- **Dynamic Pt:** true

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{R}{W}{W}",
    "mv": 3,
    "types": [
      "Legendary",
      "Creature",
      "Angel"
    ],
    "pt": "3/4",
    "keywords": [
      "Flying"
    ]
  },
  "dnd": {
    "band_level": 6,
    "hp": 80,
    "ac": 16,
    "speed": "30 ft, fly 60 ft",
    "target_dpr": 22,
    "attack": {
      "name": "Redeemed Blade",
      "count": 2,
      "to_hit": "+7",
      "damage_each": "11 (2d6+4)"
    }
  },
  "ability": "When controller casts a converted Instant/Sorcery targeting at least one creature they control, mark it for recovery. If it resolves and would enter graveyard, exile instead; at beginning of controller's next end step return it to hand. Mana/spell resources are not refunded.",
  "dynamic_pt": true,
  "status": "locked"
}
```

## Converted Foundry actor

- HP: 80
- AC: 16
- Art/token audit: `REJECT_TOKEN_REGEN_REQUIRED`

- Attack routine: **Redeemed Blade**; 11 (2d6+4) slashing; count 2

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
