# Network Rules — Complete GM Reference

## What a run represents

A **system** is a connected computer environment with a defined purpose. A **subsystem** is one functional partition: cameras, doors, payroll, flight clearance, life support, or an archive. A **runner** intrudes. A **sysop** defends. A **run** can occur alone or in the same initiative order as combat, pursuit, or structured social play.

The Network is ubiquitous but not magical. A successful intrusion only enables functions the target hardware and software can actually perform. A refrigerator can report contents or change temperature; it cannot open a door with no motor, see through a camera it does not possess, or expose payment credentials stored on a separate household system.

## Required link

A runner needs a link to the target system. Most links are wireless, but isolated or high-security systems may require a cable, service jack, reader, maintenance panel, or console in a restricted physical location. An access point can change the difficulty, reveal different routes, or place the runner behind perimeter ICE.

## One shared initiative

Use the normal Genesys initiative order. A runner spends the same action and maneuvers that other characters use in meatspace. A runner can therefore open a door while allies exchange fire, loop a camera during an infiltration, or race a sysop while a negotiator stalls security.

## The run procedure

1. **Reach a link.** Establish wireless range or physically reach an access point.
2. **Access System — action.** Make a Computers (Hacking) check at the system’s base difficulty.
3. **Reveal the known structure.** On access, show known subsystems and which are protected, but normally conceal the ICE identity, strength, and exact hidden partitions.
4. **Activate a needed program — maneuver.** This must happen before encountering ICE unless a talent says otherwise.
5. **Attempt Access — incidental.** Shift attention to a connected subsystem. If it has active ICE, immediately encounter the first layer only if the runner still has an action available to Break ICE.
6. **Break ICE — action.** Make an Average Computers (Hacking) check. On a successful check, override strength equals net Successes plus the strength of one compatible active icebreaker. The total must **exceed**, not equal, the ICE strength.
7. **Resolve the ICE.** Success suppresses it through the end of the runner’s next turn unless a result extends that duration. Failure resolves the ICE’s listed effect. Nonblocking ICE may still allow access after its effect.
8. **Repeat layers.** Multiple layers are encountered one at a time. The runner normally needs another turn and action for each layer.
9. **Enact Command — maneuver.** Once the subsystem is accessible, issue one command within its actual capabilities. A complex command may require multiple maneuvers.

## Actions

| Action | User | Check | Result |
|---|---|---|---|
| Access System | Runner | Computers (Hacking), system difficulty | Establish system access. |
| Break ICE | Runner | Average Computers (Hacking) | Successful check creates override strength; total must exceed ICE strength. |
| Burn System | Runner or sysop | Daunting Computers (Hacking) | Damage one step, plus one step per two additional Successes. Apply the damaged-gear penalty to system checks. |
| Trace User | Sysop | Computers (Sysops) opposed by runner’s Computers (Hacking) | Gain one trace on success. |
| Lockout | Sysop | Formidable Computers (Sysops), reduced once per trace to minimum Easy | Entire runner group loses access. Re-entry is normally +2 difficulty unless their signal changes or is disguised. |
| Sweep | Sysop | Hard Computers (Sysops) | Detect one intruder, plus one additional intruder per additional Success. |

## Maneuvers and incidentals

| Economy | Option | Effect |
|---|---|---|
| Maneuver | Enact Command | Execute one allowed command in an accessible subsystem. |
| Maneuver | Activate Program | Activate or reactivate ICE, an icebreaker, or another program. |
| Maneuver | Go Deep / Go Shallow with BMI | While deep, interact only with the Network; gain the BMI’s special second-maneuver benefit. |
| Incidental | Attempt Access | Move attention to a connected subsystem and encounter its first active ICE layer if able to take Break ICE. |

## Encountering ICE

- Before entry, the runner normally knows that protection exists, not what it is.
- On commitment, reveal the ICE name, type, strength, and applicable rule.
- The runner must immediately attempt Break ICE and cannot first activate a program unless a talent or ability permits it.
- A failed or insufficient override leaves the ICE active and triggers its effect.
- Blocking barriers and code gates prevent access. Most sentries are nonblocking but punish or expose the runner.
- A successful override suppresses the ICE through the end of that runner’s next turn. Other runners may exploit the opening.
- One subsystem may have several ordered layers. No layer is skipped merely because a deeper node is visible.

## Multiple runners and sysops

- Only one runner must succeed at Access System for the group.
- Suppressed ICE opens the route for every runner.
- Traces are accumulated against the runner group and shared by cooperating sysops.
- A successful Lockout removes the entire runner group.
- Add a second or third sysop when multiple capable runners can coordinate; do not multiply ICE everywhere simply to cancel teamwork.

## Trace ladder

| Trace | Information gained | Lockout difficulty |
|---:|---|---|
| 0 | No reliable origin | Formidable |
| 1 | World/country or Earth, Luna, orbit | Daunting |
| 2 | Region, state, or province | Hard |
| 3 | City/community or roughly 10 km | Average |
| 4 | Exact address or access location | Easy |

Four traces is the maximum mechanical benefit. Further successes may advance response, evidence, or retaliation rather than reduce Lockout again.

## Re-entry after Lockout

If the fiction permits another attempt, raise Access System by two difficulty steps until the runner changes routes, spoofs the signal, uses a different access point, or creates another credible disguise. A permanent back door can instead make access Easy while it survives.

## System difficulties

| Difficulty | Typical targets |
|---|---|
| Simple | Ticket dispenser, ordinary traffic camera, toy, poorly protected personal social account |
| Easy | Default PAD, public terminal, street seccam, municipal utility lock |
| Average | Commercially protected PAD, residential lock, small-business server, delivery-drone control |
| Hard | Hopper control, major corporate operational server, police server |
| Daunting | Government or megacorporate server |
| Formidable | Black-site server, Beanstalk or equivalent critical infrastructure |

An unusual access point may lower or raise this difficulty. A direct maintenance jack behind the perimeter should matter.

## Spending narrative symbols

### Advantage and Triumph

| Cost | Option |
|---|---|
| 1 Advantage or Triumph | Add 1 Boost to the user’s next Computers check in this system. |
| 1 Advantage or Triumph | After Break ICE, keep it suppressed one additional round. |
| 2 Advantage or Triumph | Immediately perform one additional Enact Command as an incidental. |
| 2 Advantage or Triumph | Runner adds 1 Setback to the sysop’s next Trace User action. |
| 2 Advantage or Triumph | Sysop adds 1 Setback to checks against one active ICE. |
| 3 Advantage or Triumph | Inflict 3 strain on another user in the system. |
| 3 Advantage or Triumph | Runner creates a persistent back door; Access System through it becomes Easy. |
| 3 Advantage or Triumph | Sysop gains one additional trace. |
| Triumph | Runner permanently disables the just-broken ICE for the encounter. |
| Triumph | Runner cancels one existing trace. |
| Triumph | Runner learns one unencountered ICE’s type, strength, and rule. |
| Triumph | Sysop immediately adds an Ice Wall to the system. |
| Triumph | Sysop removes one persistent back door. |

### Threat and Despair

| Cost | Option |
|---|---|
| 1 Threat or Despair | Add 1 Setback to the user’s next Computers check in this system. |
| 1 Threat or Despair | Add 2 Setback to the user’s next non-Computers check next turn. |
| 2 Threat or Despair | Runner may perform only one Network action **or** one Network maneuver next turn. |
| 2 Threat or Despair | A known sysop recognizes the runner’s style; the next successful Trace gains one additional trace. |
| 2 Threat or Despair | Reduce one active ICE’s strength by 1, minimum 1, when the sysop is rolling. |
| 3 Threat or Despair | Everyone with system access learns an intruder is present. |
| 3 Threat or Despair | A sysop creates a vulnerability; the runner gains an Easy back door. |
| Despair | A sysop gains one trace against the runner. |
| Despair | A tracing sysop gets one crucial physical detail wrong; the trace still counts but real-world retaliation misses. |

Use choices that fit the acting side and the check. Never spend symbols merely to erase a successful objective without an established consequence.

## Simple Network encounters

Use this for one task resolved in one structured turn or a few narrative minutes.

1. Define one outcome: open one door, loop one camera, divert one hopper, trigger one alarm.
2. Set difficulty from the system table.
3. Upgrade once for an attentive human sysop, twice for an elite one.
4. Add 1 Setback per protecting ICE.
5. Add 1 Boost per useful available icebreaker.
6. Roll Computers (Hacking). Success accomplishes the task; spend symbols using the Network table in simplified form.
7. In structured play, reaching/connecting to the target costs a maneuver and the check costs an action.

Do not use the simplified method when the node layout, trace race, or multiple objectives are the point of the scene.

## Structured encounter design

For a starting group, place one meaningful subsystem behind each piece of ICE. Default to barriers, but include at least one sentry or code gate. The main objective may have two layers. As a baseline, keep barriers at strength 6 or lower, sentries at 4 or lower, and code gates at 3 or lower.

For experienced runners around 150 earned XP or more, mix barriers and code gates more evenly, use any listed strength, place two layers on multiple objectives, and allow one objective to have three layers. Do not exceed three layers on one subsystem.

Choose what the players will actually manipulate. An arcology controls thousands of things, but a run only needs the partitions relevant to the current objective and meaningful alternatives.

## Sysop behavior

The sysop begins with access but usually does not know an intrusion is underway. Once alerted, a disciplined sequence is:

1. Sweep if the intruder is only suspected.
2. Trace when the runner is identified.
3. Reinforce or reactivate ICE when doing so changes the route.
4. Lockout when trace pressure makes the check practical.
5. Burn the runner’s rig only after its location/access becomes fictionally available.

Shutting down a major system should be slow, dangerous, and consequential. If it is possible, telegraph a one- or two-round shutdown countdown rather than ending the scene without counterplay.

## GM information discipline

- Reveal known subsystems and the existence of protection after Access System.
- Keep hidden objectives, exact ICE identities, and secret routes GM-only until discovered.
- State consequences before a runner commits to a clearly lethal or destructive ICE interaction whenever their character would understand the risk.
- Record which commands actually occurred. Access alone changes nothing.
- Carry forward traces, alerts, damaged programs, destroyed ICE, logs, and back doors when the same system returns.

