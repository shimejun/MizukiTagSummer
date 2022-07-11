#ゲーム中常時実行
#ゲーム内スコア増加
execute as @e[tag=playing] run scoreboard players add @s gametime 1
scoreboard players add @e[tag=master] revive_respawntime_count 1

#ボスバー編集
execute as @e[tag=playing,scores={gametime=..0}] run bossbar set minecraft:time1 name [{"text":"ゲーム開始中…","color":"white"}]
execute as @e[tag=playing,scores={gametime=0..}] run bossbar set minecraft:time1 name [{"text":"ターボばばあから逃げろ | 脱出可能まで：","color":"green"},{"score":{"name":"@s","objective":"sec"},"bold":true,"color":"red"},{"text":"秒","color":"red"}]
execute as @e[tag=playing,scores={timelimit=0..}] run bossbar set minecraft:time2 name [{"text":"脱出可能 | 残り時間：","color":"green"},{"score":{"name":"@s","objective":"sec2"},"bold":true,"color":"red"},{"text":"秒","color":"red"}]
execute as @e[tag=master] at @s if score @s gametime < @s gametime_limit store result bossbar minecraft:time1 value run scoreboard players get @s gametime

#ゲーム中のイベント 復活のお札召喚、脱出可能以降
execute as @e[tag=playing] if score @s revive_respawntime = @s revive_respawntime_count run function mizsummer:revive_spawn
execute as @e[tag=playing] at @s if score @s gametime = @s gametime_limit run function mizsummer:timelimit
execute as @e[tag=playing] at @s if score @s gametime >= @s gametime_limit run function mizsummer:intimelimit
execute if entity @e[tag=playing,tag=timelimit] at @s run scoreboard players remove @s timelimit 1
execute as @a[scores={get_revive=1..},tag=!BBA] at @s run function mizsummer:revive

#プレイヤーのステータス表示、多分重いから消してもいい
execute as @a[tag=!BBA,nbt=!{ActiveEffects:[{Id:11b},{Id:14b}]},scores={lives=0..},gamemode=!spectator] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"異常なし   ","color":"white"},{"text":"残機：","color":"gold"},{"score":{"name":"@s","objective":"lives"},"color": "aqua"}]
execute as @a[tag=!BBA,nbt={ActiveEffects:[{Id:11b}]},scores={lives=0..}] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"結界有効   ","color":"green"},{"text":"残機：","color":"gold"},{"score":{"name":"@s","objective":"lives"},"color": "aqua"}]
execute as @a[tag=!BBA,nbt={ActiveEffects:[{Id:14b}]},scores={lives=0..}] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"認識阻害有効   ","color":"green"},{"text":"残機：","color":"gold"},{"score":{"name":"@s","objective":"lives"},"color": "aqua"}]
execute as @a[tag=!BBA,nbt={ActiveEffects:[{Id:11b},{Id:14b}]},scores={lives=0..}] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"結界・認識阻害有効   ","color":"green"},{"text":"残機：","color":"gold"},{"score":{"name":"@s","objective":"lives"},"color": "aqua"}]
execute as @a[tag=!BBA,tag=dead] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"捕獲済","color":"dark_red","bold":true}]
execute as @a[tag=spectate] at @s run title @s actionbar [{"text":"ステータス：","color":"gold"},{"text":"観戦中","color":"green"}]
execute as @a[tag=BBA] at @s run title @s actionbar [{"text":"捕まえた回数：","color":"gold"},{"score":{"name":"@s","objective":"catch_count"},"color": "aqua"},{"text":"回     ","color":"aqua"}]

#アイテム使用
execute as @a[scores={barrier=1..},tag=!barrier] run function mizsummer:barrier
execute as @a[scores={barrier=1..},tag=barrier] run function mizsummer:nobarrier
execute as @a[scores={invisible=1..},tag=!invisible] run function mizsummer:invisible
execute as @a[scores={invisible=1..},tag=invisible] run function mizsummer:noinvisible
execute as @a[nbt={ActiveEffects:[{Id:11b}]}] at @s unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] run particle minecraft:dust 1 1 0 1 ~ ~0.5 ~ 0.5 1 0.5 0 7 force @a[distance=..25]
execute as @a[nbt=!{ActiveEffects:[{Id:11b}]}] at @s run tag @s remove barrier
execute as @a[nbt=!{ActiveEffects:[{Id:14b}]}] at @s run tag @s remove invisible
execute unless entity @a[tag=barrier] run tp @e[tag=shield] 0 -200 0
execute as @e[tag=shield] at @p[tag=barrier,limit=1] run tp @s ~ ~0.5 ~

#逃走者人数0名を検知
execute unless entity @a[tag=escape] run function mizsummer:game_end

#ゴール検知
execute as @a[tag=escape] at @s if entity @e[distance=..1,tag=goalpoint] run function mizsummer:goal

#心音
execute as @a[tag=BBA] at @s run execute as @a[tag=!BBA,distance=55..70] at @s run scoreboard players add @s beat 1
execute as @a[tag=BBA] at @s run execute as @a[tag=!BBA,distance=30..54] at @s run scoreboard players add @s beat 2
execute as @a[tag=BBA] at @s run execute as @a[tag=!BBA,distance=15..29] at @s run scoreboard players add @s beat 4
execute as @a[tag=BBA] at @s run execute as @a[tag=!BBA,distance=..14] at @s run scoreboard players add @s beat 6
execute as @a[tag=!BBA] at @s if entity @a[tag=BBA,distance=70..] run scoreboard players set @s beat 0
scoreboard players set @a[gamemode=!adventure] beat 0
execute as @a[tag=!BBA,scores={beat=24..}] at @s run function mizsummer:beatsound

#鬼の各種アクション
execute as @a[tag=BBA,scores={jump=1..}] at @s run function mizsummer:bba_jump
execute as @a[tag=BBA,scores={dash=1..}] at @s run particle minecraft:explosion ~ ~0.2 ~ 0.3 0.1 0.3 0 5 force @a[distance=..40]
scoreboard players set @a dash 0

#見た目の部分
execute as @e[tag=revive] at @s run particle minecraft:dust 100 100 100 0.8 ~ ~1 ~ 1 1 1 0.01 5 force @a[distance=..25,tag=escape]
