execute store result score #sold shop run clear @s minecraft:bone[custom_data={nexoria_item:"strong_bone"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 18
execute if score #sold shop matches 1.. run tellraw @s {"text":"丈夫な骨を1個売却しました。（+18G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"丈夫な骨を持っていません。","color":"red"}
