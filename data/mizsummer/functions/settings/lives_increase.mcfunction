scoreboard players add @e[tag=master] startlives 1
tellraw @a [{"text":"逃走者の初期残機：","color":"gold"},{"score":{"name":"@e[tag=master,limit=1]","objective":"startlives"},"color":"green","bold":true}]