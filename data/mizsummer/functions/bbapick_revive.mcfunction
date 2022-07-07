#ばばあが復活のお札を拾ったときの処理、なかなか無いと思う
tellraw @s {"text":"復活のお札を破壊した！","color":"red"}
playsound minecraft:entity.generic.eat master @s ~ ~ ~ 1 1
scoreboard players reset @s p_revive