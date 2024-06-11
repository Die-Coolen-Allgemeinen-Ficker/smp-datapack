tellraw @s {"text":"Das Trade Offer ist abgelaufen.","color":"red"}

function display:reset with entity @s

tag @s remove currency.trading
tag @s remove currency.trade_offerer
tag @s remove currency.trade_recipient