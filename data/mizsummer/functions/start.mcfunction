#ゲーム開始コマンド
#非ゲーム中でも変化する可能性があるスコアをリセット
scoreboard players reset @a jump
scoreboard players reset @a dash
scoreboard players reset @a lives
scoreboard players reset @a catch_count
scoreboard players reset @a get_revive

#ログ
tellraw @a {"text":"ゲームを開始します…","color":"gold"}

#誰かさんが抽選を忘れることがたくさんあったので自動で抽選
execute unless entity @a[tag=BBA] run tellraw @a [{"text":"ばばあが見つからなかったため、ばばあをランダムで選択します…","color":"red"}]
execute unless entity @a[tag=BBA] run function mizsummer:bbapick

#スコア変更
execute if entity @a[tag=BBA] if entity @a[tag=escape] run scoreboard players set @e[tag=master] gametime -180
execute if entity @a[tag=BBA] if entity @a[tag=escape] run tag @e[tag=master] add playing
execute if entity @a[tag=BBA] if entity @a[tag=escape] run scoreboard players operation @a[tag=!BBA] lives = @e[tag=master,limit=1] startlives
execute if entity @a[tag=BBA] if entity @a[tag=escape] run execute store result bossbar minecraft:time1 max run scoreboard players get @e[tag=master,limit=1] gametime_limit
scoreboard players set @e[tag=master] sec 0
scoreboard players set @a catch_count 0
execute if entity @a[tag=BBA] if entity @a[tag=escape] run bossbar set minecraft:time1 players @a

#鬼の移動とエフェクト
tp @a[tag=BBA] @e[tag=bbaspawn,limit=1,sort=random]
effect give @a[tag=BBA] slowness 9 100 true
execute if entity @a[tag=BBA] if entity @a[tag=escape] run attribute @a[tag=BBA,limit=1] generic.movement_speed base set 0.3

#全部終わってゲーム開始
execute if entity @a[tag=BBA] if entity @a[tag=escape] run schedule function mizsummer:ingames/5s 4s