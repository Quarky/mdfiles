# Mavinda, Students' Advocate — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Mavinda, Students' Advocate |
| Oracle identity | `1c248187-0be3-4a03-a817-14f68f638ae7` |
| MTG mana cost | {2}{W} |
| Mana value | 3 |
| Types | Legendary Creature Bird Advisor |
| Base P/T | 2/3 |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Strixhaven: School of Mages |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/stx/21/mavinda-students-advocate?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `creatureSpell`
- Template key: `mavinda-students-advocate`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Dnd**

- Band Level: 6
- Alignment: Neutral Good (conversion inference)
- Hp: 60
- Ac: 14
- Speed: 30 ft, fly 60 ft
- Target Dpr: 15
- Attack: {"name":"Empathic Rebuke","type":"Ranged Spell Attack","to_hit":"+7","range":"60 ft","damage":"14 (3d6+4) psychic"}

**Student Advocate**

- Frequency: Once per D&D round.
- Activation: No action required (original activation {0}).
- Choose: Instant/Sorcery in controller's graveyard.
- Permission: May cast during the allowed current round/turn window following normal casting requirements.
- Cost: Normal mana cost.
- Surcharge: If it does not target at least one creature controller controls, +8 generic mana; this +8 remains literal.
- Actual Target: Must be an actual target, not merely affected by an area.
- After: If card would be put into graveyard after being cast this way, exile it instead.


### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{2}{W}",
    "mv": 3,
    "types": [
      "Legendary",
      "Creature",
      "Bird",
      "Advisor"
    ],
    "pt": "2/3",
    "keywords": [
      "Flying"
    ],
    "color": "White"
  },
  "dnd": {
    "band_level": 6,
    "alignment": "Neutral Good (conversion inference)",
    "hp": 60,
    "ac": 14,
    "speed": "30 ft, fly 60 ft",
    "target_dpr": 15,
    "attack": {
      "name": "Empathic Rebuke",
      "type": "Ranged Spell Attack",
      "to_hit": "+7",
      "range": "60 ft",
      "damage": "14 (3d6+4) psychic"
    }
  },
  "student_advocate": {
    "frequency": "Once per D&D round.",
    "activation": "No action required (original activation {0}).",
    "choose": "Instant/Sorcery in controller's graveyard.",
    "permission": "May cast during the allowed current round/turn window following normal casting requirements.",
    "cost": "Normal mana cost.",
    "surcharge": "If it does not target at least one creature controller controls, +8 generic mana; this +8 remains literal.",
    "actual_target": "Must be an actual target, not merely affected by an area.",
    "after": "If card would be put into graveyard after being cast this way, exile it instead."
  },
  "status": "locked"
}
```

## Converted Foundry actor

- HP: 60
- AC: 14
- Art/token audit: `REJECT_TOKEN_REGEN_REQUIRED`

- Attack routine: **Empathic Rebuke**; 14 (3d6+4) psychic; count 1

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
