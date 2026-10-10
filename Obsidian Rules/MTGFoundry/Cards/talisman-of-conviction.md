# Talisman of Conviction — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Talisman of Conviction |
| Oracle identity | `6c326439-5620-4ec6-a56a-fe9c3d5d2a46` |
| MTG mana cost | {2} |
| Mana value | 2 |
| Types | Artifact |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Murders at Karlov Manor Commander |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/mkc/240/talisman-of-conviction?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `equipment`
- Native role: `artifact`
- Template key: `talisman-of-conviction`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Native Type:** Artifact Item / remote mana source
**Abilities**

- Colorless: Tap (no D&D action) -> produce 1 Colorless; no damage.
- Red: Tap (no D&D action) -> produce 1 Red; controller takes 3 fire damage.
- White: Tap (no D&D action) -> produce 1 White; controller takes 3 radiant damage.

- **Damage Rule:** Uses shared 1 MTG damage ~= 2.5 D&D HP magnitude conversion rounded to 3; this is actual typed damage, not life payment.
- **Refresh:** Tapped until Long Rest unless explicitly untapped earlier.
- **Rule Coverage:** Fast-tracked from Battlefield Forge colored-backlash pattern.

### Exact structured conversion payload

```json
{
  "locked": true,
  "status": "locked",
  "mtg": {
    "cost": "{2}",
    "mv": 2,
    "types": [
      "Artifact"
    ],
    "color": "Colorless"
  },
  "native_type": "Artifact Item / remote mana source",
  "abilities": {
    "Colorless": "Tap (no D&D action) -> produce 1 Colorless; no damage.",
    "Red": "Tap (no D&D action) -> produce 1 Red; controller takes 3 fire damage.",
    "White": "Tap (no D&D action) -> produce 1 White; controller takes 3 radiant damage."
  },
  "damage_rule": "Uses shared 1 MTG damage ~= 2.5 D&D HP magnitude conversion rounded to 3; this is actual typed damage, not life payment.",
  "refresh": "Tapped until Long Rest unless explicitly untapped earlier.",
  "rule_coverage": "Fast-tracked from Battlefield Forge colored-backlash pattern."
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
