#捕まったら実行
tag @s add getitems
clear @s carrot_on_a_stick
clear @s warped_fungus_on_a_stick

effect give @s invisibility 4 0 true
effect give @s weakness 1000000 0 true
execute at @e[sort=random,limit=1,tag=randomspawn,distance=50..] run tp @s ~ ~ ~
schedule function mizsummer:ingames/getitems 20t