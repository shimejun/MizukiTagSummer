#捕まったら実行
clear @s carrot_on_a_stick
clear @s warped_fungus_on_a_stick
execute if entity @e[tag=master,scores={barrier_cards=1}] run give @s carrot_on_a_stick{display:{Name:'{"text":"結界のお札","color":"light_purple"}',Lore:['{"text":"使用すると結界を10秒間展開する。結界はばばあからの攻撃を防ぐ。"}','{"text":"効果中にばばあから攻撃されると、ばばあを5秒間スタンさせる。結界の使用中はパーティクルが出る。"}','{"text":"<消費アイテム>"}']}} 1
execute if entity @e[tag=master,scores={invisible_cards=1}] run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"認識阻害のお札","color":"gold"}',Lore:['{"text":"使用すると10秒間ばばあから姿を隠す。"}','{"text":"効果中でもターボばばあに攻撃されると捕まってしまう。"}','{"text":"<消費アイテム>"}']}} 1
execute if entity @e[tag=master,scores={barrier_cards=2}] run give @s carrot_on_a_stick{display:{Name:'{"text":"結界のお札","color":"light_purple"}',Lore:['{"text":"使用すると結界を10秒間展開する。結界はばばあからの攻撃を防ぐ。"}','{"text":"効果中にばばあから攻撃されると、ばばあを5秒間スタンさせる。結界の使用中はパーティクルが出る。"}','{"text":"<消費アイテム>"}']}} 2
execute if entity @e[tag=master,scores={invisible_cards=2}] run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"認識阻害のお札","color":"gold"}',Lore:['{"text":"使用すると10秒間ばばあから姿を隠す。"}','{"text":"効果中でもターボばばあに攻撃されると捕まってしまう。"}','{"text":"<消費アイテム>"}']}} 2
execute if entity @e[tag=master,scores={barrier_cards=3}] run give @s carrot_on_a_stick{display:{Name:'{"text":"結界のお札","color":"light_purple"}',Lore:['{"text":"使用すると結界を10秒間展開する。結界はばばあからの攻撃を防ぐ。"}','{"text":"効果中にばばあから攻撃されると、ばばあを5秒間スタンさせる。結界の使用中はパーティクルが出る。"}','{"text":"<消費アイテム>"}']}} 3
execute if entity @e[tag=master,scores={invisible_cards=3}] run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"認識阻害のお札","color":"gold"}',Lore:['{"text":"使用すると10秒間ばばあから姿を隠す。"}','{"text":"効果中でもターボばばあに攻撃されると捕まってしまう。"}','{"text":"<消費アイテム>"}']}} 3
execute if entity @e[tag=master,scores={barrier_cards=4}] run give @s carrot_on_a_stick{display:{Name:'{"text":"結界のお札","color":"light_purple"}',Lore:['{"text":"使用すると結界を10秒間展開する。結界はばばあからの攻撃を防ぐ。"}','{"text":"効果中にばばあから攻撃されると、ばばあを5秒間スタンさせる。結界の使用中はパーティクルが出る。"}','{"text":"<消費アイテム>"}']}} 4
execute if entity @e[tag=master,scores={invisible_cards=4}] run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"認識阻害のお札","color":"gold"}',Lore:['{"text":"使用すると10秒間ばばあから姿を隠す。"}','{"text":"効果中でもターボばばあに攻撃されると捕まってしまう。"}','{"text":"<消費アイテム>"}']}} 4
execute if entity @e[tag=master,scores={barrier_cards=5}] run give @s carrot_on_a_stick{display:{Name:'{"text":"結界のお札","color":"light_purple"}',Lore:['{"text":"使用すると結界を10秒間展開する。結界はばばあからの攻撃を防ぐ。"}','{"text":"効果中にばばあから攻撃されると、ばばあを5秒間スタンさせる。結界の使用中はパーティクルが出る。"}','{"text":"<消費アイテム>"}']}} 5
execute if entity @e[tag=master,scores={invisible_cards=5}] run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"認識阻害のお札","color":"gold"}',Lore:['{"text":"使用すると10秒間ばばあから姿を隠す。"}','{"text":"効果中でもターボばばあに攻撃されると捕まってしまう。"}','{"text":"<消費アイテム>"}']}} 5

effect give @s invisibility 4 0 true
effect give @s weakness 1000000 0 true
tp @s @e[sort=random,limit=1,tag=randomspawn]