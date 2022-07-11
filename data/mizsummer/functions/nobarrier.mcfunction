tellraw @s [{"text":"結界が展開できない！（まだ結界が展開中です！）","color":"red"}]
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1
scoreboard players set @s barrier 0