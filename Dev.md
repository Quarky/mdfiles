It wasn't the conversation hitting a hard token limit. The thread is huge, but the earlier context is still available in compressed form. The freezes were happening during long tool/file-generation passes. I should stop re-running broad builds when that happens and work in smaller, explicit batches.
I also checked the earlier design trail: Deck Echo / Deck Technique was never actually locked into a final definition. It looks like it was part of the stalled design work rather than something we successfully finalized. So we can define it cleanly now instead of accidentally contradicting an older rule.
First: separate Deck Technique from Deck Echo
I think these should be two related but different concepts.
Term
Definition
Planeswalker Technique
A reusable class spell powered by mana rather than spell slots or cards.
Deck Technique
A Planeswalker Technique learned because it matches the colors, mechanics, or archetype of your current deck.
Deck Echo
A special Deck Technique derived from the theme/mechanical idea of a specific card in your deck, deliberately weaker than that card and never consuming/replacing the actual card.
A Deck Technique is therefore not a card. It never enters Library, Hand, Graveyard, Exile, or Stack as a physical card object. It lives as a native D&D5e class Item/Activity and is always available as long as you have the mana and action economy to use it.
That is important because the cards remain the strong, scarce resource, while the class gives the Planeswalker reliable everyday magic.
Deck Echo
This is the part I think you liked.
A Deck Echo takes one recognizable idea from a card the Planeswalker actually carries and turns it into a weaker, reusable technique.
For example, Scot's deck contains Defiant Strike. We would not give him endlessly reusable Defiant Strike.
Instead he could learn an echo such as:
Defiant Impulse — {W}
Bonus Action. One creature within range gains a small Power/attack benefit until its next turn.
No card draw.
That preserves the identity of Defiant Strike—quick white combat reinforcement—but removes the valuable card-economy component.
Similarly:
Reckless Spark — {R}
A small packet of fire damage.
inspired by Reckless Rage, but without its 10/5 damage structure.
Or:
Mentor's Lesson — {1}{W}
Briefly improve one ally's combat effectiveness.
inspired by Monastery Mentor's training/prowess identity, but it doesn't create Monks.
That is what Deck Echo should mean.
We should actually store this provenance in Foundry:
inspirationCardOracleId
inspirationCardName
mechanicalInspiration
colorPieRationale
powerReduction
derivationNotes
So clicking the technique in the journal can show exactly why we designed it that way.
Important interaction with the existing deck
I would not have ordinary Planeswalker Techniques emit normal mtg.spellCast.
Otherwise a repeatable 1-mana class ability would endlessly activate Young Pyromancer, Guttersnipe, Monastery Mentor, Feather, Hopesinger, etc. That would make the reusable class magic substantially stronger than the cards themselves.
Instead:
Technique cast: mtg.techniqueCast
Actual card spell: mtg.spellCast
Then Deck Echo itself can eventually provide controlled interaction between those systems. My first version would be:
Echo Cast — once per D&D round, when you use a Deck Echo derived from an Instant or Sorcery, you may have that Technique count as an Instant/Sorcery cast for your controlled MTG triggers.
That gives Scot the exciting spellslinger synergy without allowing five cheap Techniques to manufacture five Guttersnipe/Pyromancer triggers every round.
That one absolutely needs playtesting.
Planeswalker Class, levels 1–6
Being a Planeswalker should still be a character state—the Spark doesn't disappear because someone multiclasses out of Planeswalker. The class represents training in using the Spark.
Wizards treats the color pie as foundational to both Magic's flavor and mechanics, and Ravnica deliberately differentiates the identities of its two-color combinations, so I would make color identity mechanically important to the class rather than just cosmetic. �
MAGIC: THE GATHERING +2
Level
Features
Technique tier
1
Spark Casting, Planeswalker Ability, Color Attunement, 3 Techniques
1 mana
2
Deck Echo, Planar Sense
1 mana
3
Deck Discipline, 2-Mana Techniques
1–2 mana
4
ASI/Feat, Mana Shaping
1–2 mana
5
Greater Techniques, Improved Deck Echo
1–3 mana
6
Wayfinder, Deck Discipline improvement
1–3 mana
I would use a d8 Hit Die. The Planeswalker Ability remains the choice we already established: Intelligence, Wisdom, or Charisma.
The class does not get spell slots. It uses our existing W/U/B/R/G/C mana system.
Level 1 — Spark Casting
Choose a Planeswalker Ability: Intelligence, Wisdom, or Charisma.
Technique attack:
PB + Planeswalker Ability modifier
Technique save DC:
8 + PB + Planeswalker Ability modifier
You learn three 1-mana Techniques.
Your Technique colors have to come from your established Color Attunement/deck identity unless a feature expands it.
This gives a level-one Planeswalker something magical to do even when the seven-card hand contains nothing appropriate.
Level 2 — Deck Echo + Planar Sense
Deck Echo lets you choose a card from your active deck and learn an approved weaker Technique based on one of its themes or mechanical concepts.
It does not reproduce the card's complete rules.
The original card stays better.
The other feature is Planar Sense: recognize planar interference, unusual boundaries, active Omenpaths, planar locks, strong planar resonance, and similar phenomena. This is information/sensing, not unrestricted planeswalking.
Level 3 — Deck Discipline
This is the class's deck-archetype specialization.
Rather than subclasses being “White Mage,” “Red Mage,” etc., I'd base them on things that actually resemble Magic deck identities.
For Scot's current deck the obvious Discipline is:
Spellslinger
because Feather, Guttersnipe, Young Pyromancer, Monastery Mentor, Zada, Hopesinger, and the large Instant package all reward spell casting.
Other future Disciplines can be things such as Conclave for creature/go-wide decks, Gravebinder for graveyard/recursion, Artificer for artifact decks, Wildspeaker for creature/ramp, and Schemer for control/manipulation.
These are working names; we'd check every final name against actual Magic naming so they sound like Magic without simply duplicating an existing mechanic unnecessarily.
Level 3 also unlocks 2-mana Techniques.
Level 4 — Mana Shaping
ASI/Feat stays because it is a D&D class.
Mana Shaping should improve how you use mana, not simply hand you more stored mana and undermine our mana economy.
A good first implementation is:
Once per round when paying for a Technique, you may satisfy 1 generic mana in its cost with any one available mana color.
That helps Techniques function when environmental mana isn't perfect without removing colored requirements.
Level 5 — Greater Techniques / Improved Echo
Unlock 3-mana Techniques.
And Deck Echo improves. I would start playtesting with two prepared Deck Echoes instead of one.
Not two casts per round—two different Echo Techniques you know.
The once-per-round Echo Cast interaction remains the throttle.
Level 6 — Wayfinder
This is where actual Planeswalker training begins making planar travel materially better.
It should not bypass Planar Locked.
Instead:
Preparation Required: preparation becomes easier/faster and you can maintain more prepared routes.
Open: familiar prepared routes become extremely reliable.
Planar Locked: Wayfinder tells you more about the lock but cannot overpower something such as the Immortal Sun.
That maintains our campaign protection.
Techniques through level 6
I would organize them by mana tier rather than D&D spell level.
Here is the first working set. These are original mechanics/names in an MTG naming style, not copied Magic cards.
Technique
Cost
Color
Effect concept
Kindled Spark
R
Red
Small ranged fire strike
Sudden Fervor
R
Red
Brief movement/attack boost
Dawnward
W
White
Reactionary damage reduction
Rallying Light
W
White
Small temporary-HP/support effect
Thoughtglimpse
U
Blue
Brief information/inspection effect
Miststep
U
Blue
Short repositioning effect
Grave Whisper
B
Black
Inspect/reveal a weakened creature or grave-state information
Blood Bargain
B
Black
Small HP payment for a modest immediate advantage
Briarstep
G
Green
Movement through terrain / short speed enhancement
Primal Vigor
G
Green
Small physical reinforcement
Hedron Pulse
C
Colorless
Minor force attack or object interaction
Those are the 1-mana bread-and-butter powers.
At 2 mana, they become more tactical:
Technique
Cost
Theme
Radiant Reprisal
1W
Reaction: protect an ally and answer an attacker with minor radiant force
Marshal's Resolve
1W
Reinforce multiple nearby allies modestly
Ember Volley
1R
Small multi-target fire effect
Reckless Advance
1R
Mobility plus offensive momentum
Veiled Thought
1U
Defensive mental concealment / targeting disruption
Calculated Diversion
1U
Reposition or impose a minor tactical penalty
Gravebind
1B
Briefly hinder a wounded creature
Life for Power
1B
Direct HP cost for an enhanced Technique
Rootsnare
1G
Local restraint/terrain control
Predator's Instinct
1G
Improve pursuit/physical combat
Hedron Ward
1C
Small force barrier
At level 5, the 3-mana Techniques should feel significant but still remain clearly weaker than spending an actual strong card:
Technique
Cost
Theme
Aegis of the Host
2W
Moderate party protection
Resonant Volley
2R
Stronger but ordinary fire/radiant offensive magic
Arcane Refraction
2U
Limited spell interference without becoming a full unrestricted Counterspell
Gravecall
2B
Temporary grave-derived assistance, not full card recursion
Verdant Ascendance
2G
Strong physical/movement enhancement
Hedron Convergence
3
Flexible colorless force/control Technique
Those aren't final numbers yet. They establish the power vocabulary.
Why these look like Magic
The design rule isn't merely “red = fire.”
Magic's color identity is supposed to govern both philosophy and mechanical capabilities, and Wizards explicitly treats that color structure as fundamental to design. Ravnica's guild identities are also useful models for how two colors combine into recognizable play styles. �
MAGIC: THE GATHERING +1
And mechanics such as Prowess show the sort of “casting spells changes combat state” identity that makes Scot's W/R spellslinger deck recognizable. �
MAGIC: THE GATHERING
So Scot's reusable W/R class Techniques should emphasize things like:
White: protection, coordination, reinforcement, disciplined combat.
Red: immediate damage, speed, impulse, aggressive movement.
Red/White together: aggressive protection, combat tricks, rallying allies, retaliatory damage, coordinated offense.
That is why I would not give his stable class toolkit things like unrestricted resurrection, deep mind control, routine counterspells, or efficient graveyard recursion. Those belong elsewhere in the color pie and/or should remain valuable card effects.
Current deck's first Deck Echo candidates
This is where the system becomes especially useful.
Defiant Strike → Defiant Impulse
Keep the quick white combat enhancement. Remove Draw 1.
Expedite → Sudden Momentum
Keep short-lived speed/haste flavor. Remove Draw 1.
Gods Willing → Chosen Ward
Give a weaker defensive color ward. Remove the full DEBT Protection package and MTG Scry.
Reckless Rage → Reckless Spark
Keep red self-endangering offense at much lower damage.
Monastery Mentor → Mentor's Lesson
Give one ally a minor temporary combat improvement. Do not make a Monk.
Young Pyromancer → Ember Familiarity
Small fire Technique. Do not create an Elemental on every use.
Feather → Redeemed Refrain
A very limited spell-retention themed effect, but absolutely not Feather's full exile-and-return card engine.
That's the distinction I want throughout:
The card has the powerful mechanic. The Echo has the recognizable idea.
One previously added rule also belongs in this class/module
Your new summon-control ceiling should be global:
Maximum directly controlled summons = Charisma modifier + 1.
I would enforce it before placement. If you're at the cap, Summon is disabled until you dismiss/release a directly controlled summon or an existing controlled summon disappears.
That also interacts nicely with the faction rules: creatures over which you have direct control are tagged to their controller and excluded from normal faction-level opponent damage.
For now I would not allow a new summon to silently replace the oldest one. That could accidentally destroy something important. The UI should tell you Controlled Summons: 4/4 and require you to choose what to release first.
The next class-design pass should be the numerical one: set the exact damage/healing/buff values for these Tier 1–3 Techniques, define Spellslinger through level 6, and then run them against Scot's actual W/R deck to make sure Deck Echo + Guttersnipe/Pyromancer/Feather/Zada doesn't create an unintended loop.