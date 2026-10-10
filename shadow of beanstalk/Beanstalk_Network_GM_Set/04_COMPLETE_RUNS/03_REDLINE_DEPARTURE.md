# Network Run — Redline Departure

**Networks:** [Landing Ring Operations](../03_EXAMPLE_NETWORKS/03_KAGUYA_LANDING_RING.md) and [Flight Control](../03_EXAMPLE_NETWORKS/05_KAGUYA_FLIGHT_CONTROL.md)  
**Length:** 90–120 minutes  
**Objective:** Launch a grounded shuttle with passengers  
**Opposition:** Ground sysop Arun Vale; flight-security agent Sable-9  
**Core feature:** Two linked networks with different authority.

## The clearance chain

A legal departure requires four pieces:

1. Local pad assignment and released clamps.
2. Craft identity/transponder token.
3. Departure slot.
4. Flight corridor and signed final clearance.

The Landing Ring can provide item 1 and a provisional local slot. Flight Control provides items 2–4. The team may forge one missing piece at +1 difficulty; forging two raises Alert by 1 on both networks when the package is submitted.

## Phase 1 — Reach the shuttle

The physical team crosses the landing ring while the runner enters Ground Operations. Start **Ground Alert 0**, **Flight Alert 0**, **Launch 8**, and **Traffic Hazard 0**. Reduce Launch by 1 each round; at 0, occupation control impounds the shuttle.

Useful commands:

- Dispatch a tug as mobile cover.
- Clear a taxi lane.
- Release clamps.
- Disconnect umbilicals safely.
- Extend a passenger bridge.

Reckless commands can be faster but advance Traffic Hazard.

## Phase 2 — Transfer authority

Once clamps, umbilicals, and bridge are ready, the runner must enter Flight Control. The team can obtain the link through:

- shuttle telemetry, Formidable;
- private flight desk, Daunting;
- gate actuator cabinet, Hard but limited to the Local Gate Controller;
- privileged flight console, Easy after a serious physical infiltration.

The current runner retains their action economy and traces remain separate by network. Alert may propagate: when either reaches 3, raise the other to at least 1.

## Phase 3 — Assemble clearance

There are two viable strategies.

### Direct strategy

Break through to Departure Clearance and confront Janus. One command issues the full signed package. Fast, extremely dangerous.

### Component strategy

Obtain a temporary transponder token, departure slot, and outbound corridor. Then use a valid flight-desk credential or a Hard Hacking action to assemble the signed package. Slower, safer, and exposes more nodes.

Both are valid. Tell the players enough to choose.

## Defender behavior

**Ground sysop:** Reinforces Fire Wall on Fuel/Power, then Traces. Avoids dangerous commands.  
**Sable-9:** Uses Hawk’s Eye information to Trace, adds Sniffer setbacks, attacks an active program with Swordbreaker, and only then Lockouts. If the runner creates an unsafe vector, Sable-9 may cooperate for one round to prevent a collision before resuming opposition.

## Non-runner jobs

- Pilot holds launch readiness and can reduce Traffic Hazard with a piloting check.
- Mechanic confirms umbilical/clamp states, avoiding a dangerous false sensor reading.
- Face obtains flight-desk credentials or persuades an operator that this is a legitimate emergency.
- Infiltrator reaches a pad pedestal, fiber splice, or gate cabinet to improve the digital route.
- Combat characters protect passengers without firing into fueled infrastructure.

## Traffic complications

- At Hazard 1, one craft receives conflicting instructions.
- At Hazard 2, all relevant Piloting checks add 1 Setback.
- At Hazard 3, a collision develops in three rounds.
- At Hazard 4, departure without resolving the conflict causes a disaster. The runner can hold traffic, revector a corridor, or sacrifice the current clearance to stop it.

## Fail forward

- **Ground Lockout:** Use local manual releases; Hard Mechanics for clamps and umbilicals, costing two rounds.
- **Flight Lockout:** Launch illegally under a local slot and play a pursuit, or physically seize the private flight desk.
- **Launch reaches 0:** Impound begins, but the shuttle is not gone. Objective changes to delaying tow vehicles and boarding under fire.
- **Janus destroys a rig:** The run ends for that rig. Another runner or flight operator can finish from an authenticated console; preserve the cost.

## End states

Record clearance authenticity, both alerts/traces, Traffic Hazard, which records identify the shuttle, damaged programs, any unsafe command, and whether the authorities chose safety over capture.

