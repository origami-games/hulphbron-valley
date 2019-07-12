#character hitbox found armour stand
#@s - armour stands within 0.01-0.5 blocks of a character
#called by character/checks

execute positioned ~ ~12 ~-3 if entity @p[tag=hitbox_trigger] if entity @s[tag=resource_heart] at @s run function origami-games:hulphbron_valley/resources/heart/pickup
