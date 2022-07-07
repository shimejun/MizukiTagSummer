execute as @e[tag=playing] run scoreboard players add @s gametime 1
scoreboard players add @e[tag=master] revive_respawntime_count 1

#ゲーム開始処理
execute if entity @e[tag=playing,scores={gametime=0}] run function mizsummer:time0

#ゲーム開始前の処理、気が向いたら最適化する
execute as @e[tag=playing,scores={gametime=..0}] run bossbar set minecraft:time1 name [{"text":"ゲーム開始中…","color":"white"}]
execute as @e[tag=playing,scores={gametime=0..}] run bossbar set minecraft:time1 name [{"text":"ターボばばあから逃げろ | 脱出可能まで：","color":"green"},{"score":{"name":"@s","objective":"sec"},"bold":true,"color":"red"},{"text":"秒","color":"red"}]
execute as @e[tag=playing,scores={timelimit=0..}] run bossbar set minecraft:time2 name [{"text":"脱出可能 | 残り時間：","color":"green"},{"score":{"name":"@s","objective":"sec2"},"bold":true,"color":"red"},{"text":"秒","color":"red"}]

#ゲーム中のイベント(復活のお札召喚、脱出可能以降のingameファンクション)
execute as @e[tag=playing] if score @s revive_respawntime = @s revive_respawntime_count run function mizsummer:revive_spawn
execute as @e[tag=playing] at @s if score @s gametime = @s gametime_limit run function mizsummer:timelimit
execute as @e[tag=playing] at @s if score @s gametime >= @s gametime_limit run function mizsummer:intimelimit
execute if entity @e[tag=playing,tag=timelimit] at @s run scoreboard players remove @s timelimit 1

#プレイヤーのステータス表示、多分重いから消してもいい
execute as @a[tag=!BBA,nbt=!{ActiveEffects:[{Id:11b},{Id:14b}]},scores={lives=0..},gamemode=!spectator] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"異常なし   ","color":"white"},{"text":"残機：","color":"gold"},{"score":{"name":"@s","objective":"lives"},"color": "aqua"}]
execute as @a[tag=!BBA,nbt={ActiveEffects:[{Id:11b}]},scores={lives=0..}] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"結界有効   ","color":"green"},{"text":"残機：","color":"gold"},{"score":{"name":"@s","objective":"lives"},"color": "aqua"}]
execute as @a[tag=!BBA,nbt={ActiveEffects:[{Id:14b}]},scores={lives=0..}] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"認識阻害有効   ","color":"green"},{"text":"残機：","color":"gold"},{"score":{"name":"@s","objective":"lives"},"color": "aqua"}]
execute as @a[tag=!BBA,nbt={ActiveEffects:[{Id:11b},{Id:14b}]},scores={lives=0..}] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"結界・認識阻害有効   ","color":"green"},{"text":"残機：","color":"gold"},{"score":{"name":"@s","objective":"lives"},"color": "aqua"}]
execute as @a[tag=!BBA,tag=dead] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"捕獲済","color":"dark_red","bold":true}]
execute as @a[tag=spectate] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"観戦中","color":"green"}]
execute as @a[tag=BBA] at @s run title @s actionbar [{"text":"捕まえた回数：","color":"gold"},{"score":{"name":"@s","objective":"catch_count"},"color": "aqua"},{"text":"回     ","color":"aqua"}]

#アイテム使用の処理、どーにかadvancementにできないかなぁ…
execute as @a[scores={barrier=1..}] run function mizsummer:barrier
execute as @a[scores={invisible=1..}] run function mizsummer:invisible
execute as @a[nbt={ActiveEffects:[{Id:11b}]}] at @s unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] run particle minecraft:dust 1 1 0 1 ~ ~0.5 ~ 0.5 1 0.5 0 7 force @a[distance=..25]
execute as @a[nbt=!{ActiveEffects:[{Id:11b}]}] at @s run tag @s remove barrier
execute unless entity @a[tag=barrier] run tp @e[tag=shield] 0 -200 0
execute as @e[tag=shield] at @s run tp @s @p[tag=barrier,limit=1]

#ゲーム終了処理
execute unless entity @a[tag=escape] run function mizsummer:game_end
execute as @a[tag=escape] at @s if entity @e[distance=..1,tag=goalpoint] run function mizsummer:goal

#見た目の部分 改善の余地あり
execute as @a[tag=BBA,scores={dash=1..}] at @s run particle minecraft:explosion ~ ~0.2 ~ 0.3 0.1 0.3 0 5 force @a[distance=..25]
scoreboard players set @a dash 0
execute as @e[tag=master] at @s if score @s gametime < @s gametime_limit store result bossbar minecraft:time1 value run scoreboard players get @s gametime

#心音
execute as @a[tag=BBA] at @s run execute as @a[tag=!BBA,distance=35..50] at @s run scoreboard players add @s beat 1
execute as @a[tag=BBA] at @s run execute as @a[tag=!BBA,distance=20..34] at @s run scoreboard players add @s beat 2
execute as @a[tag=BBA] at @s run execute as @a[tag=!BBA,distance=..19] at @s run scoreboard players add @s beat 4
scoreboard players set @a[gamemode=!adventure] beat 0
execute as @a[tag=!BBA,scores={beat=24..}] at @s run function mizsummer:beatsound
execute if entity @a[tag=BBA,distance=50..] run scoreboard players set @s beat 0

#ばばあのアクション(しょぼんのアクションみたいな)
execute as @a[tag=BBA,scores={jump=1..}] at @s run function mizsummer:bba_jump
