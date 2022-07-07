execute as @a[tag=!BBA] at @s run attribute @s generic.movement_speed base set 0.3
tellraw @a [{"text":"逃走者の移動速度：","color":"gold"},{"text":"300%","color":"green","bold":true}]