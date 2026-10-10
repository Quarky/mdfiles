# Haakonsen Matrix Rules — GM Reference

## Authority and vocabulary

Use the supplied Haakonsen Shadowrun GENESYS conversion. A Matrix encounter is a structured Genesys encounter: establish initiative, identify intruders and defenders, then resolve Matrix Actions with Computers checks. Do not substitute Beanstalk's system strain, access, ICE strength or narrative network rules.

## Modes

- **AR:** physical body remains active; use normal Initiative. A distracted runner may suffer a setback on physical Perception.
- **Cold-sim VR:** use Computers for Initiative and upgrade the check once. Biofeedback is Strain.
- **Hot-sim VR:** use Computers for Initiative, upgrade the check once, and add a boost to Matrix Actions. Biofeedback is Wounds.
- **Dumpshock:** 6 Strain in cold-sim or 6 Wounds in hot-sim, soaked with Willpower; add Disoriented for `(10 − Willpower)` minutes. Destructive disconnects may add one point per threat.

## Icons, marks and access

Personas, devices, PANs, files, hosts and IC are icons. A mark is an authentication key/permission on an icon. Marks last for the Matrix session and are removed when the device reboots. A persona can have up to three marks on an icon. A mark does not reveal its owner until the mark is analyzed or the style is recognized.

An intruder must first gain access. Once access is lost, the persona must perform **Access System** again. A WAN is host-slaved devices; being inside its host counts as direct connection to those devices. A PAN has a master commlink/deck and up to `(Device Rating × 3)` slaved devices.

## Grid modifiers

- Public grid: all Matrix Actions take one setback, including inside a host.
- Another grid: Matrix Actions against a target on a different grid take one setback unless the runner hops grids.
- Grid Hop is incidental when the runner already has access. Without access, use Brute Force or Access System: Hard for local, Formidable for global.
- GOD/demiGOD investigate repeated illegal activity, trace identified hackers and can boot them. Treat this as an escalation clock, not as automatic instant capture.

## Full Matrix encounter procedure

1. Define the system, its host, grid, legitimate access and physical consequences.
2. Set initiative. AR uses normal Initiative; VR uses Computers.
3. Place defenders (system administrator, spider, IC) and intruders.
4. Resolve one Action per turn. A character may use ordinary Genesys Actions where appropriate, but Matrix Actions below are the canonical procedures.
5. Track marks, security programs, trace progress, biofeedback and physical-world consequences separately.
6. End when the objective is achieved, the system is locked down, everyone jacks out, or the GM calls a transition to physical play.

## Accessing systems

| System | Base difficulty |
|---|---|
| Unsecured / known passcode | Simple |
| Public terminal | Easy |
| Common computer | Average |
| Local hub / military base | Hard |
| Regional corporate network | Daunting |
| Global megacorp network | Formidable |

An administrator with Defensive Slicing adds setback equal to its ranks. Improved Defensive Slicing upgrades the difficulty once per rank.

## Security programs

Security programs are static Firewall defenses. A system may run several, but only the strongest systems carry more than a few at once.

| Program | Strength | Effect |
|---|---:|---|
| Firewall | 3 | Blocks restricted areas; failed override returns the intruder to the main system. |
| Sentry | 2 | Detects unauthorized access; failed override alerts the defender and gives it one successful trace. |
| Gate | 2 | Authentication; failed override removes access to the system. |
| Gate Pop-Up | 1 | Annoying marketing gate; failed override causes 2 Strain and a brief compulsion. |

Disabling a program requires a Computers check producing at least its Strength in successes. **Activate Security Program** is Average. **Disable Security Program** uses the program's listed difficulty.

