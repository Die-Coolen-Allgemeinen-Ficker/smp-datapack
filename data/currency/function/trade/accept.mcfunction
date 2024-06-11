execute unless entity @s[tag=currency.trade_recipient] run return 1

execute if score @s currency.balance < @p[tag=currency.trade_offerer] currency.tradePrice run tellraw @s [{"text":"Du hast nicht genug Geld um zu bezahlen. (","color":"red"},{"score":{"name":"@s","objective":"currency.balance"},"color":"red"},{"text":"","color":"white"},{"text":")","color":"red"}]
execute if score @s currency.balance < @p[tag=currency.trade_offerer] currency.tradePrice run return run function currency:trade/cancel

scoreboard players operation @s currency.balance -= @p[tag=currency.trade_offerer] currency.tradePrice
scoreboard players operation @p[tag=currency.trade_offerer] currency.balance += @p[tag=currency.trade_offerer] currency.tradePrice
execute as @a[tag=currency.trading,sort=nearest,limit=2] run function currency:get_balance

summon item ~ ~0.5 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["currency.sold_item"]}
data modify entity @e[tag=currency.sold_item,sort=nearest,limit=1] Item set from entity @p[tag=currency.trade_offerer] SelectedItem
item replace entity @p[tag=currency.trade_offerer] weapon.mainhand with air

scoreboard players set @a[tag=currency.trading,sort=nearest,limit=2] currency.tradeTimeout -1

function display:reset with entity @s
execute as @p[tag=currency.trade_offerer] run function display:reset with entity @s

tag @a[tag=currency.trading,sort=nearest,limit=2] remove currency.trading
tag @p[tag=currency.trade_offerer] remove currency.trade_offerer
tag @s remove currency.trade_recipient