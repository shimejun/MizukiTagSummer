#結界のお札使用時
tag @s add barrier
item replace entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] weapon.mainhand with air
item replace entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] weapon.offhand with air
summon panda ~ ~ ~ {NoAI:1b,ActiveEffects:[{Id:14b,Duration:2000000,ShowParticles:false}],Tags:["shield"],Team:"escape",Silent:1b,Health:50f}
tellraw @s [{"text":"結界を展開した！","color":"green"}]
particle minecraft:enchant ~ ~ ~ 1 1 1 0 25 normal
effect give @s resistance 10 4 true
effect give @e[type=panda] resistance 10 4 true
playsound minecraft:block.anvil.place master @s ~ ~ ~ 1 2
scoreboard players reset @s barrier