#捕まったら実行
tag @s add getitems
clear @s carrot_on_a_stick
clear @s warped_fungus_on_a_stick

effect give @s invisibility 4 0 true
effect give @s weakness 1000000 0 true
tp @s @e[sort=random,limit=1,tag=randomspawn]
schedule function mizsummer:ingames/getitems 20t