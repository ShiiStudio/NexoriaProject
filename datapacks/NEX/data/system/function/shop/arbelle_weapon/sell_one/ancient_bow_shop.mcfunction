execute store result score #sold shop run clear @s minecraft:bow[custom_data={nexoria_weapon:"ancient_bow_shop"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 350
execute if score #sold shop matches 1.. run tellraw @s {"text":"古代の弓を1個売却しました。（+350G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"古代の弓を持っていません。","color":"red"}
