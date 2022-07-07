tellraw @a [{"selector":"@s","color":"aqua","bold":true},{"text":"が ばばあになった！","color":"gold"}]
effect clear @a invisibility
effect give @s invisibility 1000000 0 true
tag @s add BBA
team join turbo @s
tag @a[tag=!BBA,tag=!spectate] add escape
team join escape @a[tag=!BBA,tag=!spectate]
effect give @s weakness 1000000 4 true
item replace entity @s armor.head with lime_dye

clear @a red_stained_glass
clear @a gray_stained_glass
clear @a green_stained_glass