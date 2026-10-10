# Network — Kaguya Public Terminal Operations

**System:** Passenger terminal and access control  
**Base difficulty:** Hard  
**Use:** Social infiltration, evacuation, missing-person search, public-space escape  
**Sysop:** Corporate Sysop; Corporate Manager can substitute  
**Player-facing premise:** The public services are easy to see, but the terminal’s operational controls sit behind a credential gateway.

## Topology

`Access points → Public Edge Router [Sentinel] → Terminal Services Gateway [Authenticator] → Terminal Service Bus → operational nodes`

The Camera Control, Door Control, Manifest, Signage, and Credential Cache branch from the Service Bus. A hidden route from Cameras reaches the Breach Incident Cache.

## Access points

- **Public Concourse Wireless:** Hard; remote and obvious. Failure with Threat adds Alert 1.
- **Public Access Terminal Jack:** Average if the cabinet is opened; physical tampering is visible.
- **Ceiling AP Service Port:** Average; requires climbing or maintenance access. Enters at the Edge Router.
- **Checkpoint Supervisor Console:** Easy with stolen credentials; enters at the Gateway and bypasses Sentinel, but the runner is physically inside security.

## Public Edge Router

**ICE:** Sentinel STR 3, nonblocking.  
**Player view:** Guest wireless, kiosks, and information services converge here.  
**GM:** A Sentinel failure raises Alert to 1 but still lets the runner continue. The first unusual command creates a log entry tagged to the access point.

## Terminal Services Gateway

**ICE:** Authenticator STR 3, blocking/ejection.  
**Commands:** Inspect current session; validate a public-service credential.  
**GM:** A valid staff credential grants 1 Boost to Break ICE or can justify passage without a check.

## Terminal Service Bus

**ICE:** None.  
**Commands:** Inspect device registry; open a maintenance channel.  
**Reveal:** Access reveals all ordinary operational branches. The Incident Cache remains hidden.

## Concourse Camera Control

**ICE:** Hawk’s Eye STR 4, nonblocking, trace/alert.  
**Commands:** Loop selected feed; blind a camera; download recent footage; follow a person across zones.  
**Hidden link:** Careful archive search or Triumph reveals the Breach Incident Cache.

## Passenger Gate and Door Control

**ICE:** Ice Wall STR 5, blocking.  
**Commands:** Unlock passenger gate; lock checkpoint lane; open a service door.  
**Limit:** It cannot open pressure-rated landing-dome gates; those belong to Flight Control or Life Safety.

## Passenger and Departure Manifest

**ICE:** Enigma STR 3; study maneuver before Break ICE.  
**Commands:** Read manifest; add passenger record; alter baggage association.  
**Consequence:** Altering data without matching credentials adds Alert 1 when the manifest reconciles at the next checkpoint.

## Public Information and PA

**ICE:** Pop-Up STR 2, nonblocking.  
**Commands:** Change display; broadcast announcement; post false gate change.  
**Opportunity:** A believable announcement adds 1 Boost to allies using crowd movement as cover.

## Local Credential Cache

**ICE:** Syn 2.2 STR 6, blocking/ejection and persistent 2 Setback after failure.  
**Commands:** Issue temporary credential; revoke credential; clone a staff token.  
**GM:** Credentials expire at the end of the scene unless the runner spends Triumph or creates a back door.

## Breach Incident Cache

**Visibility:** Hidden objective.  
**ICE:** Great Wall STR 6.  
**Commands:** Download decompression evidence; copy a timeline; protect logs from deletion.  
**GM truth:** The cache proves the public explanation omitted an internal safety override. Copying it advances the Evidence clock; deleting it protects one official and harms later victims.

## Escalation

- Alert 1: Sysop Sweeps.
- Alert 2: Credential Cache rotates; next attempt there gains 1 Setback.
- Alert 3: Checkpoint patrol begins a three-round approach to the physical access point.
- Alert 4: Sable-9 joins remotely or the terminal isolates public wireless, leaving hardline access only.

