execute unless entity @e[scores={timelimit=1..}] run scoreboard players remove @e[tag=master] sec 1
execute if entity @e[scores={timelimit=1..}] run scoreboard players remove @e[tag=master] sec2 1
schedule function mizsummer:ingames/sec 1s