# Learn to Fly mechanics

One tick is one run of the flight timeline's `onEnterFrame` handler. Positions use Flash pixels, with positive Y down. The Flash project contains the authored frame rate and ramp shapes. [Flight loop](../scripts/Main%20timeline.as#L964-L1040)

## Flight and payout

### Launch

The player starts with forward speed `vmag = 5`. Each ramp tick moves X by `cos(angle) * vmag` and then samples the slope 40 px ahead. If the point is below the player by `dy`, the ramp adds `dy * slide` to `vmag`. Otherwise it adds `20 * slide`. The ramp angle is `atan(dy / 40)`. The player launches when the sample passes the last ramp's right edge minus 1 px. At launch, `vx = cos(angle) * vmag` and `vy = sin(angle) * vmag`. The flight angle `vdir` starts at the ramp angle in degrees plus `sink = atan(sinkRatio)` in degrees. [Ramp update](../scripts/Main%20timeline.as#L296-L388) · [Flight setup](../scripts/Main%20timeline.as#L873-L918)

### Air

Left or A pitches up. Right or D pitches down. The game checks left first, then right. Each pressed direction changes `vdir` by `1 + max(0, 1.5 - 3 * vmag / speedThreshold)` degrees per tick. The checks use `vdir > -85` for up and `vdir < 85` for down, so a step can cross the limit. Space adds rocket power to `vmag` and adds the thrust vector at `vdir` to `vx, vy`. Each firing tick spends 1 fuel. [Steering and rocket](../scripts/Main%20timeline.as#L444-L487)

The air update runs these steps after input. `g` is the glide ratio. `speed` is the measured displacement from the previous tick, before camera movement. [Air update](../scripts/Main%20timeline.as#L488-L517) · [Speed measurement](../scripts/Main%20timeline.as#L1025-L1040)

1. `drag = (sink - vdir) / 90`. If `speed > speedThreshold`, add `1.5 * (speed - speedThreshold) / speedThreshold`.
2. `vmag = vmag * (1 - airFriction * drag * g) - 0.4 * drag`.
3. Move `g` toward `(vmag - fallSpeed) / (glideSpeed - fallSpeed)` by at most 0.05. Clamp `g` to 0 through 1.
4. `vy = (vy + 0.4) * (1 - 0.1 * g) * (1 - airFriction / 15)`. Multiply `vx` by `1 - airFriction` if `vx > vmag`, or by `1 - airFriction / 10` otherwise.
5. Move by `cos(vdir) * vmag * g + vx * (1 - g)` horizontally and `sin(vdir) * vmag * g + vy` vertically. Convert `vdir` from degrees for the trig functions.

### Water

At or below sea level, the player bounces if the previous measured speed is at least 20 and the sprite rotation is between 75° and 105° inclusive. A bounce snaps the player to sea level, multiplies `vx` and `vmag` by 0.8, then sets `vy = max(-18, -0.18 * (vx + vmag) / 2)`. The new flight angle is -20°. [Bounce](../scripts/Main%20timeline.as#L519-L535)

On a landing without a bounce, the game multiplies `vmag` by 0.7 and mixes its components into the water velocity using `g`. Each water tick multiplies both velocities by 0.91 and subtracts 0.9 from `vy`. The flight ends when the height sampled before that tick is at or above sea level and the updated `vx` is at most 0.7. [Landing](../scripts/Main%20timeline.as#L536-L563) · [Water update](../scripts/Main%20timeline.as#L410-L417) · [Finish check](../scripts/Main%20timeline.as#L964-L1017)

### Distance, time, and cash

- Distance is `(playerX - lastRampRightEdge) / 50`. Height is `(seaY - playerY) / 50`. The UI labels both in feet and labels tick displacement as mph. [Measurements](../scripts/Main%20timeline.as#L964-L987) · [UI units](../scripts/Main%20timeline.as#L736-L743)
- The duration counter starts at 9.5 and adds 0.02 per normal air tick, including bounces. A landing sets it to `round(duration - 0.5)`. The duration achievement tests `(duration - 9.5) / 0.6` after this rounding. [Initial counter](../scripts/Main%20timeline.as#L846-L857) · [Air tick](../scripts/Main%20timeline.as#L430-L436) · [Landing](../scripts/Main%20timeline.as#L545-L558) · [Duration check](../scripts/Main%20timeline.as#L1010-L1013)
- Let `D` be distance at the end of the water phase, `A` the highest recorded flight height, and `T` the rounded duration counter. A click or key press on the results adds `round((round(0.4 * D) + round(2 * A * min(2, 1 + A / 50))) * round(T) / 10)` cash. The distance multiplier in the landing code is overwritten by the main loop's position-based distance. The results board caps its displayed multiplier at 3, while the actual payout uses `T / 10`. [Landing bonuses](../scripts/Main%20timeline.as#L545-L558) · [Final distance and payout](../scripts/Main%20timeline.as#L974-L1058) · [Results display](../scripts/Library/!Game/finishboard.as#L28-L52)

## Gliders and rockets

Speed values are internal pixels per tick. The glider speed threshold adds drag above that speed. It does not cap actual speed. Level 1 is the starting state without a glider or rocket. [Shop stats](../scripts/Main%20timeline.as#L38-L56) · [Drag](../scripts/Main%20timeline.as#L488-L493)

| Level | Price ($) | Sink ratio | Fall speed | Glide speed | Speed threshold | Altitude gauge scale |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 1 | 0 | 0 | 1000 | 1000 | 50 | 1 |
| 2 | 50 | 1/12 | 0 | 5 | 55 | 60 |
| 3 | 1000 | 1/24 | 0 | 6 | 100 | 500 |
| 4 | 5000 | 1/36 | 0 | 7 | 200 | 200 |

| Level | Price ($) | Power per burn tick |
| ---: | ---: | ---: |
| 1 | 0 | 0 |
| 2 | 250 | 0.45 |
| 3 | 2000 | 0.9 |
| 4 | 10000 | 1.5 |

## Upgrades

All upgrades start at level 1. Ramp height adds to the sea's Y position. Ramp acceleration is the `slide` factor. The shop charges the price of the selected level. It allows jumping directly to a higher level. Fuel capacity upgrades require a rocket. [Upgrade values and prices](../scripts/Main%20timeline.as#L38-L66) · [Sea position](../scripts/Main%20timeline.as#L929-L940) · [Purchase and hover checks](../scripts/Library/!Shop/!Board/Board.as#L84-L193)

| Level | Ramp height (px) | Price ($) | Ramp acceleration | Price ($) | Air friction | Price ($) | Fuel capacity (ticks) | Price ($) |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 1 | 25 | 0 | 0.015 | 0 | 0.065 | 0 | 30 | 0 |
| 2 | 75 | 10 | 0.025 | 15 | 0.061 | 10 | 40 | 50 |
| 3 | 125 | 30 | 0.04 | 45 | 0.057 | 30 | 50 | 100 |
| 4 | 175 | 50 | 0.05 | 80 | 0.053 | 50 | 60 | 150 |
| 5 | 250 | 90 | 0.06 | 150 | 0.049 | 100 | 70 | 300 |
| 6 | 350 | 175 | 0.07 | 400 | 0.046 | 175 | 80 | 600 |
| 7 | 500 | 300 | 0.08 | 750 | 0.043 | 375 | 90 | 1000 |
| 8 | 700 | 600 | 0.09 | 1500 | 0.040 | 800 | 100 | 2000 |
| 9 | 1000 | 1000 | 0.1 | 3500 | 0.038 | 2000 | 110 | 3500 |
| 10 | 1400 | 2000 | 0.11 | 6000 | 0.036 | 4000 | 120 | 6000 |
| 11 | 2000 | 4000 | 0.12 | 10000 | 0.034 | 6500 | 175 | 10000 |

## Progression

The day counter advances on entry to the day intro. Stage unlocks count achievements across all stages. Each stage has four one-time achievements. [Day intro](../scripts/Main%20timeline.as#L827-L831) · [Stage unlocks](../scripts/Main%20timeline.as#L689-L725) · [Goals and rewards](../scripts/Main%20timeline.as#L68-L117)

| Stage | Achievements to unlock | Distance (ft) | Altitude (ft) | Speed (mph) | Duration (s) | Reward each ($) |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 1 | 0 | 40 | 10 | 45 | 5 | 25 |
| 2 | 2 | 200 | 25 | 70 | 8 | 100 |
| 3 | 6 | 650 | 45 | 100 | 15 | 500 |
| 4 | 10 | 1500 | 100 | 150 | 25 | 2000 |
| 5 | 16 | 4000 | 225 | 225 | 35 | 5000 |

Achievements are checked when the flight ends in the water. Distance uses `D`, altitude uses `A * min(2, 1 + A / 50)`, and speed uses the highest measured speed, which can include the ramp. Rewards are paid during the achievement screen, in distance, altitude, speed, duration order. [Finish checks](../scripts/Main%20timeline.as#L969-L1017) · [Award order](../scripts/Main%20timeline.as#L1114-L1145) · [Reward payout](../scripts/Library/!Achievements/!achdisa.as#L9-L21)

At the start of an air update, the previous tick's distance triggers the ending at 6,000 ft or more. The game adds $10,000 and sets the finished flag. This runs only while the finished and keep-playing flags are both false or unset. The ending buttons set keep-playing mode and send the player to the main menu or shop. [Ending check](../scripts/Main%20timeline.as#L418-L435) · [Ending buttons](../scripts/Library/!Outro/endgametxt.as#L3-L13)
