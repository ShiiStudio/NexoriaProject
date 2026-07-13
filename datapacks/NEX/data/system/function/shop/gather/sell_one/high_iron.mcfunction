execute store result score #sold shop run clear @s minecraft:iron_block[custom_data={nexoria_item:"high_iron"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 40
execute if score #sold shop matches 1.. run tellraw @s {"text":"高純度鉄鉱石を1個売却しました。（+40G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"高純度鉄鉱石を持っていません。","color":"red"}
