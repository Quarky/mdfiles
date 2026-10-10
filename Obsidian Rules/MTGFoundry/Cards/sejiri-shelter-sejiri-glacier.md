# Sejiri Shelter // Sejiri Glacier — MTGFoundry Card Rules

> [!warning] No converted native Item found
> Printed deck card; no native conversion found. This note records the 2026-10-10 repository audit, not a live Foundry test.

## Card identity and source

| Field | Value |
|---|---|
| Name | Sejiri Shelter // Sejiri Glacier |
| Oracle identity | `d54e4e37-042b-44a5-918d-757308545d4d` |
| MTG mana cost | Front spell **Sejiri Shelter:** `{1}{W}`; back land **Sejiri Glacier:** no mana cost |
| Mana value | 2 |
| Types | Spell face: Instant; land face: Land |
| Base P/T | Not applicable / not recorded |
| Deck quantity in saved snapshot | 1 |
| Saved printing | Zendikar Rising |
| Conversion source | No matching Item in current source |
| Runtime verification | Not established by this documentation |

- [Oracle/printing details on Scryfall](https://scryfall.com/card/znr/37/sejiri-shelter-sejiri-glacier?utm_source=api)
- [Archidekt source deck](https://archidekt.com/decks/26036532/ramzas_deck)


## Two-face rules metadata

- **Sejiri Shelter (front):** `{1}{W}`, MV 2; Instant, creature protection effect.
- **Sejiri Glacier (back):** Land with no casting cost; enters tapped; can tap for white mana.
- A spell's mana value for band access is not automatically the land face's cost, and this dual-face card has no approved native D&D conversion in audited source.

## Conversion status

This name exists in the saved deck's Archidekt and Scryfall data, but **no matching native converted Item** exists in `work/current/planeswalker5e/data/items.json` as audited. Do not fabricate converted D&D mechanics.

## Provenance

- Card print / metadata snapshot: `Quarky/Pwalk5e/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json` (retrieved 2026-10-06).
- Native conversion: `Quarky/Pwalk5e/work/current/planeswalker5e/data/items.json` and actor templates `data/actors.json`, checked 2026-10-10.
- Authoritative rules baseline: Planeswalker5e checkpoint v9 (2026-10-02), subject to superseding current source and instructions.
- Cross-reference: [[MV Access Bands]], [[Power Toughness and Damage]], [[Damage Conversion Evidence]].
