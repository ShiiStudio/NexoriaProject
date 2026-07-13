execute store result score #sold shop run clear @s minecraft:bone[custom_data={nexoria_pet:"velmire_wolf"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 150
execute if score #sold shop matches 1.. run tellraw @s {"text":"Velmireウルフを1個売却しました。（+150G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"Velmireウルフを持っていません。","color":"red"}
