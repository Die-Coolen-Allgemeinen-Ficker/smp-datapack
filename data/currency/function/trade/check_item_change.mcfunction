execute unless data entity @s SelectedItem run scoreboard players set @s currency.tradeItemCheck 1
$execute if data entity @s SelectedItem store success score @s currency.tradeItemCheck run data modify storage currency:trade "$(UUID)".item set from entity @s SelectedItem