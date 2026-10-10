# Reckless Rage — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Reckless Rage |
| Oracle identity | `d7e2b2ba-cb5e-41f1-ad33-baf56c0b72ed` |
| MTG mana cost | {R} |
| Mana value | 1 |
| Types | Instant |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | The List |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/plst/RIX-110/reckless-rage?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `instantSpell`
- Template key: `reckless-rage`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

**Dnd**

- Targets: One creature you control + one you do not control; both required to cast.
- Damage Enemy: 10 fire
- Damage Own: 5 fire
- Attack Roll: false
- Save: false
- Partial Resolution: If one target becomes invalid before resolution, remaining valid target still resolves.

- **Instant Rule Ref:** conversion_rules.instants

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{R}",
    "mv": 1,
    "types": [
      "Instant"
    ],
    "color": "Red"
  },
  "dnd": {
    "targets": "One creature you control + one you do not control; both required to cast.",
    "damage_enemy": "10 fire",
    "damage_own": "5 fire",
    "attack_roll": false,
    "save": false,
    "partial_resolution": "If one target becomes invalid before resolution, remaining valid target still resolves."
  },
  "instant_rule_ref": "conversion_rules.instants",
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
