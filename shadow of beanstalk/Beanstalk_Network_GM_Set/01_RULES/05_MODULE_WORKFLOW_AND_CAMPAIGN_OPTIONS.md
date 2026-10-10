# Foundry Network Builder Workflow and Campaign Options

## Current module behavior

This reference matches Genesys Beanstalk Network Builder v0.5.2 / schema v2.

- Runner, GM Run, and player-safe views share active Network state.
- Large maps support left-, middle-, or right-button drag from empty space to pan.
- Mouse wheel and `− / + / 100%` controls zoom from 35% to 200%.
- Clicking a node selects its information; movement occurs through Connected Systems / Attempt Access.
- Hidden nodes and routes are omitted from the player-safe view.
- Action/maneuver use follows the active Foundry Combat turn when combat exists.
- A second maneuver costs 2 strain or the unused action; a third is blocked.
- Suppressed ICE returns automatically after the end of the breaking runner’s next turn.
- GM may set ICE to active, suppressed, disabled, destroyed, or bypassed.
- Multiple access points may have separate difficulties, requirements, visibility, and attached routes.

## Programs and flags

Known icebreakers are ordinary Genesys gear tagged with the module’s Network program data. A custom Item becomes activatable when it has a truthy `program` flag. The canonical flag is:

```json
{
  "flags": {
    "genesys-beanstalk-network-builder": {
      "program": {
        "loaded": true,
        "effectText": "Describe what the program does."
      }
    }
  }
}
```

A literal `true` also works, and the module recognizes a truthy `program` key from another module’s flag namespace for interoperability. Activating any custom program costs one maneuver. Deactivation costs no maneuver.

## Published versus module option

| Topic | Published rule | Current module/campaign handling |
|---|---|---|
| Active icebreakers | One; activating another deactivates the first | Can track multiple active programs. Only one compatible icebreaker contributes strength. Decide whether multiple active icebreakers are allowed at the table. |
| Other programs | Activated as a maneuver | Any properly flagged custom program can appear and activate for a maneuver. |
| Suppression | Until end of runner’s next turn | Automated when Combat is active; manually tracked otherwise. |
| ICE blocking | Determined by individual effect/type | Explicit editable blocking field, with published defaults and exceptions. |
| Entry locations | Fictional link adjudicated by GM | Separate access nodes may alter difficulty and routes. |

Recommended campaign ruling: permit multiple utility programs to stay active, but only one icebreaker can be the active attack tool unless a talent explicitly says otherwise. This preserves hardware identity and avoids stacking override strength.

## GM setup sequence

1. Import or build a schema-v2 map.
2. Confirm node visibility and GM-only notes.
3. Define every access point and its difficulty/requirements.
4. Order ICE layers on each protected node.
5. Verify blocking flags and automation text.
6. Put commands only on nodes capable of those functions.
7. Select the active map.
8. Assign runner Actors and place/select sysop tokens.
9. Start the shared physical/Network Combat if the scene is structured.
10. Open GM Run Control and the player-safe Runner Screen.

## Safe reveal procedure

- At Access System, reveal only the public/known topology.
- On Attempt Access, reveal the first active ICE layer.
- Reveal hidden routes when discovered by commands, narrative symbols, credentials, or physical access.
- Do not reveal GM Notes, unreached objective text, failure contingencies, or hidden ICE through player journal permissions.

## Useful commands

| Command | Purpose |
|---|---|
| `/gbn` | GM builder or player run view |
| `/gbnbuild` | GM Network Builder |
| `/gbnrun` | GM Run Control or normal player run view |
| `/gbnview` | Exact player-safe preview |
| `/gbnshare` | Open Runner Screen for connected players |
| `/gbnref` | Quick reference |

