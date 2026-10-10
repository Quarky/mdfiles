# Command Tower — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Command Tower |
| Oracle identity | `0895c9b7-ae7d-4bb3-af17-3b75deb50a25` |
| MTG mana cost |  |
| Mana value | 0 (land; do not apply the MV 1–7 spell band) |
| Types | Land |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Aetherdrift Commander |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/drc/60/command-tower?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `feat`
- Native role: `land`
- Template key: `command-tower`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Representation:** Remote mana-source Land card
- **Mana:** Tap -> 1 mana of any color in the designated Commander's current MTG color identity.
- **Current Deck:** With Feather, available colors are Red or White.
- **Dynamic:** Query Commander color identity at activation; do not use separate Colors Mastered field.
- **Types Note:** Not a Plains/Mountain merely because it can produce White/Red.

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
  "mana": "Tap -> 1 mana of any color in the designated Commander's current MTG color identity.",
  "current_deck": "With Feather, available colors are Red or White.",
  "dynamic": "Query Commander color identity at activation; do not use separate Colors Mastered field.",
  "types_note": "Not a Plains/Mountain merely because it can produce White/Red.",
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
