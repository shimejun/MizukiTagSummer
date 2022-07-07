#脱出可能から常時実行
execute as @e[tag=master] at @s if entity @s[scores={timelimit=1..}] store result bossbar minecraft:time2 value run scoreboard players get @s timelimit

execute if entity @e[tag=playing,scores={timelimit=0}] run function mizsummer:game_end

scoreboard players set @e[tag=playing] revive_respawntime_count 0