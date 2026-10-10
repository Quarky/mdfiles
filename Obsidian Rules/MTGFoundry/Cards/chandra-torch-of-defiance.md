# Chandra, Torch of Defiance — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Chandra, Torch of Defiance |
| Oracle identity | `12cc800c-c7be-4811-8207-fd01a99cc892` |
| MTG mana cost | {2}{R}{R} |
| Mana value | 4 |
| Types | Planeswalker |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Reality Fracture |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/fra/309/chandra-torch-of-defiance?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `planeswalkerSpell`
- Template key: `chandra-torch-of-defiance`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **StartingLoyalty:** 4
- **StartingHp:** 90

### Exact structured conversion payload

```json
{
  "locked": true,
  "source": "docs/qa/ISSUE_33_CHANDRA_APPROVED_CONVERSION_SPEC.md",
  "startingLoyalty": 4,
  "startingHp": 90
}
```

## Converted Foundry actor

- HP: 90
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
