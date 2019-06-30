#fire extinguish effects
#called by character/status/on_fire

particle poof ~ ~-10 ~2.75 .25 1 .25 .1 3 force @a
playsound minecraft:block.fire.extinguish player @a[distance=..20] ~ ~ ~ .5 1.9 1
