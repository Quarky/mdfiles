# Temur Battle Rage — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Temur Battle Rage |
| Oracle identity | `2fdc0d17-b683-4263-949e-4f74ec76badf` |
| MTG mana cost | {1}{R} |
| Mana value | 2 |
| Types | Instant |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Commander Masters |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/cmm/264/temur-battle-rage?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `instantSpell`
- Template key: `temur-battle-rage`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Casting Rule Ref:** conversion_rules.instants
- **Effect:** Target creature gains Double Strike until end of current round.
- **Ferocious:** When Temur Battle Rage resolves, if controller controls at least one creature with current Power 4 or greater, the target also gains Trample until end of current round.
- **Ferocious Snapshot:** Check current Power at resolution. Once granted, later loss of the Power-4 creature does not remove the granted Trample before duration ends.
- **Double Strike Rule Ref:** conversion_rules.keywords.double_strike
- **Trample Rule Ref:** conversion_rules.trample
- **Effects:** Temporary dispellable Active Effects.
- **Trample Distance:** Use the affected creature's established Trample profile/creature-specific conversion; if none exists, derive it from the creature's size/concept during implementation rather than inventing a separate card mechanic.

### Exact structured conversion payload

```json
{
  "locked": true,
  "status": "locked",
  "mtg": {
    "cost": "{1}{R}",
    "mv": 2,
    "types": [
      "Instant"
    ],
    "color": "Red",
    "keywords": [
      "Ferocious"
    ]
  },
  "casting_rule_ref": "conversion_rules.instants",
  "effect": "Target creature gains Double Strike until end of current round.",
  "ferocious": "When Temur Battle Rage resolves, if controller controls at least one creature with current Power 4 or greater, the target also gains Trample until end of current round.",
  "ferocious_snapshot": "Check current Power at resolution. Once granted, later loss of the Power-4 creature does not remove the granted Trample before duration ends.",
  "double_strike_rule_ref": "conversion_rules.keywords.double_strike",
  "trample_rule_ref": "conversion_rules.trample",
  "effects": "Temporary dispellable Active Effects.",
  "trample_distance": "Use the affected creature's established Trample profile/creature-specific conversion; if none exists, derive it from the creature's size/concept during implementation rather than inventing a separate card mechanic."
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
