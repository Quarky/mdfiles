# Restoration Magic — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Restoration Magic |
| Oracle identity | Unavailable |
| MTG mana cost | {W} |
| Mana value | 1 |
| Types | Instant |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | Not present |
| Saved printing | Not in deck snapshot |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- **Custom module spell, not identified as an official printed MTG card.** No Scryfall Oracle/printing identifier is established; do not merge by name with a public Oracle card.
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `instantSpell`
- Template key: `restoration-magic`
- Rule definition: locked in source
- Card linkage: `standalone-no-physical-card`

### Readable rule and combat fields

**Tiers**

- Cure: {"additional_cost":"{0}","total_cost":"{W}","effect":"Target permanent gains Hexproof and Indestructible until end of current round."}
- Cura: {"additional_cost":"{1}","total_cost":"{1}{W}","effect":"Target permanent gains Hexproof and Indestructible until end of current round; controller regains 8 HP."}
- Curaga: {"additional_cost":"{3}{W}","total_cost":"{3}{W}{W}","effect":"All permanents controller controls gain Hexproof and Indestructible until end of current round; controller regains 15 HP."}

- **Tier Rule Ref:** conversion_rules.keywords.mtg_tiered
- **Targeting:** Cure/Cura target one permanent. Curaga has no target and affects all controller permanents.
- **Target Illegal:** If Cure/Cura sole target becomes illegal, that spell fails; Cura healing also does not occur.

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "base_cost": "{W}",
    "mv": 1,
    "types": [
      "Instant"
    ],
    "color": "White",
    "keyword": "Tiered"
  },
  "tiers": {
    "Cure": {
      "additional_cost": "{0}",
      "total_cost": "{W}",
      "effect": "Target permanent gains Hexproof and Indestructible until end of current round."
    },
    "Cura": {
      "additional_cost": "{1}",
      "total_cost": "{1}{W}",
      "effect": "Target permanent gains Hexproof and Indestructible until end of current round; controller regains 8 HP."
    },
    "Curaga": {
      "additional_cost": "{3}{W}",
      "total_cost": "{3}{W}{W}",
      "effect": "All permanents controller controls gain Hexproof and Indestructible until end of current round; controller regains 15 HP."
    }
  },
  "tier_rule_ref": "conversion_rules.keywords.mtg_tiered",
  "targeting": "Cure/Cura target one permanent. Curaga has no target and affects all controller permanents.",
  "target_illegal": "If Cure/Cura sole target becomes illegal, that spell fails; Cura healing also does not occur.",
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
