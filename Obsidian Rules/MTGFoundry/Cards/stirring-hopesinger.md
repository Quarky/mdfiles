# Stirring Hopesinger — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Stirring Hopesinger |
| Oracle identity | `7244d04a-bb9c-4fbe-a346-4a3f45709da7` |
| MTG mana cost | {2}{W} |
| Mana value | 3 |
| Types | Creature Bird Bard |
| Base P/T | 1/3 |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Secrets of Strixhaven |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/sos/35/stirring-hopesinger?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `creatureSpell`
- Template key: `stirring-hopesinger`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Band:** MV3 / level-6 band
**Stats**

- Ac: 15
- Hp: 60
- Speed: 30 ft
- Fly: 60 ft
- Attack Bonus: +7
- Base Dpr: ~7

**Attack**

- Name: Hopeful Resonance
- Type: Ranged Spell Attack
- To Hit: +7
- Range: 60 ft
- Damage: 7 radiant

- **Lifelink Rule Ref:** conversion_rules.keywords.lifelink
**Ability**

- Name: Repartee
- Text: Whenever Stirring Hopesinger's controller casts an Instant or Sorcery spell that targets at least one creature, put one permanent +1/+1 counter on each creature that controller controls.
- Target Scope: The target only needs to be a creature; it need not be controlled by Hopesinger's controller.
- Copies: Copies that were not cast do not trigger Repartee.

- **Counter Rule Ref:** conversion_rules.permanent_pt

### Exact structured conversion payload

```json
{
  "locked": true,
  "status": "locked",
  "mtg": {
    "cost": "{2}{W}",
    "mv": 3,
    "types": [
      "Creature",
      "Bird",
      "Bard"
    ],
    "color": "White",
    "base_pt": "1/3",
    "keywords": [
      "Flying",
      "Lifelink"
    ]
  },
  "band": "MV3 / level-6 band",
  "stats": {
    "ac": 15,
    "hp": 60,
    "speed": "30 ft",
    "fly": "60 ft",
    "attack_bonus": "+7",
    "base_dpr": "~7"
  },
  "attack": {
    "name": "Hopeful Resonance",
    "type": "Ranged Spell Attack",
    "to_hit": "+7",
    "range": "60 ft",
    "damage": "7 radiant"
  },
  "lifelink_rule_ref": "conversion_rules.keywords.lifelink",
  "ability": {
    "name": "Repartee",
    "text": "Whenever Stirring Hopesinger's controller casts an Instant or Sorcery spell that targets at least one creature, put one permanent +1/+1 counter on each creature that controller controls.",
    "target_scope": "The target only needs to be a creature; it need not be controlled by Hopesinger's controller.",
    "copies": "Copies that were not cast do not trigger Repartee."
  },
  "counter_rule_ref": "conversion_rules.permanent_pt"
}
```

## Converted Foundry actor

- HP: 60
- AC: 15
- Art/token audit: `REJECT_TOKEN_REGEN_REQUIRED`

- Attack routine: **Hopeful Resonance**; 7 radiant; count 1

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
