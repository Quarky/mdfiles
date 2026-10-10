# Network — Kaguya Inner Landing Ring Operations

**System:** Landing field and ground operations  
**Base difficulty:** Hard  
**Use:** Steal a shuttle, reroute cargo, rescue a grounded crew, create an escape corridor  
**Sysop:** Corporate Sysop with Reinforce  
**Physical stakes:** Kilometer-scale open field, moving tugs, pressure boundaries, fueled craft.

## Topology

`Access points → Service Mesh Monitor [Sentinel] → Ground Services Authenticator [Authenticator] → Pad Control Backbone → pads, tugs, fuel/power, bridges, traffic sequencer, emergency slot, audit log`

## Access points

- **Ground-Crew Service Mesh:** Hard and visible to the Sentinel.
- **Pad Service Pedestal:** Average; exposed on the landing field.
- **Under-Regolith Fiber Splice:** Average Mechanics to open, then Easy Access System; enters at the Backbone but requires a hazardous service trench.
- **Landing Operations Console:** Easy with credentials; enters behind the Authenticator.

## Service Mesh Monitor

**ICE:** Sentinel STR 3.  
**GM:** Failure alerts the sysop and tags the runner’s approximate pad sector.

## Ground Services Authenticator

**ICE:** Authenticator STR 3.  
**Failure:** Ejects from the entire network.

## Pad Control Backbone

**ICE:** None.  
**Commands:** List active pad controllers; inspect occupancy.

## Pad Assignment and Clamp Control

**ICE:** Ice Wall STR 5.  
**Commands:** Reserve pad; release docking clamps; mark pad unavailable.  
**Safety:** Releasing clamps on a powered craft without crew confirmation adds Hazard 1.

## Ground Tug and Cargo Routing

**ICE:** Pop-Up STR 2.  
**Commands:** Dispatch tug; block lane; reroute cargo cart.  
**Encounter use:** Move cover, create a collision threat, deliver supplies, or open an escape path.

## Fuel and Power Umbilical Control

**ICE:** Fire Wall STR 6.  
**Commands:** Disconnect umbilical; enable ground power; suspend fueling.  
**Danger:** A reckless command near an active transfer may start a three-step fire clock.

## Passenger Bridge and Private Spur Control

**ICE:** Enigma STR 3.  
**Commands:** Extend/retract bridge; open private-spur door.  
**Physical link:** This is often the safest way to cross a pressure boundary.

## Local Pad Traffic Sequencer

**ICE:** Hawk’s Eye STR 4.  
**Commands:** Create movement slot; delay traffic; clear taxi lane.

## Emergency Departure Slot

**ICE:** Syn 2.2 STR 6.  
**Commands:** Issue local departure slot; prioritize a pad; suppress a local hold.  
**Limit:** This is not final flight clearance; Flight Control must still sign the corridor and transponder package.

## Pad Operations Audit Log

**ICE:** Great Wall STR 6.  
**Commands:** Read pad history; download operator log.  
**Evidence:** Reveals the craft or cargo moved immediately before the crisis.

## Escalation

- Alert 1: sysop Sweeps.
- Alert 2: tugs stop and form remote barricades.
- Alert 3: pad doors begin closing; three rounds until selected sectors isolate.
- Alert 4: Flight Control is notified and all departure slots become suspect.

