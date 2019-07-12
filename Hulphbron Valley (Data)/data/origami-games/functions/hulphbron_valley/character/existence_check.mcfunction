#character existence checks
#@s - players without the tag `free` at game floor level
#called by player/management

#teleport character relatively
tp @e[type=armor_stand,tag=character] ~ ~ ~

#check character exists
execute unless entity @e[type=armor_stand,tag=character] run summon armor_stand ~ ~ ~ {Tags:["character"],Pose:{Head:[75f,0f,0f]},CustomName:'"character"',ArmorItems:[{},{},{},{id:white_wool,Count:1,tag:{CustomModelData:1}}],Invisible:1,Invulnerable:1,Silent:1}

#character executes
execute as @e[type=armor_stand,tag=character] at @s run function origami-games:hulphbron_valley/character/checks

#actionbar
function origami-games:hulphbron_valley/player/actionbar
