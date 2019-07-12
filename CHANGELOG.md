Changelog
=========

## [HV v0.0.2](https://github.com/origami-games/hulphbron-valley/releases/download/v0.0.2/Hulphbron_Valley-v0.0.2.zip)
- Converted backend support to [Cardboard](https://github.com/origami-games/cardboard)
  - The source code will not work without Cardboard; the world download is not affected
- Fixed jump boost not working from join until you cleared and reapplied the effect
- Removed Fancy/Fast Graphics and Smooth Lighting from option requirements
- Modified lang for parts of the `Controls` menu
- Changed island shape
- Added dirt
  - Has random textures
- Added random textures for grass
- Added water
- Made health GUI smaller
- Moved default lang changes to the `minecraft` namespace
- Added new ambient game music (`hulphbron_valley/music/game2`)
- Added a sound for heart pickups
- Added summon functions for pickups
- Added actionbar for pickups
- Added default fluid tags (`minecraft/tags/fluids`)
- Added particles for revival
- Added `character_small` config option
  - Makes the character small (1) or large (0)
- Added `active` config option
  - Controls whether the map functions run (1) or not (0)
- Removed kill check for characters
  - Hulphbron Valley should be multiplayer compatible now (needs testing)
- Renamed scoreboard `right_click` to `hitbox_trigger`
- Added default team (`players`)

-----

## [HV v0.0.1](https://github.com/origami-games/hulphbron-valley/releases/download/v0.0.1/Hulphbron_Valley-v0.0.1.zip)
- Added a character
  - Has 100 HP
  - Can be set on fire
    - 1 second on fire = -5 HP
  - Automatically revives after death
    - Takes 5 seconds to revive
  - Has 20 food points
    - Food doesn't do anything yet
- Added a health UI
  - 5 hearts
  - 1 heart = 20 HP
- Added pickups
  - Heart pickup
    - +20 HP
    - `armor_stand` `{Tags:["resource_heart"],CustomName:'"\\uE0f1"',CustomNameVisible:1,Small:1,Invisible:1}`
- Added sounds
  - `music/game1`
    - Song to be changed in the future
    - Plays occasionally (at the same rate as `minecraft:music.game`)
    - Channel = `music`
  - `character/death`
    - Runs on character death
    - Channel = `player`
- Added a join message
  - Includes `Required Options`
    - **These options are compulsory and must be set whilst playing**

-----
