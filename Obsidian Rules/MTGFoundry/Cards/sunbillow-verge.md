# Sunbillow Verge — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Sunbillow Verge |
| Oracle identity | `a202276b-1f1b-4277-95ee-26877a204f5e` |
| MTG mana cost |  |
| Mana value | 0 (land; do not apply the MV 1–7 spell band) |
| Types | Land |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Aetherdrift |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/dft/264/sunbillow-verge?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `feat`
- Native role: `land`
- Template key: `sunbillow-verge`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Fast Tracked:** true
- **Abilities:** ["Tap -> 1 White remote mana.","Tap -> 1 Red remote mana only if controller controls a Mountain or Plains."]
- **Refresh:** Tapped until Long Rest unless explicitly untapped.

### Exact structured conversion payload

```json
{
  "locked": true,
  "fast_tracked": true,
  "mtg": {
    "types": [
      "Land"
    ]
  },
  "abilities": [
    "Tap -> 1 White remote mana.",
    "Tap -> 1 Red remote mana only if controller controls a Mountain or Plains."
  ],
  "refresh": "Tapped until Long Rest unless explicitly untapped.",
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
