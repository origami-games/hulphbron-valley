#character drowning
#@s - player with -20 air
#called by player/management

#audiovisuals
function origami-games:hulphbron_valley/character/damage/audiovisuals_base
playsound minecraft:entity.player.hurt_drown player @a[distance=..20] ~ ~ ~ .5 2 1

#functionality
scoreboard players remove @s health 3
scoreboard players set @s air 0
