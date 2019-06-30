#player management
#players without tag `free`
#called by player tick

#character entity
execute positioned ~ ~-12 ~3 run function origami-games:hulphbron_valley/character/existence_check

#effects
effect give @s regeneration 1 255 true
effect give @s saturation 20 0 true
effect give @s resistance 1 0 true
effect give @s fire_resistance 1 0 true
effect give @s invisibility 1 0 true
effect give @s jump_boost 1 250 true

#inventory
#offhand
replaceitem entity @s weapon.offhand stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
## hotbar
replaceitem entity @s hotbar.0 carrot_on_a_stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
replaceitem entity @s hotbar.1 carrot_on_a_stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
replaceitem entity @s hotbar.2 carrot_on_a_stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
replaceitem entity @s hotbar.3 carrot_on_a_stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
replaceitem entity @s hotbar.4 carrot_on_a_stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
replaceitem entity @s hotbar.6 carrot_on_a_stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
replaceitem entity @s hotbar.7 carrot_on_a_stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
replaceitem entity @s hotbar.8 carrot_on_a_stick{CustomModelData:1,display:{Name:'""'},hulphbron_valley:{inventory:1b}}
## kill dropped items
kill @e[type=item,nbt={Item:{tag:{hulphbron_valley:{inventory:1b}}}}]

#movement
## floor  = 4
## player = 16
tp @s ^ ^ ^ 0 75

#animations
function origami-games:hulphbron_valley/character/animation_controller

#vitals
execute unless score @s health matches ..100 run scoreboard players set @s health 100
execute if score @s health matches ..-2 run scoreboard players set @s health 0
execute if score @s health matches 0 run function origami-games:hulphbron_valley/character/damage/fatal
scoreboard players remove @s[scores={health=-1}] revive 1
execute if score @s revive matches 0 run function origami-games:hulphbron_valley/character/status/revive

execute unless score @s food matches 0.. run scoreboard players set @s food 20

execute unless score @s fire matches 0.. run scoreboard players set @s fire 0
execute if score @s fire matches 1.. run function origami-games:hulphbron_valley/character/status/on_fire

#other
scoreboard players reset @s sneak_check
