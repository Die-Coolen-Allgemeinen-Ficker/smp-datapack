scoreboard players add @s currency.playerFinder 1
execute positioned ~ ~-1 ~ if entity @a[tag=currency.trading,distance=..1] run return 1
execute positioned ~ ~-1 ~ if entity @a[tag=!currency.trading,distance=..1] as @p run return run function currency:trade/init
execute if score @s currency.playerFinder matches 6.. run return 0
execute positioned ^ ^ ^1 rotated as @s run return run function currency:trade/find_player