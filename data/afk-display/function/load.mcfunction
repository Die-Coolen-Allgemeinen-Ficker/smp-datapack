scoreboard objectives add afk.dx dummy
scoreboard objectives add afk.dy dummy
scoreboard objectives add afk.dz dummy
scoreboard objectives add afk.x dummy
scoreboard objectives add afk.y dummy
scoreboard objectives add afk.z dummy

scoreboard objectives add afk.dx_rot dummy
scoreboard objectives add afk.dy_rot dummy
scoreboard objectives add afk.x_rot dummy
scoreboard objectives add afk.y_rot dummy

scoreboard objectives add afk.timer dummy
scoreboard objectives add afk.config dummy
scoreboard players add setup_flag afk.config 0
execute if score setup_flag afk.config matches 0 run function afk-display:default_config

scoreboard objectives add afk trigger