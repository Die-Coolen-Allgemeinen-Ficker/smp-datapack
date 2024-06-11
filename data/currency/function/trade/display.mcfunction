playsound entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.5
playsound bcaf:quieres master @s ~ ~ ~ 1.0 1.0
title @s title {"text":"⚠ TRADE OFFER ⚠","color":"gold"}
$title @s subtitle [{"text":"i receive: ","color":"yellow"},{"score":{"name":"@p[tag=currency.trade_offerer]","objective":"currency.tradePrice"}},{"text":"","color":"white"},{"text":" | you receive: ","color":"yellow"},{"nbt":"SelectedItem.count","entity":"@p[tag=currency.trade_offerer]"},{"text":" "},{"translate":"item.minecraft.$(itemName)","fallback":""},{"translate":"block.minecraft.$(itemName)","fallback":""}]
$tellraw @s [ \
{"text":"⚠ TRADE OFFER ⚠\n","color":"gold"}, \
{"text":"i receive: ","color":"yellow"}, \
{"score":{"name":"@p[tag=currency.trade_offerer]","objective":"currency.tradePrice"},"color":"yellow"}, \
{"text":"","color":"white"}, \
{"text":"\nyou receive: ","color":"yellow"}, \
{"nbt":"SelectedItem.count","entity":"@p[tag=currency.trade_offerer]","color":"yellow"}, \
{"text":" "}, \
{"translate":"item.minecraft.$(itemName)","fallback":"","color":"yellow","underlined":true,"hoverEvent":{"action":"show_item","contents":{"id":"$(itemId)"}}}, \
{"translate":"block.minecraft.$(itemName)","fallback":"","color":"yellow","underlined":true,"hoverEvent":{"action":"show_item","contents":{"id":"$(itemId)"}}}, \
{"text":"\n"}, \
{"text":"Annehmen","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/function currency:trade/accept"}}, \
{"text":" "}, \
{"text":"Ablehnen","color":"red","underlined":true,"clickEvent":{"action":"run_command","value":"/function currency:trade/decline"}} \
]
