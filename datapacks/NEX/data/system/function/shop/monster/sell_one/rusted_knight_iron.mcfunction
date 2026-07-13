execute store result score #sold shop run clear @s minecraft:iron_nugget[custom_data={nexoria_item:"rusted_knight_iron"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 35
execute if score #sold shop matches 1.. run tellraw @s {"text":"朽ちた騎士の鉄片を1個売却しました。（+35G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"朽ちた騎士の鉄片を持っていません。","color":"red"}
