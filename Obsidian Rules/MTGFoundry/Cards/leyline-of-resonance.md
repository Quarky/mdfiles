# Leyline of Resonance — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Leyline of Resonance |
| Oracle identity | `f69574dd-097f-4908-9cab-344b0eb39c62` |
| MTG mana cost | {2}{R}{R} |
| Mana value | 4 |
| Types | Enchantment |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Duskmourn: House of Horror |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/dsk/143/leyline-of-resonance?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `feat`
- Native role: `enchantment`
- Template key: `leyline-of-resonance`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Representation:** Castable Item -> persistent Active Effect/listener
- **Opening Hand:** At campaign opening-hand initialization only, if present it may begin in play without being cast or paying mana.
- **Trigger:** Whenever controller casts an Instant or Sorcery targeting only a single creature they control, copy that spell; may choose new legal target(s) as the card permits.
- **Copy Rule Ref:** conversion_rules.spell_copies

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{2}{R}{R}",
    "mv": 4,
    "types": [
      "Enchantment"
    ],
    "color": "Red"
  },
  "representation": "Castable Item -> persistent Active Effect/listener",
  "opening_hand": "At campaign opening-hand initialization only, if present it may begin in play without being cast or paying mana.",
  "trigger": "Whenever controller casts an Instant or Sorcery targeting only a single creature they control, copy that spell; may choose new legal target(s) as the card permits.",
  "copy_rule_ref": "conversion_rules.spell_copies",
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
