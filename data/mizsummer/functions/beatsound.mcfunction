execute if entity @a[tag=BBA,distance=35..50] run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.1 1
execute if entity @a[tag=BBA,distance=20..34] run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.2 1
execute if entity @a[tag=BBA,distance=..19] run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 0.5 1
scoreboard players set @s beat 0