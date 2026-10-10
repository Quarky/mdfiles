# Network — Heinlein Authority Kaguya Flight Control

**System:** Spaceport traffic and departure clearance  
**Base difficulty:** Formidable  
**Use:** Secure final escape clearance, hide a craft, reroute traffic, expose military holds  
**Sysop:** SYNC Globalsec Agent profile as Heinlein flight-security specialist  
**Scope:** Final authority above the local Landing Ring network.

## Topology

`Access points → Telemetry Intrusion Monitor [Hawk’s Eye] → Departure Identity Gateway [Syn 2.2] → Flight-Control Backbone → slots, transponder, corridor, gate interlocks, local gate, final clearance, audit archive`

## Access points

- **Docking Telemetry Datalink:** Formidable; remote and heavily monitored.
- **Private Terminal Flight Desk:** Daunting; legal traffic makes cover possible.
- **Pressure-Gate Actuator Cabinet:** Hard physical access; reaches Local Gate Controller behind perimeter ICE.
- **Flight Control Console:** Easy with privileged credentials; extreme physical security.

## Telemetry Intrusion Monitor

**ICE:** Hawk’s Eye STR 4.  
**Network twist:** A trace can identify the target craft as well as the runner’s origin.

## Departure Identity Gateway

**ICE:** Syn 2.2 STR 6.  
**Failure:** Ejects and adds 2 Setback against this gate for the encounter.

## Flight-Control Backbone

**ICE:** None.  
**Commands:** Inspect departure queue; list connected gate controllers.

## Departure Slot Scheduler

**ICE:** Heimdall 1.0 STR 7.  
**Commands:** Issue a window; delay departure; prioritize emergency departure.  
**GM:** A truthful emergency can reduce Heimdall through its interaction maneuver.

## Transponder and Craft Identity

**ICE:** Viktor 2.0 STR 4.  
**Commands:** Read craft identity; issue temporary token; suppress craft alert.

## Flight Corridor Assignment

**ICE:** Fire Wall STR 6.  
**Commands:** Assign outbound corridor; revector departure; hold incoming traffic.  
**Safety:** Unsafe vectors advance Traffic Hazard.

## Landing-Dome Pressure Gate Interlocks

**ICE:** Hadrian’s Wall STR 8; reinforce to 10.  
**Commands:** Cycle gate; hold closed; queue safe opening.  
**GM:** Safety sequencing cannot be bypassed with a single command unless the runners accept Traffic Hazard 2.

## Local Gate Controller

**ICE:** None through actuator-cabinet access.  
**Commands:** Open when safe; close; read interlock state.  
**Limit:** Local control cannot issue flight clearance.

## Heinlein Departure Clearance

**ICE:** Janus 1.0 STR 9.  
**Commands:** Issue signed full clearance; revoke hold; generate clearance package.  
**Alternative solution:** Obtain valid slot + transponder + corridor commands, then use authentic flight-desk credentials to assemble the package without confronting Janus.

## Traffic Control Audit Archive

**ICE:** Great Wall STR 6.  
**Commands:** Download traffic history; search military holds; copy operator actions.

## Traffic Hazard

| Hazard | Result |
|---:|---|
| 0 | Normal separation. |
| 1 | One delayed or conflicting craft; flight crews receive warning. |
| 2 | Near miss risk; all piloting in the zone adds 1 Setback. |
| 3 | Collision/decompression threat in three rounds. |
| 4 | Disaster unless traffic is held, redirected, or physically aborted. |

