execute store result score #sold shop run clear @s minecraft:iron_nugget[custom_data={nexoria_item:"rusted_iron"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 8
execute if score #sold shop matches 1.. run tellraw @s {"text":"錆びた鉄片を1個売却しました。（+8G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"錆びた鉄片を持っていません。","color":"red"}
