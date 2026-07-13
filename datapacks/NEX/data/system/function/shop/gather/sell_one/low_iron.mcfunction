execute store result score #sold shop run clear @s minecraft:raw_iron[custom_data={nexoria_item:"low_iron"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 22
execute if score #sold shop matches 1.. run tellraw @s {"text":"低純度鉄鉱石を1個売却しました。（+22G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"低純度鉄鉱石を持っていません。","color":"red"}
