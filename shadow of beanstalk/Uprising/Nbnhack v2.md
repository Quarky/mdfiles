
# NBN HEINLEIN FACILITY — EXPANDED NETWORK SYSTEMS

**Five Systems · Puzzles · Honeypots · Hidden Traps · Physical Clues · Fail-Forward**

---

## FAIL-FORWARD DESIGN PHILOSOPHY

Failure in any system creates complications, not walls. Every piece of information is reachable through multiple paths — network, physical, social, or combination. The Kane archive is reachable even on a hard run because the evidence leaves physical traces as well as digital ones. A runner who fails every ICE encounter but reads the physical environment carefully can still assemble the full picture. It takes longer. It costs more. It is possible.

---

## PHYSICAL ENVIRONMENT — WHAT DANTE FINDS WITH HIS EYES

*Before running a single system, the building tells Dante things if he knows how to read it. Physical investigation rewards patience. Every level has physical clues that confirm network findings or substitute for them if the network fails.*

---

### Physical Clue 01 — The Lobby Photograph Wall

**Location:** Level 1, visible on entry through EV-7

A wall of framed photographs. Corporate history as NBN tells it.

- **Vertex headquarters.** Dated 40+ years ago. Kane Sr. at the front. Young.
- **"NBN founding team."** Smaller group. Kane Sr. again. Dated after the Blackout.
- *Between these two photographs: nothing. The Blackout years are absent.*
- **First SYNC relay tower activated.** A Lunar relay tower. Dated to approximately when the Beanstalk was completed.

**Perception Check (Average):** The SYNC tower photo is dated **3 years before** Heinlein's first habitation dome was operational. SYNC was transmitting on the Moon before anyone was there to transmit to. Network infrastructure built for a population that didn't exist yet. Or one that was coming, and that someone knew was coming.

**Fail-Forward:** If missed, this clue is unavailable but nothing is lost. It is confirmation, not revelation.

---

### Physical Clue 02 — Brennan's Office

**Location:** Level 4, accessible during the sensor alert window (Minutes 28-35)

Brennan left during the crisis. Didn't lock his office.

**Work PAD** showing Sigma-7 runsheet. At the top:

> *CLASSIFICATION: CONTINGENCY — DO NOT ARCHIVE.*
> *Creation date: 3 days ago. Template origin: SIGMA-MASTER.doc, dated 4 years ago.*

Sigma-7 is version 7 of a 4-year-old master template.

**On the desk, face-down** — a printed memo:

> *"Please confirm you have reviewed and authorized coverage protocol Sigma-7 for the anticipated Kaguya event."*

Dated four days ago. **"ANTICIPATED"** Kaguya event. Not "potential." Not "in the event of." *Anticipated.*

**In the coat on the door:** a small personal drive, unlabeled.

If read later: a resignation letter, 8 months old, never sent.

> *"I understand that what we do here is not journalism. I have understood this for some time. I am no longer certain I can continue to understand it silently."*

He didn't send it. He is still here.

**Physical Check (Easy):** Finding the face-down memo.
**Physical Check (Average):** The unlabeled drive in the coat.

**Fail-Forward:** Same Sigma-7 template information findable in System 1's editorial archive, harder to parse.

---

### Physical Clue 03 — The Level 5 Server Room

**Location:** Physical inspection before jacking in

**THING 1 — THE OLD RACK:**

One server rack in the northwest corner is visually different. Older chassis, different manufacturer markings. Predates the facility by a decade. Was moved here from somewhere else — different floor wear beneath it. Label partially obscured by a newer sticker: **"VX-ARCHIVE-7"**

*VX. Vertex. This rack predates NBN and the Blackout.*

**THING 2 — THE CABLE ROUTING:**

VX-ARCHIVE-7 has a second cable run — older cable, different color, routed separately along the floor, does not connect to the main network panel. Goes through the wall. Through a hole drilled at a different time. Toward the northwest. **Level 6 is to the northwest.**

**THING 3 — THE ACCESS LOG PANEL:**

Every rack has a small physical display showing last 10 access events.

VX-ARCHIVE-7: **last access — 6 days ago.** Type: MANUAL. Duration: 4 hours. Authorized by: **FOUNDER CREDENTIALS.**

*"FOUNDER" is not a job title. It is a classification that does not exist in any public NBN credential hierarchy. Someone with FOUNDER credentials was here for 4 hours, 6 days before Kaguya.*

A second label on the VX rack, attached to the encrypted file partition:

> *"Named for the first to trust us."*

This is a hint for System 4's legal archive decryption key.

**Perception (Average):** Noticing VX-ARCHIVE-7 is different.
**Perception (Hard):** Noticing the separate cable run.
**Computers (Average):** Reading the access log panel correctly.

**Fail-Forward:** Same information findable in Systems 3 and 5, fragmented.

---

## SYSTEM 1 — PUBLIC BROADCAST NETWORK

**System Type:** THE HONEYPOT SYSTEM

System 1 is designed to be entered. Everything in it that looks like a secret is a secret NBN chose to make findable. Runners who find the editorial archive think they found the prize and stop. They do not go to Systems 3 or 5.

**The Honeypot has a tell.** Knowing the tell is what separates a runner who gets used from a runner who gets the truth.

**THE TELL:** Sigma-7 has a version number. Versions 1-6 are not here. They are in System 3's StarReach archive. Finding this absence is what leads a runner deeper instead of stopping.

**SECOND HIDDEN TRAP — SIGMA-7b:**

A failsafe version of Sigma-7 exists in the Crisis Protocol Engine. If Dante disables Sigma-7, Sigma-7b auto-activates in 8 minutes from a different node. Both must be disabled. **Computers (Average)** to identify it in the Crisis Protocol Engine.

---

### System 1 — Diagram

```

◈  LOBBY KIOSK (wireless, full ICE depth)              ◈H LEVEL 3 MAINTENANCE PANEL
│                                               (bypasses AIRWAVE)
▼                                                       │
┌───────────────────────────────┐                               │
│ ⬡ AIRWAVE  Barrier  Str 3     │                               │
│ Deliberately easy to break.   │                               │
│ NBN designed it for runners.  │                               │
│ The honeypot works better if  │                               │
│ runners get in.               │                               │
│ On Fail: Lockout 2 rounds.    │                               │
│ Entry vector logged.          │                               │
└───────────────┬───────────────┘                               │
└────────────────────────────────────────────   ┘
│
┌────────────────────────────┼────────────────────────────┐
▼                            ▼                            ▼
┌───────────────────────┐  ┌────────────────────────┐  ┌──────────────────────────┐
│ ▣ LIVE BROADCAST FEED │══│ ▣ CONTENT SCHEDULE     │══│ ▣ AUDIENCE METRICS       │
│                       │  │   MANAGER              │  │                          │
│ · All active broadcasts│  │ · Programming schedule │  │ · Real-time viewership   │
│ · Kaguya feed live    │  │ · Serena's scripts     │  │ · Psychographic segment  │
│ · StarReach status    │  │ · Crisis protocols     │  │   performance            │
│ ░ BROADCAST LOG       │  │ ★ Sigma-7 is here.     │  │ · Suppression flags      │
│   (story/honeypot)    │  │   Creation: 3 days ago.│  │ ★ THE TELL: Kaguya       │
│   Every editorial     │  │   Template: 4 yrs old. │  │   suppression was        │
│   choice. Signed.     │  │ ★ THE TELL: Sigma-7    │  │   programmed into the    │
│   Dated. This is BAIT.│  │   is version 7. Where  │  │   psychographic model    │
│ ░ SERENA'S NOTES      │  │   are versions 1-6?    │  │   BEFORE Kaguya happened.│
│   (story/honeypot)    │  │   Not here. System 3.  │  │   The model pre-knew.    │
│   Genuine. Also bait. │  │                        │  │   This is the crack.     │
└───────────────────────┘  └────────────────────────┘  └──────────────────────────┘
│                            │                            │
└────────────────────────────┼────────────────────────────┘
▼
┌──────────────────────────────────────────────┐
│ ⬢ VIEWHOUND  Sentry  Str 3                    │
│ TODAY: alert buried in sensor queue from      │
│ Prycek's south-face push (Minute 45).        │
│ HONEYPOT ACTIVATION: If runner copies the    │
│ editorial archive, VIEWHOUND escalates to    │
│ real-time immediately.                        │
│ On Fail: 2-hour security review window.      │
│ FAIL-FORWARD: Clock starts. Run continues.   │
└────────────────────┬─────────────────────────┘
│
┌────────────────────────────┼────────────────────────────┐
▼                            ▼                            ▼
┌───────────────────────┐  ┌────────────────────────┐  ┌──────────────────────────┐
│ ▦ BROADCAST UPLINK    │══│ ▦ CONTENT SUPPRESSION  │══│ ▦ CRISIS PROTOCOL ENGINE │
│   CONTROL             │  │   SYSTEM               │  │                          │
│ ★ Push any content    │  │ · Active suppression   │  │ · Sigma-7 running live   │
│ ★ Kill a broadcast    │  │   flags live           │  │ ⚠ Sigma-7b is here.      │
│ ⚠ HIDDEN TRAP:        │  │ · Petra: flagged       │  │   Disable Sigma-7 without│
│   Accessing without   │  │ · Section F: flagged   │  │   finding Sigma-7b and   │
│   disabling NARRATIVE │  │ ⚠ Shadow copy restores │  │   it auto-activates in   │
│   WALL first triggers │  │   flags after 4 min    │  │   8 minutes.             │
│   NBN-wide facility   │  │   unless shadow also   │  │   Computers Average to   │
│   security lockdown   │  │   deleted              │  │   identify and disable.  │
└───────────────────────┘  └────────────────────────┘  └──────────────────────────┘
│                            │                            │
└────────────────────────────┼────────────────────────────┘
▼
┌──────────────────────────────────────────────┐
│ ⬡ NARRATIVE WALL  Barrier  Str 5 / Str 7     │
│ Str 5: runner hasn't taken honeypot bait.    │
│ Str 7: runner copied editorial archive first.│
│ On Fail: Full content lockdown. Security     │
│ notified. 8-second window before director    │
│ calls building-wide breach.                  │
│ FAIL-FORWARD: Those 8 seconds are real.     │
│ Content still goes out. Clock is shorter.   │
└────────────────────┬─────────────────────────┘
│
┌───────────────────┴───────────────────┐
▼                                       ▼
┌────────────────────────────────────┐  ┌──────────────────────────────────────────┐
│ ░ EDITORIAL ARCHIVE (honeypot)     │  │ ◆ MASTER BROADCAST OVERRIDE              │
│   Sigma-7. Four years of documented│  │   GOLDEN OBJECTIVE                       │
│   editorial suppression. Real.     │  │ ★ Push anything to any channel           │
│   Damning. Findable. BAIT.         │  │ ★ Suppression lists stop working         │
│   The tell: versions 1-6 missing. │  │ ★ THIS is the weapon, not the archive    │
│   That question leads to System 3. │  │ ⚠ Disable Sigma-7b first.               │
└────────────────────────────────────┘  └──────────────────────────────────────────┘

```

### System 1 — Honeypot Summary

| Action | Result |
|--------|--------|
| Taking archive without noticing it's bait | NARRATIVE WALL Str 7 + 4-minute response |
| Not taking it, going to golden objective | NARRATIVE WALL Str 5 + 8-minute response |
| The tell leads to System 3 where Sigma 1-6 live | Versions 1-6 are the actual suppression history |
| Sigma-7b | Findable in Crisis Protocol Engine, must be disabled separately |

---

## SYSTEM 2 — PSYCHOGRAPHIC DATA NETWORK

**System Type:** THE PUZZLE SYSTEM — THE MAZE OF MIRRORS

System 2 organizes information associatively, not linearly. The data Dante needs is not in one node — it is distributed as associations across the model. To reconstruct what NBN knows and how it was built, he must read the model's structure, not just its content.

**THE PUZZLE — SIX-PIECE KEY:**

The Psychographic Modeling Core is locked behind THOUGHT LOCK. Passing THOUGHT LOCK cleanly requires assembling a six-piece key. Each piece is buried in a different node.

| Piece | Location | Discovery Method | Difficulty |
|-------|----------|------------------|------------|
| **1** | Heinlein Population DB — date the model first processed pre-Blackout Internet traffic | Not labeled. COMPUTERS to identify. | Hard |
| **2** | Government Liaison Feed — first government to sign surveillance agreement | COMPUTERS to find. | Average |
| **3** | Suppression Target Registry — "FOUNDER-ONLY" in deprecated label format | COMPUTERS to find. | Average |
| **4** | Profile Editor audit trail — server cluster not in official diagram | COMPUTERS to find. | Hard |
| **5** | Government Feed Controller — "STATIC-AUTHORIZED" in deprecated auth logs | COMPUTERS to find. | Hard |
| **6** | PHYSICAL ONLY — painted inside VX-ARCHIVE-7 rear panel: *"THE NETWORK REMEMBERS EVERYTHING."* | Physical inspection. | — |

**With all six pieces:** THOUGHT LOCK difficulty upgraded in runner's favor (▲▲ on check).
**Missing pieces:** Standard difficulty.

**DEEP SCAN AVOIDANCE:**

DEEP SCAN watches for sequential node access. Sequential = flagged. Non-sequential = invisible. Jump between systems. Come back. Don't access nodes in order.

---

### System 2 — Diagram

```

◈H LEVEL 4 ADMIN SERVER RACK (hardwired, no wireless)
│
▼
┌───────────────────────────────┐
│ ⬡ PROFILER  Barrier  Str 4    │
│ Builds behavioral profile of  │
│ runner in real time.          │
│ Longer engagement = better it │
│ knows you.                    │
│ On Fail: Partial profile.     │
│ 30% of subsequent moves       │
│ anticipated correctly.        │
│ 70% are not. Run continues    │
│ with elevated risk.           │
└───────────────┬───────────────┘
│
┌──────┴──────────────────────────────────┐
▼                           ▼              ▼
┌───────────────────────┐  ┌───────────────────────┐  ┌─────────────────────────┐
│ ▣ HEINLEIN POPULATION │══│ ▣ GOVERNMENT LIAISON  │══│ ▣ SUPPRESSION TARGET    │
│   PSYCHOGRAPHIC DB    │  │   FEED                │  │   REGISTRY              │
│ PIECE 1: date buried  │  │ PIECE 2: first govt   │  │ PIECE 3: "FOUNDER-ONLY" │
│ in training metadata. │  │ name in contract      │  │ classification code.    │
│ COMPUTERS Hard.       │  │ addendum. COMPUTERS   │  │ COMPUTERS Average.      │
│                       │  │ Average.              │  │ ★ Dante flagged 3 days  │
│ ★ Dante's own profile │  │ ░ HEINLEIN AUTHORITY  │  │   ago. Yusuf for 8 mths.│
│   is here. Reading it │  │   CONTRACT: specific  │  │ ★ Kaguya watcher list   │
│   is unsettling.      │  │   surveillance terms. │  │   building in real time.│
│   It knows things you │  │   Signed 2 years ago. │  │   Dante can delete it.  │
│   haven't told anyone.│  │   Renewed 6 months    │  │   THE CORE DECISION.    │
└───────────────────────┘  └───────────────────────┘  └─────────────────────────┘
│                           │                           │
└───────────────────────────┼───────────────────────────┘
▼
┌────────────────────────────┐
│ ⬢ DEEP SCAN  Sentry  Str 4 │
│ Sequential access = flagged│
│ Non-sequential = invisible  │
│ On Fail: 40% of subsequent │
│ moves anticipated. 60% not.│
│ Run continues. Higher risk.│
└─────────────┬──────────────┘
│
┌────────────────────────────┼────────────────────────────┐
▼                            ▼                            ▼
┌───────────────────────┐  ┌────────────────────────┐  ┌──────────────────────────┐
│ ▦ PROFILE EDITOR      │══│ ▦ GOVERNMENT FEED      │══│ ▦ SUPPRESSION LIST CTRL  │
│ PIECE 4: anomalous    │  │   CONTROLLER           │  │ ★ Delete Kaguya watcher  │
│ server location in    │  │ PIECE 5: "STATIC-      │  │   list being built now   │
│ audit trail.          │  │ AUTHORIZED" credential │  │ ★ Remove Dante, Yusuf,   │
│ COMPUTERS Hard.       │  │ type. Same word as     │  │   Petra from monitoring  │
│                       │  │ Project Static.        │  │ ★ OR: corrupt profiles   │
│                       │  │ COMPUTERS Hard.        │  │   so predictions fail    │
└───────────────────────┘  └────────────────────────┘  └──────────────────────────┘
│                            │                            │
└────────────────────────────┼────────────────────────────┘
▼
┌────────────────────────────┐
│ ⬠ THOUGHT LOCK  Code Gate  │
│   Strength 5               │
│ All 6 pieces: ▲▲ on check  │
│ Missing pieces: standard   │
│ On Fail: 10-min lockout.   │
│ One retry available.       │
│ The Core is reachable.     │
└─────────────┬──────────────┘
│
┌─────────────────┴──────────────────┐
▼                                     ▼
┌────────────────────────────────────┐  ┌───────────────────────────────────────────┐
│ ░ PREDICTIVE MODEL HISTORY (story) │  │ ◆ PSYCHOGRAPHIC MODELING CORE             │
│ Training data: "Vertex Archive —   │  │   GOLDEN OBJECTIVE                        │
│ Pre-Event Behavioral Corpus."      │  │ Inside: training data label reads:        │
│ "Pre-Event." Not "Pre-Blackout."   │  │ "Vertex Archive — Pre-Event Behavioral    │
│ Someone called it an event before  │  │ Corpus. Classification: FOUNDER ONLY.     │
│ it was called anything.            │  │ Source: Project Static preliminary data   │
│ The model was trained on data      │  │ collection, 18 months pre-deployment."    │
│ collected BEFORE the Blackout.     │  │ 18 months before the Blackout, someone    │
│ In preparation for replacing it.   │  │ collected user data for a network that    │
│                                    │  │ didn't exist yet. Because they were       │
│                                    │  │ building it to replace the one they were  │
│                                    │  │ about to destroy.                         │
└────────────────────────────────────┘  └───────────────────────────────────────────┘

```

---

## SYSTEM 3 — SYNC LUNAR INFRASTRUCTURE NETWORK

**System Type:** THE HIDDEN TRAP SYSTEM — THE DOOR THAT KNOWS YOU OPENED IT

Three nodes contain files seeded with embedded tracking signatures. If those files leave the building on any storage medium without metadata stripping, the signature activates and sends a location ping every 4 hours.

**THE TRAPPED FILES:**

| File | Why It's Targeted |
|------|-------------------|
| StarReach technical specifications | Natural target for any runner |
| Network coverage gap map | Natural target for any runner |
| Blackout modeling records | Most obvious target, most heavily trapped |

**Detection:** Computers (Average) during extraction to notice the tracker.

**Cleaning:** The Relay Master Controller has a metadata strip utility built for legitimate relay maintenance. Computers (Average) to find. Computers (Easy) to use. Strips trackers from any extracted files.

**Alternative:** Read files in-place without extracting. No tracker fires. Trade-off: no physical copy of the evidence.

---

### System 3 — Diagram

```

◈H LEVEL 5 SERVER ROOM TERMINAL (hardwired, via HVAC shaft)
│
▼
┌───────────────────────────────┐
│ ⬡ SIGNAL CAGE  Barrier  Str 4 │
│ On Fail: Level 5 lockdown +   │
│ SYNC security in 8 minutes.   │
│ FAIL-FORWARD: The physical    │
│ cable from VX-ARCHIVE-7 goes  │
│ directly to Level 6, bypassing│
│ System 3 entirely. If SIGNAL  │
│ CAGE fails, use the cable.    │
└───────────────┬───────────────┘
│
┌──────┴──────────────────────────────────┐
▼                           ▼              ▼
┌───────────────────────┐  ┌───────────────────────┐  ┌─────────────────────────┐
│ ▣ HEINLEIN RELAY      │══│ ▣ STARREACH PATHWAY   │══│ ▣ NETWORK COVERAGE MAP  │
│   STATUS              │  │   PROJECT DATA        │  │                         │
│ · All SYNC relay nodes│  │ ⚠ TRACKED FILE:       │  │ ⚠ TRACKED FILE:         │
│ · Coverage gaps       │  │   StarReach specs.    │  │   Coverage gap map.     │
│ ★ Relay logs show     │  │   Strip metadata      │  │   Strip metadata        │
│   "Project Clarity"   │  │   before extracting.  │  │   before extracting.    │
│   events 1-6.         │  │ ░ STARREACH ARCHIVE:  │  │ ★ THE TELL: A note on   │
│   Not called Sigma.   │  │   Pre-Blackout network│  │   the coverage gap map: │
│   Different name.     │  │   data "for modeling  │  │   "Maintained for       │
│   Same events.        │  │   purposes."          │  │   suppression planning. │
│   COMPUTERS Hard to   │  │ ⚠ TRACKED FILE:       │  │   Do not distribute     │
│   match them. But     │  │   Blackout modeling   │  │   outside Founder        │
│   they match.         │  │   records. Most       │  │   credential holders."  │
│                       │  │   sensitive. Most     │  │   FOUNDER again.        │
│                       │  │   trapped.            │  │                         │
└───────────────────────┘  └───────────────────────┘  └─────────────────────────┘
│                           │                           │
└───────────────────────────┼───────────────────────────┘
▼
┌────────────────────────────┐
│ ⬢ PACKET HOUND  Sentry Str4│
│ Fires on EXTRACTION not    │
│ READING. Read in-place:    │
│ safe. Copy without strip:  │
│ PACKET HOUND + tracker.    │
│ On Fail: Trace + archive   │
│ locked 48 hours.           │
│ FAIL-FORWARD: Files still  │
│ readable in-place. Dante   │
│ can read and remember.     │
└─────────────┬──────────────┘
│
┌────────────────────────────┼────────────────────────────┐
▼                            ▼                            ▼
┌───────────────────────┐  ┌────────────────────────┐  ┌──────────────────────────┐
│ ▦ RELAY NODE CONTROL  │══│ ▦ COVERAGE EDITOR      │══│ ▦ STARREACH ARCHIVE CTRL │
│ ★ Relay logs confirm: │  │ ★ Expand dead zones —  │  │ ★ Sigma-1 through        │
│   Project Clarity 1-6 │  │   more PAD-to-PAD space│  │   Sigma-6 are here.      │
│   = Sigma-1 through   │  │ ★ Or: create coverage  │  │   Not in broadcast system│
│   Sigma-6. Six tests  │  │   gap over specific    │  │   In the modeling archive│
│   before Kaguya.      │  │   target location      │  │ ★ Sigma events were TESTS│
│   The system was      │  │                        │  │   Six tests to confirm   │
│   rehearsed.          │  │                        │  │   the suppression system │
│                       │  │                        │  │   worked before Kaguya   │
└───────────────────────┘  └────────────────────────┘  └──────────────────────────┘
│                            │                            │
└────────────────────────────┼────────────────────────────┘
▼
┌────────────────────────────┐
│ ⬠ FREQUENCY LOCK  Code Gate│
│   Strength 5               │
│ FAIL-FORWARD: Failure      │
│ triggers relay network     │
│ maintenance lockdown.      │
│ SYNC relay nodes in outpost│
│ corridors go dark 2 hours. │
│ PAD-to-PAD networks expand │
│ automatically. The failure │
│ accidentally does what     │
│ Dante was trying to do     │
│ intentionally.             │
└─────────────┬──────────────┘
│
┌─────────────────┴──────────────────┐
▼                                     ▼
┌────────────────────────────────────┐  ┌───────────────────────────────────────────┐
│ ▦ RELAY MASTER CONTROLLER          │  │ ◆ STARREACH ARCHIVE — BLACKOUT FILES      │
│ ★ Moon-wide dead zone 6 hours      │  │   GOLDEN OBJECTIVE                        │
│ ★ Guarantee PAD-to-PAD spread to   │  │ ⚠ Most heavily tracked files.             │
│   every outpost simultaneously     │  │   Three tracking signatures on extraction.│
│ ★ HIDDEN TRAP RESOLUTION:          │  │ ★ Read in-place: no tracker.              │
│   Metadata strip utility built in  │  │ ★ Extract using master controller's       │
│   for relay maintenance. COMPUTERS │  │   strip utility: clean extraction.        │
│   Average to find. Easy to use.    │  │                                           │
│   Strips trackers from any files   │  │ Project Static documentation is here.     │
│   already extracted.               │  │ Pre-Blackout network modeling records.    │
│                                    │  │ The technical architecture of the         │
│                                    │  │ Blackout itself.                          │
└────────────────────────────────────┘  └───────────────────────────────────────────┘

```

---

## SYSTEM 4 — NBN SECURITY & COUNTER-INTRUSION NETWORK

**System Type:** THE SECOND PUZZLE — THE NAMES BEHIND THE NAMES

The most sensitive documents in System 4's legal archive are encrypted. The key is a name — the first government to sign a surveillance data-sharing agreement with NBN. That name is in System 2 (Piece 2). Systems 2 and 4 are interdependent.

**Physical hint:** VX rack label reads *"Named for the first to trust us."*

**Without Piece 2:** Brute-force requires Computers (Daunting), or read document headers only (confirms existence, not contents).

---

### System 4 — Diagram

```

◈H LEVEL 4/5 JUNCTION PANEL (hardwired, no wireless)
│
▼
┌───────────────────────────────┐
│ ⬡ SENTINEL  Barrier  Str 4    │
│ TODAY: automated protocols.   │
│ Staff watching Kaguya feed.   │
│ Alert processing is slower.   │
│ On Fail: All runners traced.  │
│ Security in 6 min.            │
│ FAIL-FORWARD: 6 minutes is    │
│ enough to read one more node  │
│ before moving.                │
└───────────────┬───────────────┘
│
┌──────┴──────────────────────────────────┐
▼                           ▼              ▼
┌───────────────────────┐  ┌───────────────────────┐  ┌─────────────────────────┐
│ ▣ ACTIVE INTRUSION    │══│ ▣ SECURITY INCIDENT   │══│ ▣ COUNTER-RUNNER        │
│   MONITOR             │  │   ARCHIVE             │  │   PROFILES              │
│ · All current flags   │  │ ░ PREVIOUS HACK       │  │ ░ "Subject 14" = Yusuf  │
│ · Physical team       │  │   ATTEMPT (story)     │  │   Physical description  │
│   positions           │  │   Two years ago.      │  │   matches exactly.      │
│ ★ Shows what is       │  │   Runner's callsign:  │  │   8 months of tracking. │
│   flagged vs queued   │  │   "STATIC."           │  │   PUZZLE CONNECTION:    │
│ ★ Invaluable for      │  │   Same word as        │  │   Note in Yusuf's file: │
│   managing the run    │  │   Project Static.     │  │   "Associated with       │
│                       │  │   Got to System 3.    │  │   individuals connected  │
│                       │  │   No further.         │  │   to Project Static      │
│                       │  │                       │  │   network."              │
│                       │  │                       │  │   Yusuf has a connection │
│                       │  │                       │  │   to Project Static.     │
│                       │  │                       │  │   NBN knows. Dante       │
│                       │  │                       │  │   doesn't. Yet.          │
└───────────────────────┘  └───────────────────────┘  └─────────────────────────┘
│                           │                           │
└───────────────────────────┼───────────────────────────┘
▼
┌────────────────────────────┐
│ ⬢ GHOST TRACE  Sentry Str5 │
│ Watches and builds before  │
│ firing. By the time it     │
│ fires, it knows everything.│
│ On Fail: Full dossier sent │
│ to NBN + Heinlein Authority│
│ + U.S. government.         │
│ FAIL-FORWARD: Dossier      │
│ contains what GHOST TRACE  │
│ knows at time of firing.   │
│ If Dante hasn't reached    │
│ deep systems: dossier is   │
│ incomplete. Less damaging. │
│ Run continues.             │
└─────────────┬──────────────┘
│
┌────────────────────────────┼────────────────────────────┐
▼                            ▼                            ▼
┌───────────────────────┐  ┌────────────────────────┐  ┌──────────────────────────┐
│ ▦ ALERT SUPPRESSION   │══│ ▦ PHYSICAL SECURITY    │══│ ▦ COUNTER-RUNNER CONTROL │
│ ★ Kill active flags   │  │   COORDINATOR          │  │ ★ Delete runner profiles │
│ ★ Insert "all clear"  │  │ ★ Redirect teams       │  │ ★ Delete Yusuf/"Subject  │
│   resetting alerts    │  │ ★ Lock teams in place  │  │   14" — 8 months gone    │
│                       │  │   30 minutes           │  │ ★ The Yusuf/Static note: │
│                       │  │                        │  │   copy or delete         │
└───────────────────────┘  └────────────────────────┘  └──────────────────────────┘
│                            │                            │
└────────────────────────────┼────────────────────────────┘
▼
┌────────────────────────────┐
│ ⬠ IRON NARRATIVE Code Gate │
│   Strength 6               │
│ With Piece 2: ▲▲ on check  │
│ Without Piece 2: standard  │
│ + encrypted archive needs  │
│ Computers Daunting.        │
│ On Fail: Partial access —  │
│ read-only document headers.│
│ Titles visible. Not content│
│ Confirms what exists.      │
└─────────────┬──────────────┘
│
┌─────────────────┴──────────────────┐
▼                                     ▼
┌────────────────────────────────────┐  ┌───────────────────────────────────────────┐
│ ░ NBN LEGAL ARCHIVE (story)        │  │ ◆ SECURITY MASTER NODE                    │
│ ENCRYPTED (need Piece 2):          │  │   GOLDEN OBJECTIVE                        │
│ · Petra's suppression order filed  │  │ ★ Suppress all active flags               │
│   BEFORE she published. Before     │  │ ★ Delete runner profiles permanently      │
│   Kaguya. Someone told NBN she     │  │ ★ Lock physical security 30 min           │
│   would be a problem before        │  │ ★ Read access to Level 6                  │
│   she was one.                     │  │                                           │
│ · Legal hold on Project Static     │  │ THE YUSUF REVELATION:                     │
│   documentation — subpoena quashed │  │ Security master log shows "Subject 14"    │
│   3 years ago. Legal firm traces   │  │ (Yusuf) was first flagged not for Loony   │
│   to a Kane family trust.          │  │ activity but for a search query 2 years   │
│ · Communications between NBN       │  │ ago. He searched "Project Static" on a   │
│   Director and "the Architects"    │  │ public terminal.                          │
│   re: "Phase 2 of Static           │  │ He already knew the name.                 │
│   deployment." Phase 2. The        │  │ He was looking for confirmation.          │
│   Blackout was Phase 1.            │  │ Yusuf has known about Project Static      │
│                                    │  │ for at least 2 years.                     │
│                                    │  │ He brought Dante into this run.           │
│                                    │  │ He knew what was here.                    │
└────────────────────────────────────┘  └───────────────────────────────────────────┘

```

---

## SYSTEM 5 — LEVEL 6: THE FOUNDER ARCHIVE

**System Type:** THE FINAL OBJECTIVE

**PHYSICAL ACCESS:**

Stairs behind an ENVIRONMENTAL SYSTEMS panel on Level 5, adjacent to VX-ARCHIVE-7 rack. Not hidden — just mislabeled. **Perception (Average)** to find. DEAD MAN does not monitor physical stairs. Physically descending and reading without touching the network: no DEAD MAN notification. No tracker. No ICE.

**NETWORK ACCESS:**

Through Security Master Node (System 4 golden objective).

---

### System 5 — Diagram

```

│ (network — through Security Master Node)
│ OR physical stairs — DEAD MAN does not apply
▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ ⬡ DEAD MAN  Barrier  Str 6  (NETWORK ONLY)                                  │
│ If breached: notification to an unknown New Angeles address.                │
│ Not NBN security. Someone else. One of the surviving Architects?            │
│ A Kane family trustee? The notification starts a clock. Hours, not minutes. │
│ FAIL-FORWARD: Someone knows someone was here. Not who. Not what they took. │
│ The clock runs. The run continues. Someone is eventually coming.            │
└─────────────────────────────────────────────┬───────────────────────────────┘
│
┌───────────────────────────────  ┼  ───────────────────────────────┐
▼                                 ▼                                 ▼
┌─────────────────────────┐       ┌─────────────────────────┐       ┌───────────────────────┐
│ ▣ PROJECT STATIC        │═══════│ ▣ THE VERTEX FILES      │═══════│ ▣ POST-BLACKOUT       │
│   DOCUMENTATION         │       │                         │       │   TRANSITION RECORDS  │
│ · Full planning docs    │       │ · Vertex before         │       │ · How NBN was         │
│ · Technical attack specs│       │   partition             │       │   reconstituted       │
│ · Timeline: 8 months    │       │ · Kane family comms     │       │ · Funding source:     │
│   pre-deployment        │       │   from partition era    │       │   accounts predating  │
│ · Who knew, who         │       │ KEY DOCUMENT:           │       │   partition by 3 yrs  │
│   authorized            │       │ Kane Sr. to Kane Jr.,   │       │   30 years of         │
│ KEY DOCUMENT:           │       │ 1 year post-Blackout:   │       │   planning. Blackout  │
│ "The Architects"        │       │ "The world will spend   │       │   was phase one of    │
│ listed by name.         │       │ a generation asking     │       │   a thirty-year plan. │
│ Eleven people.          │       │ how this happened.      │       └───────────────────────┘
│ Seven are dead.         │       │ By the time they find   │
│ Three in government.    │       │ an answer, the answer   │
│ One on the NBN board.   │       │ will not matter to us." │
│ The board member's name │       └─────────────────────────┘
│ appears in the Heinlein │
│ Authority surveillance  │
│ contract. They helped   │
│ negotiate it. The       │
│ surveillance state and  │
│ the Blackout are the    │
│ same project.           │
└─────────────────────────┘

```

---

### THE KANE ARCHIVE — FOUNDER RECORDS

**FINAL GOLDEN OBJECTIVE**

**Project Static:** Targeted cyber attack to destroy the old Internet while leaving SYNC — developed simultaneously and deliberately — as the only viable successor. Phase 1. The Blackout was Phase 1.

**Phase 2 — The Martian Network:** Timeline: 15 years from Static completion. Infrastructure currently assessed through StarReach Pathway deployment. They did this to the Moon. They are planning to do it to Mars.

> *"Collateral modeled at acceptable parameters."*

That is all it says about the people who died.

---

### Physical Level 6 — What Dante Finds With His Eyes

One room. Server equipment on two walls. A desk in the center. The chair holds a slight impression. Someone was here 6 days ago.

**On the desk: a photograph, unframed.**

A group of people in front of an old server room. Kane Sr. is in it, young. Eleven others, unnamed. On the back, in handwriting:

> *"The Architects. Pre-Static. Year one."*

**Next to the photograph: a small personal drive, labeled.**

One word, in small precise handwriting:

> *"AFTER."*

**If Dante takes this drive and reads it:**

A single video file. Kane Sr., elderly, recorded within the last 3 years. Speaking to camera. No audience. Eleven minutes. He talks about Vertex. The legislation. What he decided. He does not apologize. He does not express regret. He explains.

The last thing he says:

> *"The Network remembers everything. So do I. So will whoever finds this. That's the point."*

He looks at the camera for three seconds. Then the recording ends.

---

## COMPLETE ICE REFERENCE

| System | ICE Name | Type | Strength | Fail-Forward |
|--------|----------|------|----------|--------------|
| **1** | AIRWAVE | Barrier | 3 | Lockout 2 rounds. Entry logged. Honeypot open. |
| **1** | VIEWHOUND | Sentry | 3 | 2-hour review clock. Buried in sensor queue. Escalates instantly if archive copied. |
| **1** | NARRATIVE WALL | Barrier | 5 / 7 | Str 7 if bait taken. 8-second window on fail. |
| **2** | PROFILER | Barrier | 4 | 30% prediction rate on subsequent moves. |
| **2** | DEEP SCAN | Sentry | 4 | 40% prediction rate. Jump between systems. |
| **2** | THOUGHT LOCK | Code Gate | 5 | 10-min lockout. One retry. Core reachable. |
| **3** | SIGNAL CAGE | Barrier | 4 | Physical cable to VX rack bypasses System 3. |
| **3** | PACKET HOUND | Sentry | 4 | Fires on extraction not reading. Read in-place. |
| **3** | FREQUENCY LOCK | Code Gate | 5 | Failure expands PAD-to-PAD coverage. Good fail. |
| **4** | SENTINEL | Barrier | 4 | 6 minutes to move. Enough for one more node. |
| **4** | GHOST TRACE | Sentry | 5 | Incomplete dossier if deep systems unreached. |
| **4** | IRON NARRATIVE | Code Gate | 6 | Piece 2 = ▲▲. Without: headers only on fail. |
| **5** | DEAD MAN | Barrier | 6 | Network only. Physical stairs bypass. Hours clock. |

---

## THE REVELATION SEQUENCE

### Physical Clues

| Location | Discovery |
|----------|-----------|
| **LOBBY** | SYNC on Moon before anyone lived here. History has a gap. |
| **BRENNAN'S OFFICE** | "Anticipated Kaguya event." Sigma was planned. |
| **LEVEL 5 SERVER ROOM** | VX-ARCHIVE-7 predates NBN. FOUNDER access 6 days ago. |

### Network Systems

| System | Revelation |
|--------|------------|
| **SYSTEM 1** | Sigma-7 is version 7. Versions 1-6 exist somewhere. Not here. |
| **SYSTEM 2** | Model trained on pre-Blackout data. "Pre-Event." They knew before it happened. |
| **SYSTEM 3** | Sigma 1-6 = Project Clarity. Six rehearsals. StarReach = Phase 2 prep. |
| **SYSTEM 4** | Petra flagged before she published. Yusuf searched "Project Static" 2 years ago. |
| **SYSTEM 5** | Project Static. The Architects. Eleven names. Phase 2: Mars. Kane's video: *"The Network remembers everything. So do I."* |

---

## THE FINAL QUESTION

Yusuf knew about Project Static before this run. He built the network that led to the Insurrection. He arranged for Prycek to create the cover. He knew the Insurrection would happen. He knew it would create the conditions for this run.

**Did Yusuf use the Insurrection — use Zane, use the workers, use everything — to get Dante into this building?**

This question has no answer in the archive. It has an answer in whatever Dante does next.
```