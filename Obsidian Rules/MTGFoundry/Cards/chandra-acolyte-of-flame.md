# Chandra, Acolyte of Flame — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Chandra, Acolyte of Flame |
| Oracle identity | `626e8acc-20da-496c-9a79-bfbf7529c01d` |
| MTG mana cost | {1}{R}{R} |
| Mana value | 3 |
| Types | Planeswalker |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Core Set 2020 |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/m20/126/chandra-acolyte-of-flame?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `planeswalkerSpell`
- Template key: `chandra-acolyte-of-flame`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **StartingLoyalty:** 4
- **StartingHp:** 80

### Exact structured conversion payload

```json
{
  "locked": true,
  "source": "docs/qa/ISSUE_33_CHANDRA_APPROVED_CONVERSION_SPEC.md",
  "startingLoyalty": 4,
  "startingHp": 80
}
```

## Converted Foundry actor

- HP: 80
- AC: unavailable
- Art/token audit: `not recorded`


## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
