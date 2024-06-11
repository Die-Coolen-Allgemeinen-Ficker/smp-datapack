execute as @a run function afk-display:movement_check
execute as @a[scores={afk.timer=..11999}] if score @s afk.timer >= timer_duration afk.config run function afk-display:set_afk
execute as @a[scores={afk.timer=12000..}] if score @s afk.timer matches 0 run function afk-display:unset_afk

scoreboard players enable @a afk
execute as @a[scores={afk.timer=..11999,afk=1..}] run function afk-display:set_afk
execute as @a[scores={afk.timer=12000..,afk=1..}] run function afk-display:unset_afk