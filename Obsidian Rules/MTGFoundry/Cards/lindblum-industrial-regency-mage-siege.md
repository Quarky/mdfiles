# Lindblum, Industrial Regency // Mage Siege — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Lindblum, Industrial Regency // Mage Siege |
| Oracle identity | `4cc014f3-05e0-442e-9dee-03eab1aa65a3` |
| MTG mana cost | Land face: none; **Mage Siege adventure**: `{2}{R}` |
| Mana value | 0 (land; do not apply the MV 1–7 spell band) |
| Types |  |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Final Fantasy |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/fin/285/lindblum-industrial-regency-mage-siege?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Multi-face mana-value distinction

- **Lindblum (land):** no mana cost and MV 0 as a land in the saved Scryfall data; taps for red mana, enters tapped.
- **Mage Siege (Adventure):** `{2}{R}`, converted spell-face equivalent cost 3, and creates a 0/1 Wizard with a noncreature-spell damage trigger.
- MV 0 does **not** have a verified character-level access band. Spell face effective/casting value must be considered separately; do not apply the land MV of zero to bypass spell access restrictions.

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `land`
- Template key: `lindblum-industrial-regency-mage-siege`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Adventure Rule Ref:** conversion_rules.keywords.adventure
**Wizard Token**

- Metadata: ["Token","Creature","Wizard","Black","0/1","MV0"]
- Physical Band: Toughness 1 -> level-1-equivalent body; Power 0 -> 0 base DPR
- Hp: 11
- Ac: 12
- Speed: 30 ft
- Base Dpr: 0
- Basic Attack: No meaningful damaging basic attack while current Power is 0.
- Trigger: {"name":"Black Magic","text":"Whenever controller casts a noncreature spell, choose fire, cold, or lightning; deal 3 damage of the chosen type to each opposing side before the triggering spell resolves."}
- Summoning Rule Ref: conversion_rules.summoning


### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "permanent_side": {
      "name": "Lindblum, Industrial Regency",
      "types": [
        "Land",
        "Town"
      ],
      "entry": "Tapped",
      "mana": "Tap -> 1 Red"
    },
    "adventure_side": {
      "name": "Mage Siege",
      "cost": "{2}{R}",
      "types": [
        "Instant",
        "Adventure"
      ],
      "effect": "Create a 0/1 black Wizard creature token."
    }
  },
  "adventure_rule_ref": "conversion_rules.keywords.adventure",
  "wizard_token": {
    "metadata": [
      "Token",
      "Creature",
      "Wizard",
      "Black",
      "0/1",
      "MV0"
    ],
    "physical_band": "Toughness 1 -> level-1-equivalent body; Power 0 -> 0 base DPR",
    "hp": 11,
    "ac": 12,
    "speed": "30 ft",
    "base_dpr": 0,
    "basic_attack": "No meaningful damaging basic attack while current Power is 0.",
    "trigger": {
      "name": "Black Magic",
      "text": "Whenever controller casts a noncreature spell, choose fire, cold, or lightning; deal 3 damage of the chosen type to each opposing side before the triggering spell resolves."
    },
    "summoning_rule_ref": "conversion_rules.summoning"
  },
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
