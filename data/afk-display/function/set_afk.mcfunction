tellraw @a [{"selector":"@s"},{"text":" ist jetzt AFK.","color":"gray"}]
scoreboard players display numberformat @s display.name_subtitle fixed [{"text":" <","color":"gray"},{"text":"AFK","color":"white"},{"text":">","color":"gray"}]
scoreboard players display numberformat @s display.name_tablist fixed [{"text":"<","color":"gray"},{"text":"AFK","color":"white"},{"text":">","color":"gray"}]
scoreboard players set @s afk.timer 12000
scoreboard players set @s afk 0