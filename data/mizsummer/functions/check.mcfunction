#ゲーム参加状態を確認
tellraw @s [{"text":"ばばあの抽選に参加中：","color":"green"},{"selector":"@a[tag=bbajoin]","color":"gold"}]
tellraw @s [{"text":"ばばあ抽選参加を拒否中：","color":"red"},{"selector":"@a[tag=!bbajoin,tag=!spectate]","color":"gold"}]
tellraw @s [{"text":"次のゲームを観戦：","color":"gray"},{"selector":"@a[tag=spectate]","color":"gold"}]
