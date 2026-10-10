# Loran's Escape — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Loran's Escape |
| Oracle identity | `1a9048d6-f3fa-4f3b-9baa-35318177bc6e` |
| MTG mana cost | {W} |
| Mana value | 1 |
| Types | Instant |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | The Brothers' War |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/bro/14/lorans-escape?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `instantSpell`
- Template key: `loran-s-escape`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Effect:** Target artifact or creature gains Hexproof and Indestructible until end of current round; then MTG Scry 1.
- **Representation:** Castable Item applying linked dispellable Active Effects to Actor or artifact Item/permanent as appropriate.
- **Target Illegal:** If sole target becomes illegal, spell fails and MTG Scry 1 does not occur.

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{W}",
    "mv": 1,
    "types": [
      "Instant"
    ],
    "color": "White"
  },
  "effect": "Target artifact or creature gains Hexproof and Indestructible until end of current round; then MTG Scry 1.",
  "representation": "Castable Item applying linked dispellable Active Effects to Actor or artifact Item/permanent as appropriate.",
  "target_illegal": "If sole target becomes illegal, spell fails and MTG Scry 1 does not occur.",
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
