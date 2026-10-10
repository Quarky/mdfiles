# SHADOW OF THE BEANSTALK & GENESYS
## COMPLETE VEHICLE REFERENCE SHEET
---
## VEHICLE ACTION ECONOMY
### Standard Vehicle Turn
* **1 Action + 1 Maneuver** per turn (same structure as personal-scale character turns).
* The driver/pilot executes their vehicle choices on their individual Initiative slot.
### Maneuver Limits & Strain
* **Maximum of 2 Maneuvers** can be performed per turn.
* To perform a **second maneuver**, the character must spend **2 personal strain** (or the vehicle must suffer **2 system strain** if a pilot maneuver allows/requires it).
* **Passengers:** Can use their regular actions and maneuvers to interact with onboard systems (hacking, repairs, firing crew-served weapons) or use personal gear, provided they have physical access.
---
## VEHICLE STATS

| Stat              | Functional Description                                                                                                                                                                |
| :---------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Silhouette**    | The numerical scale of the vehicle's size ($0$ to $5+$). Directly dictates targeting difficulties and structural damage scaling.                                                      |
| **Speed**         | The maximum rate of tactical travel ($0$ to $6$). Determines the relative range bands crossed during movement maneuvers.                                                              |
| **Handling**      | The innate responsiveness of the chassis. Adds Boost dice (`[BOOST]`) if positive, or Setback dice (`[SETBACK]`) if negative, to all piloting and control checks.                     |
| **Defense**       | Represents passive shielding, ECM, or cross-section mitigation. Adds Setback dice (`[SETBACK]`) to incoming targeting checks based on the vector arc (Forward, Aft, Port, Starboard). |
| **Armor**         | Massive structural resilience. Reduces incoming vehicle-scale weapon damage point-for-point before applying the remainder to Hull Trauma.                                             |
| **Hull Trauma**   | The absolute threshold for mechanical structural failure. Exceeding this value leaves the vehicle broken, structural sound compromised, or completely destroyed.                      |
| **System Strain** | The capacity limit for computer grids, electronic stability, and engine stress. Exceeding this disables advanced electronic systems and can leave the vehicle dead in the water.      |

### Control Skills

| Vehicle Category | Applicable Skill | Core Attribute |
| :--- | :--- | :--- |
| Hoppers, Quadcopters, Dropships, Airplanes | **Piloting** | Agility |
| Groundcars, Heavy Haulers, Monorails, Cycles | **Driving** | Agility |
| Heavy Cargo Freighters, Space Transports, Lifters | **Operating** | Intellect |
| Integrated Systems / Mounted Heavy Weaponry | **Gunnery** | Agility |

---
## THE REGULAR MOVEMENT RULES
Unlike personal scale, vehicles require maintaining tactical tracking relative to their current speed.
* **Speed 0:** Stationary. Cannot execute tactical movement maneuvers until speed is increased.
* **Range Band Transitions:** To move between range bands or maneuver zones, a vehicle must expend a maneuver. The distance cleared depends entirely on its current **Speed** rating versus the tactical framework dictated by the GM.
---
## CORE VEHICLE MANEUVERS (GENESYS CANON)
*Note: Maneuvers do not require a skill check unless interacting with hazardous terrain or specific tactical constraints.*

| Maneuver | Required Role / Constraints | Operational Effect |
| :--- | :--- | :--- |
| **Accelerate / Decelerate** | Pilot Only | Adjust the vehicle's current Speed rating by exactly 1 point (up to its max Speed, down to 0). To shift speed by more than 1 point in a single turn, the vehicle must suffer 1 System Strain per additional point shifted. |
| **Evade** | Pilot Only <br>*(Sil 0–4, Speed 3+)* | Suffer a designated amount of System Strain to upgrade the difficulty of all incoming attacks against the vehicle by an equal amount until the start of your next turn. |
| **Stay on Target** | Pilot Only <br>*(Speed 3+)* | Focus entirely on a specific target trajectory. The pilot upgrades the ability of all Gunnery checks made from the vehicle until the end of their turn, but all incoming attacks against the vehicle also upgrade their ability. |
| **Position Vehicle** | Pilot Only | Move the vehicle through relative range bands or reposition into a new firing arc sector. Higher current Speed ratings allow crossing greater relative distance per maneuver. |
| **Brace for Impact** | Any Crew member | Suffer a declared amount of System Strain (up to the vehicle's total Silhouette rating) to reduce incoming Hull Trauma from an impending impact or hit by that exact same value. |
| **Boost Defenses** | Crew / Copilot | Reallocate active defensive systems (such as directional barriers or point-defense matrices), moving 1 point of Defense from one sector arc to another. |

---
## CORE VEHICLE ACTIONS (GENESYS CANON)

| Action | Primary Skill | Base Difficulty | Operational Effect |
| :--- | :--- | :--- | :--- |
| **Combat Check** | Gunnery | Varies by Weapon Range | Fire an onboard, integrated, or crew-served weapon weapon system using the vehicle's targeting computers. |
| **Dangerous Driving** | Piloting / Driving / Operating | Varies by Terrain Severity | Execute extreme narrative stunts, tight-quarter evasion, or navigate hazardous environments. Failure often inflicts immediate Hull Trauma or forces collisions. |
| **Gain the Advantage** | Piloting / Driving <br>*(Sil 1–4, Speed 4+)* | **Opposed Check** vs Target Pilot | A dogfighting maneuvering match. If successful, the pilot ignores firing arc limitations against the target and forces the target to upgrade the difficulty of all attacks against them. |
| **Damage Control** | Mechanics / Resilience | Varies by Damage Level | Conduct high-pressure on-the-fly technical overrides or physical quick-fixes to repair Hull Trauma or vent System Strain while in motion. |
| **Copilot** | Piloting / Driving / Operating | Average (`[DIFFICULTY]``[DIFFICULTY]`) | Assist the main pilot directly from a secondary console, adding a Boost die (`[BOOST]`) to the pilot's subsequent control check. |
| **Fire Discipline** | Leadership / Discipline | Average (`[DIFFICULTY]``[DIFFICULTY]`) | Coordinate the firing solutions of the gunner crew, granting Boost dice (`[BOOST]`) or specific tactical attack bonuses to the next volley. |
| **Electronic Warfare** | Computers | Varies by Target Security | Utilize the vehicle's transceiver array to jam enemy comms, scan active target specs, or hack onboard navigational targets to inflict System Strain remotely. |
| **Blanket Barrage** | Gunnery <br>*(Silhouette 5+ Only)* | Varies by Scale | Create a massive field of defensive suppressing fire. Makes targeting smaller approaching ships within that sector significantly harder. |
| **Concentrated Barrage** | Gunnery <br>*(Silhouette 5+ Only)* | Varies by Scale | Focus every secondary and primary weapon battery onto a single structural point, escalating raw damage output immensely. |

---
## VEHICLE SCALING & PERSONAL INTERACTION
The fundamental separation of personal vs vehicle scale is defined by a strict $10:1$ mathematical conversion ratio.
* **Damage Translation:** $1$ point of Vehicle-scale Damage equals **10 points of Personal-scale Damage**.
* **Armor Translation:** $1$ point of Vehicle-scale Armor acts as **10 points of Personal-scale Soak**.
* **Personal vs Vehicle:** Personal-scale weapons (like pistols, rifles) cannot penetrate Vehicle Armor unless they possess massive ranks of the **Breach** quality or are specifically designated as heavy anti-vehicle ordnance by the GM. Conversely, a single hit from a vehicle weapon against a person is almost always instantly lethal.
---
## CRITICAL DAMAGE RESOLUTION
When a vehicle takes a Critical Hit (either by exceeding its Hull Trauma threshold or via an attack that triggers a Critical with sufficient `[ADVANTAGE]` symbols):
1. Roll $1\text{d}100$ on the Vehicle Critical Hit Table below.
2. Add $+10$ to the roll for each pre-existing, un-repaired Critical Hit currently affecting the vehicle.
3. Add $+10$ per rank of **Vicious** on the attacking weapon system.
### Vehicle Critical Hit Table

| Roll Result | Critical Severity      | Mechanical Impact on Vehicle                                                                                                                              |
| :---------- | :--------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **01–09**   | Minor Glitch           | Add a Setback die (`[SETBACK]`) to all Piloting/Driving checks until the end of the next round.                                                           |
| **10–18**   | Weapons Malfunction    | Randomly select one mounted weapon system; it cannot be fired until repaired.                                                                             |
| **19–27**   | Sensors Damaged        | Add a Setback die (`[SETBACK]`) to all Gunnery and electronic combat checks until repaired.                                                               |
| **28–36**   | Engine Stutter         | The vehicle's maximum Speed is immediately reduced by 1 point until repaired.                                                                             |
| **37–45**   | Comms Disabled         | The vehicle loses all external long-range communications capability until repaired.                                                                       |
| **46–54**   | Hull Breach            | Structural seal compromised. The vehicle loses internal pressurization and atmosphere within minutes.                                                     |
| **55–63**   | Fuel / Power Leak      | The vehicle begins draining fuel or energy reserves; operating time is cut by $75\%$ until sealed.                                                        |
| **64–72**   | Critical System Damage | One primary utility system (Hacking rig, Nav-computer, Sensor dish) is rendered completely inert.                                                         |
| **73–81**   | Engine Destroyed       | Maximum Speed drops immediately to 0. The vehicle glides or coasts to an uncontrolled halt.                                                               |
| **82–90**   | Catastrophic Failure   | The vehicle is completely disabled and structurally totaled. All onboard occupants suffer an automatic Personal-Scale Critical Injury.                    |
| **91–99**   | Explosion              | The vehicle is instantly destroyed. All onboard occupants suffer an immediate severe Personal-Scale Critical Injury with a $+20$ modifier to their rolls. |
| **100+**    | Total Annihilation     | The vessel or vehicle is completely vaporized. All occupants inside are killed instantly.                                                                 |

---
## REPAIR MECHANICS
* **Hull Trauma & System Strain Repair:** Repairing a vehicle requires a Mechanics check. The base difficulty depends entirely on the current level of structural damage:
  * **Minor (1–2 points):** Easy (`[DIFFICULTY]`)
  * **Moderate (3–5 points):** Average (`[DIFFICULTY]``[DIFFICULTY]`)
  * **Major (6–10 points):** Hard (`[DIFFICULTY]``[DIFFICULTY]``[DIFFICULTY]`)
  * **Critical (11+ points):** Daunting (`[DIFFICULTY]``[DIFFICULTY]``[DIFFICULTY]``[DIFFICULTY]`)
* **Fixing Critical Hits:** Eliminating a persistent component Critical effect requires a standalone **Hard (`[DIFFICULTY]``[DIFFICULTY]``[DIFFICULTY]`) Mechanics check**.
---
## SPENDING NARRATIVE SYMBOLS IN VEHICLE COMBAT
### Spending Advantage (`[ADVANTAGE]`)
* `[ADVANTAGE]`: Recover 1 point of System Strain on your vehicle; or notice a minor tactical layout detail.
* `[ADVANTAGE]` `[ADVANTAGE]`: Upgrade an incoming attack's difficulty; or activate a weapon quality (e.g., Blast, Linked).
* `[ADVANTAGE]` `[ADVANTAGE]` `[ADVANTAGE]`: Force an opponent's vehicle to drop their current Speed rating by 1; or instantly inflict a Vehicle Critical Hit (if the attack dealt damage).
### Spending Triumph (`[TRIUMPH]`)
* Trigger a Vehicle Critical Hit directly regardless of damage total, or permanently disable an exposed exterior component.
### Spending Threat (`[THREAT]`)
* `[THREAT]`: Suffer 1 point of System Strain; or grant a Boost die (`[BOOST]`) to the next enemy attacking you.
* `[THREAT]` `[THREAT]`: Onboard weapon system temporarily jams, requiring a full maneuver to clear out.
* `[THREAT]` `[THREAT]` `[THREAT]`: The vehicle suffers 1 automatic point of Hull Trauma due to stress or scraping terrain obstacles.
### Spending Despair (`[DESPAIR]`)
* Trigger an immediate roll on the Vehicle Critical Hit table, cause an immediate high-speed collision with environmental debris, or run completely out of fuel/power reserves.