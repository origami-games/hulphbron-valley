#character on fire
#@s - player with fire score divisible by 20
#called by character/status/on_fire

#audiovisuals
function origami-games:hulphbron_valley/character/damage/audiovisuals_base
playsound minecraft:entity.player.hurt_on_fire player @a[distance=..20] ~ ~ ~ .5 2 1

#functionality
scoreboard players remove @s health 5
