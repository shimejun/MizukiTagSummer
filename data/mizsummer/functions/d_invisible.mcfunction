#認識阻害のお札をドロップ時

scoreboard players reset @s d_invisible
execute as @a[scores={d_invisible=1..}] run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"認識阻害のお札","color":"gold"}',Lore:['{"text":"使用すると10秒間透明化する。"}','{"text":"効果中でもターボばばあに攻撃されると捕まってしまう。"}','{"text":"<使い捨て>"}']}} 1
kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]