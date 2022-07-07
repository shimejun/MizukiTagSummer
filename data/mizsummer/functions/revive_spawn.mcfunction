execute if entity @e[tag=revive] run tellraw @a[tag=escape] {"text":"未取得の復活のお札の気配が消えた。","color":"red"}
kill @e[tag=revive]
execute as @e[tag=revive_spawnpoint,sort=random,limit=1] at @s run summon villager ~ ~ ~ {Invulnerable:1b,ActiveEffects:[{Id:14b,Duration:2000000,ShowParticles:false}],NoAI:1b,Silent:1b,DeathTime:19,Tags:["revive"]}
execute as @e[tag=revive_spawnpoint_true] at @s run summon villager ~ ~ ~ {Invulnerable:1b,ActiveEffects:[{Id:14b,Duration:2000000,ShowParticles:false}],NoAI:1b,Silent:1b,DeathTime:19,Tags:["revive"]}

tellraw @a[tag=escape] [{"text":"復活のお札が出現した！","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"神社に必ず1つ、各所の祠にランダムで1つ出現します！"}}}]
scoreboard players set @e[tag=master] revive_respawntime_count 0