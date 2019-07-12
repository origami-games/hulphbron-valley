#player tick
#@s - all players
#called by tick

#right-click check
tag @s remove hitbox_trigger
execute if entity @s[scores={hitbox_trigger=1..}] run tag @s add hitbox_trigger

#team
team join players @s

#join messages
scoreboard players set @s[tag=!joined_once] join_check 1
execute if entity @s[scores={join_check=1}] run function origami-games:hulphbron_valley/player/join
scoreboard players reset @s join_check
tag @s add joined_once

#enforced management
execute unless score active config matches 0 run function origami-games:hulphbron_valley/player/management

#gui
## health
scoreboard players operation @s health_gui = @s health
scoreboard players operation @s health_gui /= $divider health_gui
execute if score @s health_gui matches 20 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE0f1\uE0f1\uE0f1"
execute if score @s health_gui matches 19 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE0f1\uE0f1\uE1f1"
execute if score @s health_gui matches 18 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE0f1\uE0f1\uE2f1"
execute if score @s health_gui matches 17 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE0f1\uE0f1\uE3f1"
execute if score @s health_gui matches 16 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE0f1\uE0f1\uE4f1"
execute if score @s health_gui matches 15 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE0f1\uE1f1\uE4f1"
execute if score @s health_gui matches 14 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE0f1\uE2f1\uE4f1"
execute if score @s health_gui matches 13 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE0f1\uE3f1\uE4f1"
execute if score @s health_gui matches 12 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE0f1\uE4f1\uE4f1"
execute if score @s health_gui matches 11 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE1f1\uE4f1\uE4f1"
execute if score @s health_gui matches 10 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE2f1\uE4f1\uE4f1"
execute if score @s health_gui matches 9 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE3f1\uE4f1\uE4f1"
execute if score @s health_gui matches 8 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE0f1\uE4f1\uE4f1\uE4f1"
execute if score @s health_gui matches 7 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE1f1\uE4f1\uE4f1\uE4f1"
execute if score @s health_gui matches 6 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE2f1\uE4f1\uE4f1\uE4f1"
execute if score @s health_gui matches 5 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE3f1\uE4f1\uE4f1\uE4f1"
execute if score @s health_gui matches 4 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE0f1\uE4f1\uE4f1\uE4f1\uE4f1"
execute if score @s health_gui matches 3 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE1f1\uE4f1\uE4f1\uE4f1\uE4f1"
execute if score @s health_gui matches 2 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE2f1\uE4f1\uE4f1\uE4f1\uE4f1"
execute if score @s health_gui matches 1 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE3f1\uE4f1\uE4f1\uE4f1\uE4f1"
execute if score @s health_gui matches 0 run bossbar set origami-games:hulphbron_valley/gui/status name "\uE4f1\uE4f1\uE4f1\uE4f1\uE4f1"
execute if score @s health_gui matches -1 if score @s revive matches 100 run bossbar set origami-games:hulphbron_valley/gui/status name [{"text":"","color":"dark_red"},"\uE5f1\uE5f1\uE5f1\uE5f1\uE5f1"]
execute if score @s health_gui matches -1 if score @s revive matches 80 run bossbar set origami-games:hulphbron_valley/gui/status name [{"text":"","color":"dark_red"},"\uE0f1\uE5f1\uE5f1\uE5f1\uE5f1"]
execute if score @s health_gui matches -1 if score @s revive matches 60 run bossbar set origami-games:hulphbron_valley/gui/status name [{"text":"","color":"dark_red"},"\uE0f1\uE0f1\uE5f1\uE5f1\uE5f1"]
execute if score @s health_gui matches -1 if score @s revive matches 40 run bossbar set origami-games:hulphbron_valley/gui/status name [{"text":"","color":"dark_red"},"\uE0f1\uE0f1\uE0f1\uE5f1\uE5f1"]
execute if score @s health_gui matches -1 if score @s revive matches 20 run bossbar set origami-games:hulphbron_valley/gui/status name [{"text":"","color":"dark_red"},"\uE0f1\uE0f1\uE0f1\uE0f1\uE5f1"]

#reset scores
scoreboard players reset @s hitbox_trigger
