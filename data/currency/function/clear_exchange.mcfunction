$execute store result score @s currency.exchangedItemCount run clear @s diamond $(exchangeItemCount)
scoreboard players operation @s currency.addBalance = @s currency.exchangedItemCount
scoreboard players operation @s currency.addBalance *= 100 currency.const
scoreboard players operation @s currency.balance += @s currency.addBalance
execute if score @s currency.exchangedItemCount matches 0 run tellraw @s {"text":"Du hast keine Diamanten du broke ass mf.","color":"dark_aqua"}
execute if score @s currency.exchangedItemCount matches 1 run tellraw @s [{"text":"Du hast ","color":"dark_aqua"},{"text":"1","color":"aqua"},{"text":" Diamant gegen ","color":"dark_aqua"},{"text":"100","color":"aqua"},{"text":"","color":"white"},{"text":" (BCAFCoin) ausgetauscht.","color":"dark_aqua"}]
execute if score @s currency.exchangedItemCount matches 2.. run tellraw @s [{"text":"Du hast ","color":"dark_aqua"},{"score":{"name":"@s","objective":"currency.exchangedItemCount"},"color":"aqua"},{"text":" Diamanten gegen ","color":"dark_aqua"},{"score":{"name":"@s","objective":"currency.addBalance"},"color":"aqua"},{"text":"","color":"white"},{"text":" (BCAFCoin) ausgetauscht.","color":"dark_aqua"}]
function currency:get_balance