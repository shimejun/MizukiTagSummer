execute as @e[tag=playing] at @s run function mizsummer:ingame
execute as @a[scores={d_revive=1..}] at @s run function mizsummer:revive_transfer
execute as @a[scores={p_revive=1..},tag=!BBA] at @s run function mizsummer:pick_revive
execute as @a[scores={p_revive=1..},tag=BBA] at @s run function mizsummer:bbapick_revive
effect give @a saturation 1000000 2 true

execute as @a[scores={d_limeglass=1..}] at @s run function mizsummer:settings/bbaselect_leave
execute as @a[scores={d_redglass=1..}] at @s run function mizsummer:settings/bbaselect_spectate
execute as @a[scores={d_grayglass=1..}] at @s run function mizsummer:settings/bbaselect_join

execute as @a[scores={d_barrier=1..}] run give @s carrot_on_a_stick{display:{Name:'{"text":"結界のお札","color":"light_purple"}',Lore:['{"text":"使用すると結界を10秒間展開する。結界はターボばばあからの攻撃を防ぐ。"}','{"text":"効果中にターボばばあから攻撃されると、ターボばばあを短時間スタンさせる。"}','{"text":"<使い捨て>"}']}} 1
execute as @a[scores={d_invisible=1..}] run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"認識阻害のお札","color":"gold"}',Lore:['{"text":"使用すると10秒間透明化する。"}','{"text":"効果中でもターボばばあに攻撃されると捕まってしまう。"}','{"text":"<使い捨て>"}']}} 1
scoreboard players reset @a d_barrier
scoreboard players reset @a d_invisible

execute as @a[scores={get_revive=1..},tag=!BBA] at @s run function mizsummer:revive
execute as @e[tag=revive] at @s run particle minecraft:dust 100 100 100 0.8 ~ ~1 ~ 1 1 1 0.01 5 force @a[distance=..25,tag=!BBA]
