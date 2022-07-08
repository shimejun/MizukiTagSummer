#ゴールで実行
tellraw @a [{"selector":"@s","color":"light_purple","bold":true},{"text":"がターボばばあから逃げ切った！","color":"gold"}]
tag @s remove escape
tag @s add escaped
gamemode spectator @s
team join goal @s
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 1
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1