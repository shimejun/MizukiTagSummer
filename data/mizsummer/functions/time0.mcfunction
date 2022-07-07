#ゲーム開始の瞬間に実行
effect clear @a[tag=BBA] weakness
gamemode spectator @a[tag=spectate]
gamemode adventure @a[tag=escape]
scoreboard players set @s tick 0
scoreboard players set @s sec 0
title @a title [{"text":"ターボばばあから逃げろ","color":"dark_red","bold":true,"italic":true}]
execute as @a[tag=escape] run function mizsummer:spawn
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.2 1
scoreboard players set @e[tag=master,scores={gametime_limit=1}] sec 0
scoreboard players set @e[tag=master,scores={gametime_limit=2400}] sec 120
scoreboard players set @e[tag=master,scores={gametime_limit=4800}] sec 240
scoreboard players set @e[tag=master,scores={gametime_limit=7200}] sec 360
scoreboard players set @e[tag=master,scores={gametime_limit=9600}] sec 480
scoreboard players set @e[tag=master,scores={gametime_limit=12000}] sec 600
scoreboard players set @e[tag=master,scores={gametime_limit=14400}] sec 720
scoreboard players set @e[tag=master,scores={gametime_limit=16800}] sec 960
scoreboard players set @e[tag=master,scores={gametime_limit=19200}] sec 1080
tp @a[tag=BBA] @e[tag=bbaspawn,limit=1,sort=random]
schedule function mizsummer:ingames/sec 1s