execute store result score #sold shop run clear @s minecraft:spruce_log[custom_data={nexoria_item:"spruce_log"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 6
execute if score #sold shop matches 1.. run tellraw @s {"text":"トウヒ原木を1個売却しました。（+6G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"トウヒ原木を持っていません。","color":"red"}
