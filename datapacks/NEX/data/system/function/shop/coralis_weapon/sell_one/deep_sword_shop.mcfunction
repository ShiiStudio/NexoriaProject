execute store result score #sold shop run clear @s minecraft:diamond_sword[custom_data={nexoria_weapon:"deep_sword_shop"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 600
execute if score #sold shop matches 1.. run tellraw @s {"text":"深海の剣を1個売却しました。（+600G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"深海の剣を持っていません。","color":"red"}
