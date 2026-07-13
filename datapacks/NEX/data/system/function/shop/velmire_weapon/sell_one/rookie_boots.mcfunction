execute store result score #sold shop run clear @s minecraft:leather_boots[custom_data={nexoria_armor:"rookie_boots"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 35
execute if score #sold shop matches 1.. run tellraw @s {"text":"新兵のブーツを1個売却しました。（+35G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"新兵のブーツを持っていません。","color":"red"}
