#revives player
#@s - player with <0 revive
#called by player/management

#tp to spawn
execute positioned ~ ~-12 ~3 as @e[type=armor_stand,tag=character,distance=...01,sort=nearest,limit=1] at @e[type=area_effect_cloud,tag=spawn,limit=1] run tp @s ~ ~-12 ~
tp @s @e[type=area_effect_cloud,tag=spawn,limit=1]

#reset scores
scoreboard players set @s health 100
scoreboard players reset @s food
scoreboard players reset @s fire
scoreboard players set @s animation 1
scoreboard players reset @s revive

#audiovisuals
particle poof ~ ~-12 ~3 .1 .1 .1 .1 5 force @a
execute at @s positioned ~ ~-12 ~3 run function origami-games:hulphbron_valley/animations/witch_circle

effect give @s blindness 2 0 true
effect give @s slowness 1 100 true
