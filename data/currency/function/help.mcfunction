tellraw @s [ \
{"text":"BCAFCoin ","color":"dark_aqua"},{"text":"","color":"white"},{"text":" Help\n- ","color":"dark_aqua"}, \
{"text":"/trigger currency.exchange set MENGE","color":"aqua"},{"text":" | Tauscht Anzahl von MENGE an Diamanten in deinem Inventar durch je 100 BCAFCoin aus.\n- ","color":"dark_aqua"}, \
{"text":"/trigger currency.getBalance","color":"aqua"},{"text":" | Zeigt wie viel BCAFCoin du hast.\n- ","color":"dark_aqua"}, \
{"text":"/trigger currency.help","color":"aqua"},{"text":" | Zeigt dieses Menü.\n- ","color":"dark_aqua"}, \
{"text":"/trigger currency.leaderboard","color":"aqua"},{"text":" | Zeigt wie viel BCAFCoin alle Mitglieder haben sortiert nach Menge.\n- ","color":"dark_aqua"}, \
{"text":"/trigger currency.trade set PREIS","color":"aqua"},{"text":" | Schickt ein Trade Offer an einen Spieler der vor dir steht, das angebotene Item ist das Item in deiner Hand und der Preis wird bei PREIS angegeben.","color":"dark_aqua"} \
]
scoreboard players set @s currency.help 0