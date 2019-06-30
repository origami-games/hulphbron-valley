#runs on load
#called by #origami-games:load

#notify load
tellraw @a [{"translate":"pack.hulphbron_valley.name","color":"aqua"},{"text":": ","color":"aqua"},{"translate":"pack.hulphbron_valley.load","color":"dark_aqua"}]

#initialise scoreboards and settings
scoreboard objectives add join_check minecraft.custom:minecraft.leave_game
scoreboard objectives add sneak_check minecraft.custom:minecraft.sneak_time
scoreboard objectives add popup dummy
scoreboard objectives add animation dummy

scoreboard objectives add x dummy
scoreboard objectives add x.prev dummy

scoreboard objectives add health dummy
scoreboard objectives add health_gui dummy
scoreboard objectives add revive dummy
scoreboard objectives add food dummy

scoreboard objectives add fire dummy
scoreboard objectives add fire_tick dummy
scoreboard objectives add fire_tick.prev dummy

scoreboard players set $tick_second fire_tick 20
scoreboard players set $divider health_gui 5


bossbar add origami-games:hulphbron_valley/gui/status ""
bossbar set origami-games:hulphbron_valley/gui/status players @a


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
