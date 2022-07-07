give @s red_stained_glass{display:{Name:'{"text":"ばばあ抽選：不参加","color":"red"}',Lore:['{"text":"ドロップして次のゲームを観戦","color":"gray"}']},Enchantments:[{}]}
title @s actionbar [{"text":"ばばあの抽選に参加しません。","color":"red"}]
scoreboard players reset @s d_limeglass
tag @s remove bbajoin
tag @s remove spectate
team join pick_leave @s
kill @e[type=item,nbt={Item:{id:"minecraft:lime_stained_glass"}}]