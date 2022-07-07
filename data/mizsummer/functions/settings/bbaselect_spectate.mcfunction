give @s gray_stained_glass{display:{Name:'{"text":"ゲームを観戦","color":"gray"}',Lore:['{"text":"ドロップしてばばあ抽選に参加","color":"green"}']},Enchantments:[{}]}
title @s actionbar [{"text":"ゲームに参加せず観戦します。","color":"gray"}]
scoreboard players reset @s d_redglass
tag @s remove bbajoin
tag @s add spectate
team join pick_spectate @s
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass"}}]