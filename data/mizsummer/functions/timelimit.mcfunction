title @a title [{"text":"脱出可能","color":"aqua","bold":true}]
tellraw @a [{"text":"街の門が開いた。","color":"gold","bold":true}]
execute as @a[tag=!BBA] at @s run playsound minecraft:block.iron_door.open block @s ~ ~ ~ 0.3 0.5

tag @e[tag=master] add timelimit
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.5 0.5
scoreboard players set @e[tag=master] timelimit 3600
worldborder warning distance 1000000
attribute @a[tag=BBA,limit=1] generic.movement_speed base set 0.5
tellraw @a [{"text":"ターボばばあの移動速度が増加した…","color":"red"}]

bossbar set minecraft:time1 players
bossbar set minecraft:time2 players @a
scoreboard players set @e[tag=playing] sec2 180
schedule function mizsummer:timelimits/90s 90s