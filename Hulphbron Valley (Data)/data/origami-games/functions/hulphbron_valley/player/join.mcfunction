#runs on player join
#@s - player joined game
#called by player/tick

#message
tellraw @s [{"text":"---","color":"dark_aqua","strikethrough":true},{"text":" ","strikethrough":false},{"translate":"pack.hulphbron_valley.name","color":"aqua","strikethrough":false},{"text":" ","strikethrough":false},{"text":"---","color":"dark_aqua","strikethrough":true}]

tellraw @s ""

tellraw @s [" ",{"translate":"text.hulphbron_valley.options","color":"aqua"}]
tellraw @s [" ",{"text":"------","color":"aqua","strikethrough":true}]

tellraw @s ["  ",{"translate":"options.viewBobbing","color":"dark_aqua"},{"text":": ","color":"dark_aqua"},{"translate":"options.off","color":"dark_aqua"}," ",{"translate":"text.hulphbron_valley.options.recommended","color":"dark_aqua"}]
tellraw @s ["  ",{"translate":"options.fov","color":"dark_aqua"},{"text":": 30-40","color":"dark_aqua"}]

#fix jump boost
effect clear @s jump_boost

#refresh character
kill @e[type=armor_stand,tag=character]
