# Card Source Reconciliation — MTGFoundry

**Audit:** 2026-10-10. The catalog uses multiple sources with explicit roles, not competing sources of conversion authority.

## Authority hierarchy

1. **Actual 5e conversion** — [Pwalk5e native `items.json`](https://github.com/Quarky/Pwalk5e/blob/main/work/current/planeswalker5e/data/items.json), with [`actors.json`](https://github.com/Quarky/Pwalk5e/blob/main/work/current/planeswalker5e/data/actors.json) for creature stats/attacks. Current GitHub source overrules earlier documentation; live-game behavior is unverified here.
2. **Saved deck** — [Ramza's Archidekt deck](https://archidekt.com/decks/26036532/ramzas_deck) plus Pwalk5e's [saved canonical Archidekt + Scryfall JSON](https://github.com/Quarky/Pwalk5e/blob/main/work/current/mtg-dnd-bridge/data/ramzus-canonical-deck.json). Snapshot retrieved **2026-10-06T16:52:57.619Z**; Archidekt snapshot last updated **2026-10-04T14:10:47.652991Z**.
3. **Oracle identity/printings** — [Scryfall](https://scryfall.com/) IDs, types, faces, printing, art and Oracle reference links. [MTGJSON AtomicCards](https://www.mtgjson.com/downloads/all-files/) is an alternative catalog/cross-check, *not a converter*.
4. **Rules checkpoint** — Planeswalker5e v9 (2026-10-02) §§6.1–7.3, as recovered, unless superseded by newer source or explicit instructions.

## Audited coverage

| Category | Count |
|---|---:|
| Saved deck distinct names | 38 |
| Saved deck copies (quantities) | 43 |
| Source-locked native Item definitions | 37 |
| Native definitions present in saved deck | 36 |
| Saved deck names without native conversion | 2 |
| Native conversions absent from saved deck | 1 |
| Distinct names documented | 39 |

### Saved deck missing conversion
- [[Cards/judgment-of-alexander|Judgment of Alexander]]
- [[Cards/sejiri-shelter-sejiri-glacier|Sejiri Shelter // Sejiri Glacier]]

### Native conversion missing from saved deck
- [[Cards/restoration-magic|Restoration Magic]]

## Rules for future refreshes

- Retain **Oracle ID** as the stable identity; printing ID and card face are secondary. Printed text, face MV, and effective MV must be distinguished, especially on adventure lands and MDFCs.
- Pull the latest deck and official Oracle data before claiming completeness for the live deck; this saved snapshot is not asserted to be today's Archidekt state.
- Preserve conversion records in source-controlled Items and Actors; do not convert a card by multiplying its printed P/T with the direct-damage multiplier.
- Do not mark imported, linked, playable, validated or live-tested based only on `ruleData.locked`.
- Add new notes to [[Card Conversion Index]] and record source/version, action economy, triggers, targeting, native activities, counter handling and exceptions.
