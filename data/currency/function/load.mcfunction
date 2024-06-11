scoreboard objectives add currency.exchange trigger
scoreboard objectives add currency.trade trigger
scoreboard objectives add currency.help trigger
scoreboard objectives add currency.getBalance trigger
scoreboard objectives add currency.leaderboard trigger

scoreboard objectives add currency.addBalance dummy
scoreboard objectives add currency.exchangedItemCount dummy
scoreboard objectives add currency.balance dummy
scoreboard objectives modify currency.balance displayname [{"text":"< ","color":"dark_aqua"},{"text":"BCAFCoin ","color":"aqua"},{"text":"","color":"white"},{"text":" Leaderboard >","color":"dark_aqua"}]
scoreboard objectives modify currency.balance numberformat styled {"color":"aqua"}
scoreboard objectives setdisplay sidebar.team.dark_aqua currency.balance

scoreboard objectives add currency.playerFinder dummy
scoreboard objectives add currency.tradeCooldown dummy
scoreboard objectives add currency.tradeTimeout dummy
scoreboard objectives add currency.tradePrice dummy
scoreboard objectives add currency.tradeItemCheck dummy

team add currency.see_leaderboard
team modify currency.see_leaderboard color dark_aqua

scoreboard objectives add currency.const dummy
scoreboard players set 100 currency.const 100