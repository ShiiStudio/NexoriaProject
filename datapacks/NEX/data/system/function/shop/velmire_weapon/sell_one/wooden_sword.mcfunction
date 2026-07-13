execute store result score #sold shop run clear @s minecraft:wooden_sword[custom_data={nexoria_weapon:"wooden_sword"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 25
execute if score #sold shop matches 1.. run tellraw @s {"text":"木の剣を1個売却しました。（+25G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"木の剣を持っていません。","color":"red"}
