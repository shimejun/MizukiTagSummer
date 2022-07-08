#非ゲーム時も常時実行 advancementとかでなるだけ少なくしたい
execute as @e[tag=playing] at @s run function mizsummer:ingame
execute as @a[scores={d_revive=1..}] at @s run function mizsummer:revive_transfer
execute as @a[scores={p_revive=1..},tag=!BBA] at @s run function mizsummer:pick_revive
execute as @a[scores={p_revive=1..},tag=BBA] at @s run function mizsummer:bbapick_revive
effect give @a saturation 1000000 2 true

execute as @a[scores={d_limeglass=1..}] at @s run function mizsummer:settings/bbaselect_leave
execute as @a[scores={d_redglass=1..}] at @s run function mizsummer:settings/bbaselect_spectate
execute as @a[scores={d_grayglass=1..}] at @s run function mizsummer:settings/bbaselect_join

execute as @a[scores={d_barrier=1..}] at @s run function mizsummer:d_barrier 
execute as @a[scores={d_invisible=1..}] at @s run function mizsummer:d_invisible
