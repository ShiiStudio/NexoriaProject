execute store result score #sold shop run clear @s minecraft:iron_boots[custom_data={nexoria_armor:"ancient_shop_boots"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 150
execute if score #sold shop matches 1.. run tellraw @s {"text":"古代のブーツを1個売却しました。（+150G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"古代のブーツを持っていません。","color":"red"}
