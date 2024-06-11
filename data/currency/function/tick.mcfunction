execute as @a unless score @s currency.balance matches 0..2147483647 run scoreboard players set @s currency.balance 100

scoreboard players enable @a currency.exchange
scoreboard players enable @a currency.trade
scoreboard players enable @a currency.help
scoreboard players enable @a currency.getBalance
scoreboard players enable @a currency.leaderboard

execute as @a[scores={currency.help=1..}] run function currency:help
execute as @a[scores={currency.exchange=1..}] run function currency:exchange
execute as @a[scores={currency.getBalance=1..}] run function currency:get_balance
execute as @a[scores={currency.leaderboard=1..}] run function currency:leaderboard
execute as @a[scores={currency.trade=1..}] at @s run function currency:trade/offer

scoreboard players remove @a[scores={currency.tradeCooldown=1..}] currency.tradeCooldown 1
scoreboard players remove @a[scores={currency.tradeTimeout=1..}] currency.tradeTimeout 1

execute as @a[tag=currency.trading,scores={currency.tradeTimeout=0}] run function currency:trade/timeout

execute as @a[tag=currency.trade_offerer] run function currency:trade/check_item_change with entity @s
execute as @a[tag=currency.trade_offerer,scores={currency.tradeItemCheck=1}] run function currency:trade/cancel