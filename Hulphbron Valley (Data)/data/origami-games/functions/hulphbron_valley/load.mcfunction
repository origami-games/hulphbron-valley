#runs on load
#called by #origami-games:load

#notify load
tellraw @a [{"translate":"pack.hulphbron_valley.name","color":"aqua"},{"text":": ","color":"aqua"},{"translate":"pack.hulphbron_valley.load","color":"dark_aqua"}]

#initialise scoreboards and settings
scoreboard objectives add join_check minecraft.custom:minecraft.leave_game
scoreboard objectives add sneak_check minecraft.custom:minecraft.sneak_time
scoreboard objectives add hitbox_trigger minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add animation dummy
scoreboard objectives add config dummy
scoreboard objectives add popup dummy

scoreboard objectives add x dummy
scoreboard objectives add x.prev dummy

scoreboard objectives add health dummy
scoreboard objectives add health_gui dummy
scoreboard objectives add revive dummy
scoreboard objectives add air dummy

scoreboard objectives add fire dummy
scoreboard objectives add fire_tick dummy
scoreboard objectives add fire_tick.prev dummy

scoreboard players set $tick_second fire_tick 20
scoreboard players set $divider health_gui 5
execute unless score character_small config matches 0..1 run scoreboard players set character_small config 1
execute unless score active config matches 0..1 run scoreboard players set active config 1

bossbar add origami-games:hulphbron_valley/gui/status ""

team add players
team modify players collisionRule never
team modify players nametagVisibility never
team modify players friendlyFire false
team modify players seeFriendlyInvisibles false

gamerule doWeatherCycle false
gamerule keepInventory true
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule disableRaids true
gamerule doFireTick false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
