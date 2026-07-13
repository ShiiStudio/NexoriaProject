execute store result score #sold shop run clear @s minecraft:prismarine_crystals[custom_data={nexoria_item:"sea_crystal"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 20
execute if score #sold shop matches 1.. run tellraw @s {"text":"海晶を1個売却しました。（+20G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"海晶を持っていません。","color":"red"}
