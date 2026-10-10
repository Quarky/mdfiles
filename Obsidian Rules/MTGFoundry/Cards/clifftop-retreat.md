# Clifftop Retreat — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Clifftop Retreat |
| Oracle identity | `d7faa3c8-46cf-46b2-bfa4-89000307cf18` |
| MTG mana cost |  |
| Mana value | 0 (land; do not apply the MV 1–7 spell band) |
| Types | Land |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | The Lost Caverns of Ixalan Commander |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/lcc/324/clifftop-retreat?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `feat`
- Native role: `land`
- Template key: `clifftop-retreat`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Representation:** Remote mana-source Land card
- **Entry:** Enters tapped unless controller controls a Mountain or Plains subtype Land.
- **Mana:** Tap -> 1 Red or 1 White mana.
- **Refresh:** Any Tapped state on this remote mana source normally persists until Long Rest unless an explicit untap effect applies.

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
  "entry": "Enters tapped unless controller controls a Mountain or Plains subtype Land.",
  "mana": "Tap -> 1 Red or 1 White mana.",
  "refresh": "Any Tapped state on this remote mana source normally persists until Long Rest unless an explicit untap effect applies.",
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
