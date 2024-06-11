function display:reset with entity @s
tellraw @a [{"selector":"@s"},{"text":" ist nicht mehr AFK.","color":"gray"}]
scoreboard players set @s afk 0
scoreboard players set @s afk.timer 0