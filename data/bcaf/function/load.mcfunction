scoreboard objectives add bcaf.welcome custom:leave_game
scoreboard objectives add bcaf.welcome_first_join dummy

function bcaf:generated/set_titles

# Statistics tracking
scoreboard objectives add bcaf.stats.deaths deathCount
scoreboard objectives add bcaf.stats.playTime custom:play_time
scoreboard objectives add bcaf.stats.kills playerKillCount
scoreboard objectives add bcaf.stats.mobKills custom:mob_kills
scoreboard objectives add bcaf.stats.flyDistance custom:aviate_one_cm
scoreboard objectives add bcaf.stats.walkDistance custom:walk_one_cm
scoreboard objectives add bcaf.stats.fallDistance custom:fall_one_cm
scoreboard objectives add bcaf.stats.jumps custom:jump
scoreboard objectives add bcaf.stats.bells custom:bell_ring
scoreboard objectives add bcaf.stats.wardenKills killed:warden
scoreboard objectives add bcaf.stats.damageDealt custom:damage_dealt
scoreboard objectives add bcaf.stats.damageTaken custom:damage_taken
scoreboard objectives add bcaf.stats.rocketsUsed used:firework_rocket
scoreboard objectives add bcaf.stats.arson used:flint_and_steel