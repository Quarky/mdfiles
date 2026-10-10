# Arcane Signet — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Arcane Signet |
| Oracle identity | `0bc7f093-bef0-4f1a-852c-4b75ebf54838` |
| MTG mana cost | {2} |
| Mana value | 2 |
| Types | Artifact |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Final Fantasy Commander |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/fic/333/arcane-signet?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `equipment`
- Native role: `artifact`
- Template key: `arcane-signet`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Native Type:** Artifact Item / remote mana source
- **Ability:** Tap (no D&D action) -> produce 1 mana of any color in the designated Commander's current MTG color identity.
- **Dynamic:** Read Commander color identity at activation; with Feather, choices are White or Red.
- **Refresh:** Tapped until Long Rest unless explicitly untapped earlier.
- **Max Pool:** Does not increase Base Maximum Mana Pool.

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
  "ability": "Tap (no D&D action) -> produce 1 mana of any color in the designated Commander's current MTG color identity.",
  "dynamic": "Read Commander color identity at activation; with Feather, choices are White or Red.",
  "refresh": "Tapped until Long Rest unless explicitly untapped earlier.",
  "max_pool": "Does not increase Base Maximum Mana Pool."
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
