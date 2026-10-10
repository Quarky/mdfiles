# Network — SXC Occupation Tactical Network

**System:** Military occupation security  
**Base difficulty:** Daunting  
**Use:** Break a lockdown, extract detainees, falsify patrol orders, expose an occupation command  
**Sysop:** SYNC Globalsec Agent profile reskinned as SXC signals officer  
**Tone:** Fast, disciplined, and dangerous; every useful command has a physical response.

## Topology

`Access points → Mesh Intrusion Monitor [Hawk’s Eye] → Field Identity Gateway [Syn 2.2] → Tactical Backbone → patrol, checkpoint, watchlist, comms, orders, command authority, audit mirror`

## Access points

- **SXC Tactical Mesh:** Daunting; wireless and monitored.
- **Portable Relay Service Jack:** Hard; requires touching a deployed relay.
- **Armory Network Rack:** Average; enters behind Hawk’s Eye but starts a physical patrol countdown.
- **Command Post Console:** Easy with officer credentials; enters at the Tactical Backbone, bypassing perimeter ICE.

## Mesh Intrusion Monitor

**ICE:** Hawk’s Eye STR 4.  
**Effect in this network:** A gained trace also identifies which tactical relay carried the signal.

## Field Identity Gateway

**ICE:** Syn 2.2 STR 6.  
**GM:** Failure ejects the runners and hardens future attempts. Present forged device credentials as a meaningful alternative to brute force.

## Occupation Tactical Backbone

**ICE:** None.  
**Command:** Inspect connected SXC nodes.  
**Reveal:** Shows patrol, checkpoint, watchlist, comms, and current orders. Command Authority and Audit Mirror remain hidden until related data or routes are examined.

## Patrol Tracking and Dispatch

**ICE:** Sentinel STR 3.  
**Commands:** View squads; change patrol sector; delay check-in.  
**Physical effect:** One command moves one patrol. Repeated contradictory changes raise Alert.

## Checkpoint Control

**ICE:** Fire Wall STR 6.  
**Commands:** Mark a lane cleared; change a challenge code; disable a portable scanner.  
**Limit:** Barriers still require physical opening unless their actuator is networked.

## Biometric Watchlist

**ICE:** Viktor 2.0 STR 4.  
**Commands:** Read watchlist; suppress an alert; add decoy identity.  
**Cost:** A false identity that survives the encounter requires Quick Commands plus a second matching record or Triumph.

## Squad Communications Routing

**ICE:** Shinobi STR 3.  
**Commands:** Mute a squad; spoof command; reroute a channel.  
**Physical effect:** A spoof can delay rather than fully control trained troops unless paired with authentic command signatures.

## Occupation Orders Repository

**ICE:** Hadrian’s Wall STR 8; sysop can reinforce to 10.  
**Commands:** Download orders; copy signatures; search pre-breach directives.  
**Evidence:** Proves who authorized occupation measures and when.

## Local Command Authority

**Visibility:** Hidden objective.  
**ICE:** Janus 1.0 STR 9.  
**Commands:** Suspend local lockdown; issue stand-down token; invalidate patrol orders.  
**Warning:** Clearly telegraph Janus’s rig/BMI lethality when encountered. Alternative route: steal an officer token and Enact Command through the Command Post Console.

## Tactical Audit Mirror

**Visibility:** Hidden data node.  
**ICE:** Great Wall STR 6.  
**Commands:** Download audit trail; correlate command times.  
**GM:** Great Wall also protects Orders if you want one strategic break to open both evidence nodes.

## Escalation

- Alert 1: radio operator begins Sweep.
- Alert 2: all squads confirm status; a spoofed patrol order needs Deception or a matching signature.
- Alert 3: physical access point is triangulated; one trace is gained if not already at 4.
- Alert 4: command prepares a network segment shutdown in two rounds. Runners can stop it at Command Authority or physically disable the console.

