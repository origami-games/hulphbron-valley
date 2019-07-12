#character in water
#@s - player
#called by character/checks

#audiovisuals
particle minecraft:bubble ~ ~ ~ .25 .25 .25 .1 4 normal @a

#functionality
execute positioned ~ ~12 ~-3 run scoreboard players remove @p[scores={health=1..,air=-19..}] air 1
execute positioned ~ ~12 ~-3 if score @p fire matches 1.. if score @p health matches 1.. run function origami-games:hulphbron_valley/character/status/fire_extinguish
execute positioned ~ ~12 ~-3 run scoreboard players reset @p[scores={health=1..}] fire
