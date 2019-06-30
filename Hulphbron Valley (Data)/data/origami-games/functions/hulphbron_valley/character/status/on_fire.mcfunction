#character on fire
#@s - player
#called by player/management

#audiovisuals
particle flame ~ ~-10 ~2.75 .25 1 .25 .01 1 force @a

#functionality
scoreboard players remove @s[scores={health=1..}] fire 1
execute if entity @s[scores={fire=0}] run function origami-games:hulphbron_valley/character/status/fire_extinguish

scoreboard players operation @s fire_tick = @s fire
scoreboard players operation @s fire_tick /= $tick_second fire_tick
execute unless score @s fire_tick = @s fire_tick.prev run function origami-games:hulphbron_valley/character/damage/fire
scoreboard players operation @s fire_tick.prev = @s fire_tick
