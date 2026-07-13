execute store result score #sold shop run clear @s minecraft:bow[custom_data={nexoria_weapon:"deep_bow_shop"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 650
execute if score #sold shop matches 1.. run tellraw @s {"text":"深海の弓を1個売却しました。（+650G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"深海の弓を持っていません。","color":"red"}
