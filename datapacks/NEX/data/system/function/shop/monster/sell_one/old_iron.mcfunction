execute store result score #sold shop run clear @s minecraft:iron_nugget[custom_data={nexoria_item:"old_iron"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 30
execute if score #sold shop matches 1.. run tellraw @s {"text":"古びた鉄片を1個売却しました。（+30G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"古びた鉄片を持っていません。","color":"red"}
