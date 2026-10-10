# Fiery Inscription — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Fiery Inscription |
| Oracle identity | `111889d4-bcca-4b1f-ad48-3077e2f5136f` |
| MTG mana cost | {2}{R} |
| Mana value | 3 |
| Types | Enchantment |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | The Lord of the Rings: Tales of Middle-earth |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/ltr/126/fiery-inscription?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `feat`
- Native role: `enchantment`
- Template key: `fiery-inscription`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Representation:** Persistent Item/Active Effect with listeners
- **Enter:** The Ring tempts you once.
- **Trigger:** Whenever controller casts an Instant or Sorcery, before that spell resolves, deal 5 damage to each opposing side.
- **Ring Rule Ref:** conversion_rules.ring_tempts_you

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{2}{R}",
    "mv": 3,
    "types": [
      "Enchantment"
    ],
    "color": "Red"
  },
  "representation": "Persistent Item/Active Effect with listeners",
  "enter": "The Ring tempts you once.",
  "trigger": "Whenever controller casts an Instant or Sorcery, before that spell resolves, deal 5 damage to each opposing side.",
  "ring_rule_ref": "conversion_rules.ring_tempts_you",
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
