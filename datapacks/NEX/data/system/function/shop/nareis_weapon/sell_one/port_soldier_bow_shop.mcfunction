execute store result score #sold shop run clear @s minecraft:bow[custom_data={nexoria_weapon:"port_soldier_bow_shop"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 450
execute if score #sold shop matches 1.. run tellraw @s {"text":"港兵の弓を1個売却しました。（+450G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"港兵の弓を持っていません。","color":"red"}
