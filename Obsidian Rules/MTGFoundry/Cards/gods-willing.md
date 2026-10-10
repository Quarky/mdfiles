# Gods Willing — MTGFoundry Card Rules

> [!info] Conversion definition located
> Source-locked native definition (runtime unverified). This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Gods Willing |
| Oracle identity | `48e603a2-b965-4fbc-ad57-4388bce5ac8b` |
| MTG mana cost | {W} |
| Mana value | 1 |
| Types | Instant |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Ravnica: Clue Edition |
| Conversion source | Planeswalker5e native Item |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/clu/63/gods-willing?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)

## Actual Planeswalker5e conversion

**Definition fields:**
- Foundry Item type: `spell`
- Native role: `instantSpell`
- Template key: `gods-willing`
- Rule definition: locked in source
- Card linkage: `pending-card-link`

### Readable rule and combat fields

- **Effect:** Target creature controller controls gains Protection from one chosen MTG color (W/U/B/R/G) until end of current round; then MTG Scry 1.
- **Protection Rule Ref:** conversion_rules.keywords.protection
- **Scry Rule Ref:** conversion_rules.keywords.mtg_scry
- **Native Dnd Interop:** Protection checks MTG color tags assigned to native D&D sources through the native D&D color-mapping layer.
- **Target Illegal:** If sole target becomes illegal, spell fails and MTG Scry 1 does not occur.
- **Protection Debt Note:** Protection is MTG-style DEBT, not blanket immunity. Non-targeted non-damage effects can still apply unless another rule prevents them; protected-color damage is prevented and targets/attachments/interception follow MTG legality.

### Exact structured conversion payload

```json
{
  "locked": true,
  "mtg": {
    "cost": "{W}",
    "mv": 1,
    "types": [
      "Instant"
    ],
    "color": "White"
  },
  "effect": "Target creature controller controls gains Protection from one chosen MTG color (W/U/B/R/G) until end of current round; then MTG Scry 1.",
  "protection_rule_ref": "conversion_rules.keywords.protection",
  "scry_rule_ref": "conversion_rules.keywords.mtg_scry",
  "native_dnd_interop": "Protection checks MTG color tags assigned to native D&D sources through the native D&D color-mapping layer.",
  "target_illegal": "If sole target becomes illegal, spell fails and MTG Scry 1 does not occur.",
  "protection_debt_note": "Protection is MTG-style DEBT, not blanket immunity. Non-targeted non-damage effects can still apply unless another rule prevents them; protected-color damage is prevented and targets/attachments/interception follow MTG legality.",
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
