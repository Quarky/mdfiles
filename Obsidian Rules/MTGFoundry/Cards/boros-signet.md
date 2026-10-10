# Boros Signet — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Boros Signet |
| Oracle identity | `41c84665-1f99-40ab-aaca-1188649eb263` |
| MTG mana cost | {2} |
| Mana value | 2 |
| Types | Artifact |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Ravnica Remastered |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/rvr/251/boros-signet?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `equipment`
- Native role: `artifact`
- Template key: `boros-signet`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Native Type:** Artifact Item / remote mana filtering-amplifying source
**Activation**

- Action: none
- Input: 1 generic mana
- Output: 1 Red + 1 White
- Result: Tapped

- **Input Sources:** Generic input may come from any legal stored/live/other mana source.
- **Overflow Rule Ref:** conversion_rules.mana.immediate_overflow
- **Refresh:** Tapped until Long Rest unless explicitly untapped earlier.
- **Events:** Emit mana-spent and mana-produced events.

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
    "color": "Colorless",
    "ability": "{1}, {T}: Add {R}{W}."
  },
  "native_type": "Artifact Item / remote mana filtering-amplifying source",
  "activation": {
    "action": "none",
    "input": "1 generic mana",
    "output": "1 Red + 1 White",
    "result": "Tapped"
  },
  "input_sources": "Generic input may come from any legal stored/live/other mana source.",
  "overflow_rule_ref": "conversion_rules.mana.immediate_overflow",
  "refresh": "Tapped until Long Rest unless explicitly untapped earlier.",
  "events": "Emit mana-spent and mana-produced events."
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
