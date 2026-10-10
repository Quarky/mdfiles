# Arid Mesa — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Arid Mesa |
| Oracle identity | `c5acf2a5-40f4-433d-a74d-1cb56c521464` |
| MTG mana cost |  |
| Mana value | 0 (land; do not apply the MV 1–7 spell band) |
| Types | Land |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Modern Horizons 2 |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/mh2/244/arid-mesa?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `feat`
- Native role: `land`
- Template key: `arid-mesa`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Representation:** Remote mana-source Land card
- **Ability:** Tap, lose 3 HP as a life payment, sacrifice Arid Mesa: search MTG library for a card with Mountain or Plains subtype, put it into play, then shuffle.
- **Notes:** ["Search uses subtype metadata, so qualifying nonbasics such as Sacred Foundry are legal.","Life payment is direct HP loss, not damage.","Mana-source Tap uses no D&D Action."]

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "types": [
      "Land"
    ]
  },
  "representation": "Remote mana-source Land card",
  "ability": "Tap, lose 3 HP as a life payment, sacrifice Arid Mesa: search MTG library for a card with Mountain or Plains subtype, put it into play, then shuffle.",
  "notes": [
    "Search uses subtype metadata, so qualifying nonbasics such as Sacred Foundry are legal.",
    "Life payment is direct HP loss, not damage.",
    "Mana-source Tap uses no D&D Action."
  ],
  "status": "locked"
}
```

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
