execute store result score #sold shop run clear @s minecraft:bread[custom_data={nexoria_food:"bread"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 10
execute if score #sold shop matches 1.. run tellraw @s {"text":"パンを1個売却しました。（+10G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"パンを持っていません。","color":"red"}
