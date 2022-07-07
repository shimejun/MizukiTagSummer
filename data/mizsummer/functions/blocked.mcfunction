advancement revoke @s only mizsummer:blocked
effect give @s blindness 5 0 true
effect give @s weakness 5 4 true
effect give @s slowness 5 10 true
tellraw @s [{"text":"結界のお札に攻撃が防がれた！","color":"red"}]
playsound minecraft:block.anvil.place block @a ~ ~ ~ 0.5 2
particle minecraft:firework ~ ~ ~ 0 0 0 0.04 100 normal
tp @s ~ ~ ~ facing ~ 80 ~