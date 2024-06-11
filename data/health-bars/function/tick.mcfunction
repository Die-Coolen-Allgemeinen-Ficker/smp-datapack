execute as @a[nbt={HurtTime:10s}] run scoreboard players set @s hb.hurt_cooldown 100
execute as @a[nbt={HurtTime:10s}] run team join hb.red @s
execute as @a[nbt={HurtTime:1s}] run team leave @s
scoreboard players remove @a[scores={hb.hurt_cooldown=1..}] hb.hurt_cooldown 1
execute as @a[scores={hb.hurt_cooldown=1..}] run function health-bars:health-bar/update