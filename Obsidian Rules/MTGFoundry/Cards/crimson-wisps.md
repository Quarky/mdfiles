# Crimson Wisps — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Crimson Wisps |
| Oracle identity | `e699d140-eb13-4f15-aecb-85c76e8b1b14` |
| MTG mana cost | {R} |
| Mana value | 1 |
| Types | Instant |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Foundations Jumpstart |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/j25/533/crimson-wisps?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `instantSpell`
- Template key: `crimson-wisps`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Dnd**

- Target: One creature
- Effect: Until end of current round, current MTG color becomes Red and target gains Summoning Haste (MTG Haste); then draw one MTG card.
- Target Illegal: If sole target is illegal on resolution, entire spell fails and no card is drawn.

- **Instant Rule Ref:** conversion_rules.instants

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{R}",
    "mv": 1,
    "types": [
      "Instant"
    ],
    "color": "Red"
  },
  "dnd": {
    "target": "One creature",
    "effect": "Until end of current round, current MTG color becomes Red and target gains Summoning Haste (MTG Haste); then draw one MTG card.",
    "target_illegal": "If sole target is illegal on resolution, entire spell fails and no card is drawn."
  },
  "instant_rule_ref": "conversion_rules.instants",
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
