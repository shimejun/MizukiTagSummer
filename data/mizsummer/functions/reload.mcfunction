#抽選アイテムの再配布
effect give @a weakness 1000000 2 true
effect clear @a[tag=BBA] weakness
tellraw @a[tag=!spectate,tag=!bbajoin] [{"text":"抽選不参加状態がリセットされました。","color":"green"}]
tag @a[tag=!spectate] add bbajoin
clear @a red_stained_glass
clear @a lime_stained_glass
clear @a gray_stained_glass

give @a[tag=bbajoin] lime_stained_glass{display:{Name:'{"text":"ばばあ抽選：参加","color":"green"}',Lore:['{"text":"ドロップして抽選参加を拒否","color":"red"}']},Enchantments:[{}]}
give @a[tag=spectate] gray_stained_glass{display:{Name:'{"text":"ゲームを観戦","color":"gray"}',Lore:['{"text":"ドロップしてばばあ抽選に参加","color":"green"}']},Enchantments:[{}]}

team join pick_join @a[tag=bbajoin]
team join pick_leave @a[tag=!bbajoin]
team join pick_spectate @a[tag=spectate]