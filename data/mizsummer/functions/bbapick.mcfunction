execute if entity @a[tag=BBA] at @s run tellraw @s [{"text":"既にばばあが存在しているため、抽選できません。","color":"red"}]
execute if entity @a[tag=BBA] at @s run tellraw @s [{"text":"[ばばあをリセット&再抽選]","hoverEvent": {"action":"show_text","value":{"text":"/function mizsummer:repick"}},"clickEvent":{"action":"run_command","value":"/function mizsummer:repick"}}]
execute unless entity @a[tag=BBA] as @a[tag=bbajoin,sort=random,limit=1] at @s run function mizsummer:bbapicked
