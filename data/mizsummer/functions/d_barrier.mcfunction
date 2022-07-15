#結界のお札をドロップ時

scoreboard players reset @a d_barrier
execute as @a[scores={d_barrier=1..}] run give @s carrot_on_a_stick{display:{Name:'{"text":"結界のお札","color":"light_purple"}',Lore:['{"text":"使用すると結界を5秒間展開する。結界はターボばばあからの攻撃を防ぐ。"}','{"text":"効果中にターボばばあから攻撃されると、ターボばばあを短時間スタンさせる。"}','{"text":"<使い捨て>"}']}} 1
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]