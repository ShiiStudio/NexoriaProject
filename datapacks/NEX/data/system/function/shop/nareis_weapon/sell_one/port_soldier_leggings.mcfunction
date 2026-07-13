execute store result score #sold shop run clear @s minecraft:iron_leggings[custom_data={nexoria_armor:"port_soldier_leggings"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 250
execute if score #sold shop matches 1.. run tellraw @s {"text":"港兵の脚甲を1個売却しました。（+250G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"港兵の脚甲を持っていません。","color":"red"}
