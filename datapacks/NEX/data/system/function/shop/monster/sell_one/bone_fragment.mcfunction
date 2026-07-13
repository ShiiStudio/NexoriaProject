execute store result score #sold shop run clear @s minecraft:bone[custom_data={nexoria_item:"bone_fragment"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 3
execute if score #sold shop matches 1.. run tellraw @s {"text":"骨片を1個売却しました。（+3G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"骨片を持っていません。","color":"red"}
