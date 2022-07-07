#認識阻害のお札使用時 結界と併用可能(あんまり強くない)
tag @s add invisible
item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] weapon.mainhand with air
item replace entity @s[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] weapon.offhand with air
effect give @s invisibility 10 0 true
tellraw @s {"text":"姿を隠した！","color":"green"}
playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
particle minecraft:smoke ~ ~ ~ 1 1 1 0 25 force @a[distance=..25]
scoreboard players reset @s invisible