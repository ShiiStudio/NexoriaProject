execute store result score #sold shop run clear @s minecraft:diamond_boots[custom_data={nexoria_armor:"guardian_shop_boots"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 260
execute if score #sold shop matches 1.. run tellraw @s {"text":"守護者のブーツを1個売却しました。（+260G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"守護者のブーツを持っていません。","color":"red"}
