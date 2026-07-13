execute store result score #sold shop run clear @s minecraft:apple[custom_data={nexoria_food:"apple"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 5
execute if score #sold shop matches 1.. run tellraw @s {"text":"りんごを1個売却しました。（+5G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"りんごを持っていません。","color":"red"}
