#逃走者が捕まったら実行
advancement revoke @s only mizsummer:catch
execute if entity @s[scores={lives=1..}] run tellraw @a [{"text":"⚡ ターボばばあ が","color":"gold"},{"selector":"@s","color":"aqua"},{"text":"を","color":"gold"},{"text":"捕まえた！","color":"red"}]
execute if entity @s[scores={lives=0}] run tellraw @a [{"text":"⚡ ターボばばあ が","color":"gold","bold":true},{"selector":"@s","color":"red"},{"text":"を","color":"gold"},{"text":"捕まえた！","color":"dark_red"},{"text":"(脱落)","color":"gray","bold":false}]
execute if entity @s[scores={lives=0}] run function mizsummer:dead
scoreboard players add @a[tag=BBA] catch_count 1
execute as @a[tag=!BBA] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.5 0.5
scoreboard players remove @s[scores={lives=1..}] lives 1
tellraw @s[scores={lives=0}] [{"text":"残り残機 0！","color":"dark_red","bold":true}]
execute if entity @s[nbt={Inventory:[{id:"minecraft:white_dye"}]}] run tellraw @s [{"text":"復活のお札を消費して復活した。","color":"gold"}]
clear @s white_dye 1
execute as @s[scores={lives=0..}] at @s run function mizsummer:spawn