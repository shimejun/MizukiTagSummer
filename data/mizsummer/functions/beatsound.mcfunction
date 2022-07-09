#鬼が近いと聞こえる心音
execute if entity @a[tag=BBA,distance=55..70] run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.1 1
execute if entity @a[tag=BBA,distance=30..54] run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.2 1
execute if entity @a[tag=BBA,distance=15..29] run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.5 1
execute if entity @a[tag=BBA,distance=..14] run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.8 1
scoreboard players set @s beat 0