#逃走者のtagをチェック(結界展開中の場合はブロック、そうでない場合は捕獲の処理を行う)
advancement revoke @s only mizsummer:catch
execute if entity @s[tag=!barrier] run function mizsummer:take
execute if entity @s[tag=barrier] run execute as @a[tag=BBA,sort=nearest,limit=1] at @s run function mizsummer:blocked
