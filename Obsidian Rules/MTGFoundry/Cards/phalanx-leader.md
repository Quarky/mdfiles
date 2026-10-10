# Phalanx Leader — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Phalanx Leader |
| Oracle identity | `857db7e0-254a-4920-a71d-9bab6555342f` |
| MTG mana cost | {W}{W} |
| Mana value | 2 |
| Types | Creature Human Soldier |
| Base P/T | 1/1 |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Ultimate Masters |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/uma/27/phalanx-leader?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `creatureSpell`
- Template key: `phalanx-leader`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Band:** MV2 / level-3 band
**Stats**

- Ac: 15
- Hp: 15
- Speed: 30 ft
- Pb: 2
- Attack Bonus: +5
- Base Dpr: ~4

**Attack**

- Name: Phalanx Spear
- Type: Melee Weapon Attack
- To Hit: +5
- Reach: 5 ft
- Damage: 4 (1d6 + 1) piercing

**Ability**

- Name: Heroic — Rally the Phalanx
- Text: Whenever Phalanx Leader's controller casts a spell that targets Phalanx Leader, put one permanent +1/+1 counter on each creature that controller controls, including Phalanx Leader.
- Timing: Resolves before the triggering spell.
- Once Per Spell: Once per cast spell even if that spell targets Phalanx Leader multiple times.
- Copies: Copies that are not cast do not trigger it; retargeting an already-cast spell does not create a new cast trigger.

- **Counter Rule Ref:** conversion_rules.permanent_pt
- **Ac Note:** Counters do not raise AC unless the effect specifically represents armor/defense.

### Exact structured conversion payload

```json
{
  "locked": true,
  "status": "locked",
  "mtg": {
    "cost": "{W}{W}",
    "mv": 2,
    "types": [
      "Creature",
      "Human",
      "Soldier"
    ],
    "color": "White",
    "base_pt": "1/1"
  },
  "band": "MV2 / level-3 band",
  "stats": {
    "ac": 15,
    "hp": 15,
    "speed": "30 ft",
    "pb": 2,
    "attack_bonus": "+5",
    "base_dpr": "~4"
  },
  "attack": {
    "name": "Phalanx Spear",
    "type": "Melee Weapon Attack",
    "to_hit": "+5",
    "reach": "5 ft",
    "damage": "4 (1d6 + 1) piercing"
  },
  "ability": {
    "name": "Heroic — Rally the Phalanx",
    "text": "Whenever Phalanx Leader's controller casts a spell that targets Phalanx Leader, put one permanent +1/+1 counter on each creature that controller controls, including Phalanx Leader.",
    "timing": "Resolves before the triggering spell.",
    "once_per_spell": "Once per cast spell even if that spell targets Phalanx Leader multiple times.",
    "copies": "Copies that are not cast do not trigger it; retargeting an already-cast spell does not create a new cast trigger."
  },
  "counter_rule_ref": "conversion_rules.permanent_pt",
  "ac_note": "Counters do not raise AC unless the effect specifically represents armor/defense."
}
```

## Converted Foundry actor

- HP: 15
- AC: 15
- Art/token audit: `REJECT_TOKEN_REGEN_REQUIRED`

- Attack routine: **Phalanx Spear**; 4 (1d6+1) piercing; count 1

## Implementation cautions

- A locked rule definition does not establish that it has passed live Foundry v14 testing.
- Confirm direct damage vs life loss, triggered abilities, targets, counters, and action economy against the actual native Item/Actor before treating behavior as certified.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
