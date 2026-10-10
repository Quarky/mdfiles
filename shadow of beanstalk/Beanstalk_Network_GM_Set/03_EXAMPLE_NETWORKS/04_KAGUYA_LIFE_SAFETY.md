# Network — Kaguya Pressure and Life-Safety

**System:** Isolated environmental and emergency controls  
**Base difficulty:** Daunting  
**Connection:** Wired only  
**Use:** Stop decompression, restore atmosphere, isolate fire, open evacuation routes  
**Sysop:** Engineering controller plus Corporate Sysop; it prioritizes safety constraints over secrecy.

## Topology

`Wired access → Safety Authenticator [Authenticator] → Maintenance Gateway [Enigma] → Life-Safety Bus → pressure, bulkheads, atmosphere, fire, structure, local controller, stabilization override`

## Access points

- **Emergency Engineering Panel:** Hard; locked but publicly marked.
- **Bulkhead Actuator Service Jack:** Average; controls a narrower physical sector.
- **Environmental Fiber Trunk:** Hard Mechanics to expose, then Average Access; bypasses the Authenticator.
- **Environmental Plant Console:** Easy with maintenance credentials; physically dangerous machinery room.

## Safety Network Authenticator

**ICE:** Authenticator STR 3.  
**GM:** Emergency credentials or a verified responder identity add 1 Boost.

## Safety Maintenance Gateway

**ICE:** Enigma STR 3.  
**Requirement:** Study maneuver before Break ICE.

## Life-Safety Control Bus

**ICE:** None.  
**Command:** Read all controller states.  
**Safety rule:** Contradictory or lethal commands require a second Enact Command to override interlocks and raise Hazard 1.

## Pressure Sensor Mesh

**ICE:** Pop-Up STR 2.  
**Commands:** Read pressure; read leak rate; locate anomaly.  
**Information:** A successful read reduces difficulty of one related Mechanics or evacuation check.

## Emergency Bulkhead Logic

**ICE:** Ice Wall STR 5.  
**Commands:** Close bulkhead; open safe-side bulkhead; hold closed.  
**Limit:** Unsafe-side opening requires interlock override and advances Hazard.

## Atmosphere and Oxygen Regulation

**ICE:** Fire Wall STR 6.  
**Commands:** Isolate ventilation; increase make-up flow; shut a circulation damper.

## Fire Suppression and Smoke Control

**ICE:** Sentinel STR 3.  
**Commands:** Trigger suppression; change smoke damper; silence local alarm.  
**Moral stake:** Silencing an alarm may enable stealth but removes civilian warning.

## Structural Breach Telemetry

**ICE:** Great Wall STR 6.  
**Commands:** Download event; estimate breach origin; copy sensor timeline.  
**Evidence:** Can prove whether damage was accident, sabotage, or an internally issued command.

## Local Bulkhead Controller

**ICE:** None when entered through its local jack.  
**Commands:** Open/close the local group; read actuator state.  
**Purpose:** Fail-forward route when the primary network is locked out.

## Emergency Stabilization Override

**ICE:** Heimdall 1.0 STR 7.  
**Commands:** Run stabilization; prioritize occupied compartments; release a safe evacuation route.  
**Interaction:** A runner may spend a maneuver negotiating/studying Heimdall to reduce its strength temporarily. Let truthful casualty data influence its response.

## Hazard clock

| Hazard | Condition |
|---:|---|
| 0 | Stable but degraded. |
| 1 | Pressure or smoke threatens one area; add 1 Setback to exposed physical checks. |
| 2 | Civilian injuries begin; one route closes. |
| 3 | Catastrophic loss in three rounds unless a relevant command succeeds. |
| 4 | Breach/fire consumes the zone; survival requires evacuation or local isolation. |

