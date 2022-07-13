#復活のお札を神社、または祠から手に入れた
summon item ^ ^ ^0.5 {PickupDelay:1,Item:{id:"minecraft:white_dye",Count:1b,tag:{display:{Name:'{"text":"復活のお札","color":"green"}',Lore:['{"text":"ばばあに捕まった時、消費して復活する。"}','{"text":"ドロップすると他の人に譲渡できる。"}','{"text":"<自動消費>","color":"white"}']}}}}
execute as @e[type=item,sort=nearest,limit=1] store result entity @s Item.tag.Unstackable int 1 run time query gametime
scoreboard players add @s lives 1
scoreboard players set @s p_revive -1
tellraw @s {"text":"🌊 復活のお札を獲得した！","color":"green"}
tellraw @a[tag=!BBA] [{"selector":"@s","color":"aqua"},{"text":"が復活のお札を獲得した！","color":"green"}]
kill @e[sort=nearest,limit=1,type=villager,tag=revive]

execute as @a[tag=!BBA] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 2
advancement revoke @s only mizsummer:revive_collect
scoreboard players set @s get_revive 0