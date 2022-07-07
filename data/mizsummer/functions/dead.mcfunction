#死人に口なし
scoreboard players reset @s lives
tag @s add dead
tag @s remove escape
team join dead @s
gamemode spectator @s
tp @s @a[tag=BBA,limit=1]
tellraw @s [{"text":"捕まってしまった…","color":"aqua"}]
clear @s carrot_on_a_stick
clear @s warped_fungus_on_a_stick