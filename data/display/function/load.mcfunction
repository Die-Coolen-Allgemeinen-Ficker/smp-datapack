scoreboard objectives add display.name_subtitle dummy
scoreboard objectives modify display.name_subtitle displayname ""
scoreboard objectives modify display.name_subtitle numberformat fixed {"text":" Gast","color":"gray"}
scoreboard objectives setdisplay below_name display.name_subtitle

scoreboard objectives add display.name_tablist dummy
scoreboard objectives modify display.name_tablist numberformat fixed {"text":"Gast","color":"gray"}
scoreboard objectives setdisplay list display.name_tablist