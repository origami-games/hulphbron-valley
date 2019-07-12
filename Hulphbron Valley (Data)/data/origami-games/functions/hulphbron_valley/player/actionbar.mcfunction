#actionbar checks

execute unless entity @e[tag=right_click,distance=.01...5] run title @s actionbar ""

execute if entity @e[tag=right_click,distance=.01...5] run title @s actionbar [{"translate":"key.use","color":"dark_blue"}," - ",{"keybind":"key.use","color":"blue"}]
