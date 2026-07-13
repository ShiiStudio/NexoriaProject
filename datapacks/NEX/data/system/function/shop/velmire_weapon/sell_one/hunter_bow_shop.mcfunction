execute store result score #sold shop run clear @s minecraft:bow[custom_data={nexoria_weapon:"hunter_bow_shop"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 90
execute if score #sold shop matches 1.. run tellraw @s {"text":"狩人の弓を1個売却しました。（+90G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"狩人の弓を持っていません。","color":"red"}
