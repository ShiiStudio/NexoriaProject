execute store result score #sold shop run clear @s minecraft:iron_boots[custom_data={nexoria_armor:"captain_shop_boots"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 210
execute if score #sold shop matches 1.. run tellraw @s {"text":"隊長のブーツを1個売却しました。（+210G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"隊長のブーツを持っていません。","color":"red"}
