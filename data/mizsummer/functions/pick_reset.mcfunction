#ミスで抽選をリセットしたい時に使う
tellraw @a [{"text":"抽選をリセットしました。","color":"red"}]
clear @a lime_dye
bossbar set minecraft:time1 players
bossbar set minecraft:time2 players
effect clear @a[tag=BBA] invisibility
tag @a remove BBA
tag @a remove escape
tag @a remove escaped
tag @a remove dead
function mizsummer:reload
