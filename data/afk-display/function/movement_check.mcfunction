scoreboard players operation @s afk.dx = @s afk.x
scoreboard players operation @s afk.dy = @s afk.y
scoreboard players operation @s afk.dz = @s afk.z
execute store result score @s afk.x run data get entity @s Pos[0] 10
execute store result score @s afk.y run data get entity @s Pos[1] 10
execute store result score @s afk.z run data get entity @s Pos[2] 10
scoreboard players operation @s afk.dx -= @s afk.x
scoreboard players operation @s afk.dy -= @s afk.y
scoreboard players operation @s afk.dz -= @s afk.z

scoreboard players operation @s afk.dx_rot = @s afk.x_rot
scoreboard players operation @s afk.dy_rot = @s afk.y_rot
execute store result score @s afk.x_rot run data get entity @s Rotation[0] 10
execute store result score @s afk.y_rot run data get entity @s Rotation[1] 10
scoreboard players operation @s afk.dx_rot -= @s afk.x_rot
scoreboard players operation @s afk.dy_rot -= @s afk.y_rot

execute if score @s afk.dx matches 0 if score @s afk.dy matches 0 if score @s afk.dz matches 0 if score @s afk.dx_rot matches 0 if score @s afk.dy_rot matches 0 run scoreboard players add @s afk.timer 1
execute if score @s afk.dx matches 0 if score @s afk.dy matches 0 if score @s afk.dz matches 0 if score @s afk.dx_rot matches 0 if score @s afk.dy_rot matches 0 run return 1
execute if score @s afk.timer matches 12000.. run function afk-display:unset_afk
scoreboard players set @s afk.timer 0