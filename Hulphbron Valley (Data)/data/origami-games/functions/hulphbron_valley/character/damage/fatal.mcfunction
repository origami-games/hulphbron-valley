#runs on death
#@s - players with <=0 health
#called by player/management

#audiovisuals
title @s title {"translate":"deathScreen.title","color":"red"}
playsound origami-games:hulphbron_valley.character.death player @s ~ ~ ~ 1 0 1

#functionality
scoreboard players set @s revive 100
scoreboard players set @s health -1

effect give @s slowness 5 100 true
