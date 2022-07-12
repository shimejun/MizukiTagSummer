#脱出可能になった時に実行

#見た目の部分
title @a title [{"text":"脱出可能","color":"red","bold":true}]
tellraw @a [{"text":"門が開いた。","color":"gold","bold":true}]
execute as @a[tag=!BBA] at @s run playsound minecraft:block.iron_door.open block @s ~ ~ ~ 0.3 0.5
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.5 0.5
scoreboard players set @e[tag=master] timelimit 3600
worldborder warning distance 1000000
scoreboard players set @e[tag=playing] sec2 180
bossbar set minecraft:time1 players
bossbar set minecraft:time2 players @a

#脱出可能をingameに伝える
tag @e[tag=master] add timelimit
clear @a white_dye

#鬼を強化
attribute @a[tag=BBA,limit=1] generic.movement_speed base set 0.5
tellraw @a [{"text":"ターボばばあの移動速度が増加した…","color":"red"}]

#全部終わってカウントダウン開始
schedule function mizsummer:timelimits/90s 90s