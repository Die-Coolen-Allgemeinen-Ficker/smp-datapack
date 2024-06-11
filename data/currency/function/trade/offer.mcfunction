scoreboard players operation @s currency.tradePrice = @s currency.trade
scoreboard players set @s currency.trade 0
scoreboard players set @s currency.playerFinder 0
execute if entity @s[tag=currency.trading] run tellraw @s {"text":"Du bist im Moment an einem Trade Offer beteiligt.","color":"red"}
execute if entity @s[tag=currency.trading] run return 1
execute unless data entity @s SelectedItem run tellraw @s {"text":"Du musst ein Item halten.","color":"red"}
execute unless data entity @s SelectedItem run return 1
execute positioned ^ ^1.6 ^1 rotated as @s store result score @s currency.playerFinder run function currency:trade/find_player
execute if score @s currency.playerFinder matches 0 run tellraw @s {"text":"Es wurde kein Spieler gefunden.","color":"red"}
execute if score @s currency.playerFinder matches 1 run tellraw @s [{"selector":"@a[tag=currency.trading,distance=0.1..,limit=1]","color":"red"},{"text":" ist im Moment an einem Trade Offer beteiligt."}]
execute if score @s currency.playerFinder matches 0..1 run return 1

tag @s add currency.trade_offerer
tag @s add currency.trading
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.5
tellraw @s [{"text":"Trade Offer an ","color":"gold"},{"selector":"@a[tag=currency.trade_recipient]","color":"yellow"},{"text":" gesendet."}]
scoreboard players set @s currency.tradeCooldown 1200
scoreboard players set @s currency.tradeTimeout 400
data modify storage currency:offer itemName set string entity @s SelectedItem.id 10
data modify storage currency:offer itemId set from entity @s SelectedItem.id
execute as @p[tag=currency.trade_recipient] run function currency:trade/display with storage currency:offer
function currency:trade/check_item_change with entity @s
scoreboard players display numberformat @s display.name_subtitle fixed {"text":" Trading...","color":"gold"}