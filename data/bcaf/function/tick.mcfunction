execute as @a store success score @s bcaf.welcome_first_join run scoreboard players get @s bcaf.welcome
scoreboard players set @a[scores={bcaf.welcome_first_join=0}] bcaf.welcome 1
scoreboard players set @a[scores={bcaf.welcome_first_join=0}] bcaf.welcome_first_join 1

execute as @a[scores={bcaf.welcome=1..}] run function bcaf:welcome_message