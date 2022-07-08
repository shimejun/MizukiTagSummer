#復活のお札をドロップ
tellraw @s [{"text":"復活のお札を落とした！","color":"red"}]
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.2 1
scoreboard players remove @s lives 1
scoreboard players reset @s d_revive