execute store result score #sold shop run clear @s minecraft:trial_key[custom_data={nexoria_item:"captain_medal"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 350
execute if score #sold shop matches 1.. run tellraw @s {"text":"隊長の勲章を1個売却しました。（+350G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"隊長の勲章を持っていません。","color":"red"}
