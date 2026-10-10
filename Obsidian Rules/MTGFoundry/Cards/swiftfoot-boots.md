# Swiftfoot Boots — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Swiftfoot Boots |
| Oracle identity | `c8b143ad-43ec-4e0d-a440-e348daa31391` |
| MTG mana cost | {2} |
| Mana value | 2 |
| Types | Artifact Equipment |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Commander 2018 |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/c18/225/swiftfoot-boots?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `equipment`
- Native role: `artifact`
- Template key: `swiftfoot-boots`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Conversion**

- Equipped Effects: ["Hexproof","Summoning Haste (MTG Haste)"]
- Equip: On controller turn, spend 1 generic mana and main Action to attach to one creature controller controls; ordinary Equip timing maps to this turn-only Action use.
- Move: Moving equipment to another controlled creature repeats Equip cost/action.
- Linked Effects: Granted effects are linked to Boots and end automatically if unequipped, destroyed, exiled, suppressed, or otherwise leaves play.


### Exact structured conversion payload

```json
{
  "locked": true,
  "status": "locked",
  "mtg": {
    "cost": "{2}",
    "mv": 2,
    "types": [
      "Artifact",
      "Equipment"
    ],
    "color": "Colorless",
    "equip_cost": "{1}"
  },
  "conversion": {
    "equipped_effects": [
      "Hexproof",
      "Summoning Haste (MTG Haste)"
    ],
    "equip": "On controller turn, spend 1 generic mana and main Action to attach to one creature controller controls; ordinary Equip timing maps to this turn-only Action use.",
    "move": "Moving equipment to another controlled creature repeats Equip cost/action.",
    "linked_effects": "Granted effects are linked to Boots and end automatically if unequipped, destroyed, exiled, suppressed, or otherwise leaves play."
  }
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
