tellraw @a[tag=currency.trading,sort=nearest,limit=2] {"text":"Das Trade Offer wurde abgebrochen.","color":"red"}
scoreboard players set @a[tag=currency.trading,sort=nearest,limit=2] currency.tradeTimeout -1

function display:reset with entity @s
execute as @p[tag=currency.trade_recipient] run function display:reset with entity @s

tag @a[tag=currency.trading,sort=nearest,limit=2] remove currency.trading
tag @p[tag=currency.trade_offerer] remove currency.trade_offerer
tag @s remove currency.trade_recipient