#runs every tick
#called by #origami-games:tick

#bossbar
bossbar set origami-games:hulphbron_valley/gui/status players @a

#popups
scoreboard players add @e[type=armor_stand,tag=popup] popup 1
kill @e[type=armor_stand,tag=popup,scores={popup=16..}]
execute as @e[type=armor_stand,tag=popup] at @s run tp @s ~ ~ ~.1

#spawn
execute positioned ~.5 ~ ~.5 unless entity @e[type=area_effect_cloud,tag=spawn,distance=...1] run summon area_effect_cloud ~ ~ ~ {Tags:["spawn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomName:'"spawn"'}
execute positioned ~.5 ~ ~.5 if entity @e[type=area_effect_cloud,tag=spawn,distance=.11..] run kill @e[type=area_effect_cloud,tag=spawn]
