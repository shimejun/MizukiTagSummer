#復活のお札を他の人から貰った
scoreboard players add @s lives 1
tellraw @s {"text":"復活のお札を拾った！","color":"green"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.2 2
scoreboard players set @s p_revive 0