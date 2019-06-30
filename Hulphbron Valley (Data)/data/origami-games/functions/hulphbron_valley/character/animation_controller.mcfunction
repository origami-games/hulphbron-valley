#character animation checks
#@s - player
#called by player/management

#right/left
## default
execute store result score @s x run data get entity @s Pos[0] 10
execute if score @s x < @s x.prev run scoreboard players set @s animation 1
execute if score @s x > @s x.prev run scoreboard players set @s animation 2
scoreboard players operation @s x.prev = @s x
## sneak
execute if score @s sneak_check matches 1.. run scoreboard players add @s[scores={animation=1..2}] animation 2
execute unless score @s sneak_check matches 1.. run scoreboard players remove @s[scores={animation=3..4}] animation 2

#death
execute if score @s fire matches 1.. run scoreboard players set @s animation 5
execute unless score @s fire matches 1.. run scoreboard players set @s[scores={animation=5}] animation 1
execute if score @s revive matches 1.. run scoreboard players set @s animation 6

#set animation
execute positioned ~ ~-12 ~3 store result entity @e[type=armor_stand,tag=character,distance=...01,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s animation
