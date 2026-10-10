# Power, Toughness and Damage

## Creature conversion
- Preserve printed/base Power and Toughness separately from current P/T.
- Converted HP: PC HP baseline for MV band × Toughness ratio relative to expected body in that band.
- Converted DPR: PC DPR baseline for MV band × Power ratio relative to expected body in that band.
- Identical P/T at different MV can have different D&D statistics.
- Exact per-band baselines and ratio denominators are **not specified** in the recovered checkpoint; do not invent them.

## +1 Power
A permanent +1 Power updates Power-dependent damage/abilities **within the same MV band**. It does not necessarily mean +1 flat D&D damage or +2.5 damage.

## +1 Toughness
Permanent Toughness changes both maximum and current HP by the derived difference. Removing it subtracts the same difference. Temporary Toughness instead creates a separate buffer that is depleted before normal HP and disappears on expiry, without reducing normal HP.

## Armor class
Use MV/level band, defensive archetype, and base Toughness relative to band expectation. Ordinary +1/+1 does not inherently change AC; appropriate armor/plating/shields may independently modify AC.

## Direct MTG damage and life
Default: 1 MTG damage/life ≈ 2.5 D&D HP; round halves upward unless specific conversion overrides.

| MTG amount | D&D HP |
|---:|---:|
| 1 | 3 |
| 2 | 5 |
| 3 | 8 |
| 4 | 10 |
| 5 | 13 |
| 6 | 15 |
| 7 | 18 |
| 8 | 20 |
| 9 | 23 |
| 10 | 25 |

Damage retains D&D damage type; life payment/loss is direct HP loss, not damage. Table entries are calculated from the default multiplier, not individual card approvals.

Source: checkpoint v9 §§6.2–6.4, 7.1–7.3.
