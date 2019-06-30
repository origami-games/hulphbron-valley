Changelog
=========

## [HV v0.0.1](https://github.com/origami-games/hulphbron-valley/archive/v0.0.1.zip)
### Added
- Character
  - Has 100 HP
  - Can be set on fire
    - 1 second on fire = -5 HP
  - Automatically revives after death
    - Takes 5 seconds to revive
  - Has 20 food points
    - Food doesn't do anything yet
- Health GUI
  - 5 hearts
  - 1 heart = 20 HP
- Pickups
  - Heart pickup
    - +20 HP
    - `armor_stand` `{Tags:["resource_heart"],CustomName:'"\\uE0f1"',CustomNameVisible:1,Small:1,Invisible:1}`
- Sounds
  - `music/game1`
    - Song to be changed in the future
    - Plays occasionally (at the same rate as `minecraft:music.game`)
    - Channel = `music`
  - `character/death`
    - Runs on character death
    - Channel = `player`
- Join message
  - Included `Required Options`
    - **These options are compulsory and must be set whilst playing**

-----
