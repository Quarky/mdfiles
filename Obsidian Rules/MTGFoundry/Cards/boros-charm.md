# Boros Charm — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Boros Charm |
| Oracle identity | `2679d0dd-ba30-4a1c-b6a0-b3ac6c790496` |
| MTG mana cost | {R}{W} |
| Mana value | 2 |
| Types | Instant |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Foundations |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/fdn/721/boros-charm?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `instantSpell`
- Template key: `boros-charm`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Modes**

- Boros Flame: Deal 10 damage to target player/Planeswalker, split as 5 fire + 5 radiant.
- Indestructible: All permanents controller controls gain Indestructible until end of current round via dispellable Active Effects.
- Double Strike: Target creature gains Double Strike until end of current round; repeat its complete selected Attack Routine once within the same Attack action.

- **Instant Rule Ref:** conversion_rules.instants
- **Double Strike Rule Ref:** conversion_rules.keywords.double_strike

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{R}{W}",
    "mv": 2,
    "types": [
      "Instant"
    ],
    "colors": [
      "Red",
      "White"
    ]
  },
  "modes": {
    "Boros Flame": "Deal 10 damage to target player/Planeswalker, split as 5 fire + 5 radiant.",
    "Indestructible": "All permanents controller controls gain Indestructible until end of current round via dispellable Active Effects.",
    "Double Strike": "Target creature gains Double Strike until end of current round; repeat its complete selected Attack Routine once within the same Attack action."
  },
  "instant_rule_ref": "conversion_rules.instants",
  "double_strike_rule_ref": "conversion_rules.keywords.double_strike",
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
