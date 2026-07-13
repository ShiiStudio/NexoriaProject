execute store result score #sold shop run clear @s minecraft:chainmail_boots[custom_data={nexoria_armor:"guard_boots"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 70
execute if score #sold shop matches 1.. run tellraw @s {"text":"衛兵のブーツを1個売却しました。（+70G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"衛兵のブーツを持っていません。","color":"red"}
