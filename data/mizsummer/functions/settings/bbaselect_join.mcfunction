give @s lime_stained_glass{display:{Name:'{"text":"ばばあ抽選：参加","color":"green"}',Lore:['{"text":"ドロップして抽選参加を拒否","color":"red"}']},Enchantments:[{}]} 1
title @s actionbar [{"text":"ばばあの抽選に参加します。","color":"green"}]
scoreboard players reset @s d_grayglass
tag @s add bbajoin
tag @s remove spectate
team join pick_join @s
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass"}}]