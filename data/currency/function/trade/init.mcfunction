tag @s add currency.trade_recipient
tag @s add currency.trading
scoreboard players set @s currency.tradeTimeout 400
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.5
scoreboard players display numberformat @s display.name_subtitle fixed {"text":" Trading...","color":"gold"}
return 2