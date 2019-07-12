#heart resource pickup
#@s - heart resource with character nearby
#called by character/hitbox/found_stand

#audiovisuals
particle heart ~ ~2 ~
summon armor_stand ~ ~2 ~-1.2 {Tags:["popup"],CustomName:'{"text":"+20 HP","color":"red"}',CustomNameVisible:1,Invisible:1}
playsound origami-games:hulphbron_valley.resources.pickup.heart player @a[distance=..20] ~ ~12 ~-3 1 1 1

#functionality
execute positioned ~ ~12 ~-3 run scoreboard players add @p health 20

#kill entity
kill @s
