#character entity checks
#@s - @e[type=armor_stand,tag=character]
#called by character/existence_check

#hitbox - distance=.01...5
execute as @e[type=armor_stand,distance=.01...5] run function origami-games:hulphbron_valley/character/hitbox/found_stand

#block checks
execute if block ~ ~ ~ fire positioned ~ ~12 ~-3 run scoreboard players add @p[scores={health=1..}] fire 3
data merge entity @s {Fire:-1s}
execute if block ~ ~ ~ water run function origami-games:hulphbron_valley/character/status/in_water

#small
execute if score character_small config matches 0 run data merge entity @s {Small:0}
execute if score character_small config matches 1 run data merge entity @s {Small:1}
