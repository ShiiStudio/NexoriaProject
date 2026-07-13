execute store result score #sold shop run clear @s minecraft:chainmail_leggings[custom_data={nexoria_armor:"guard_leggings"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 150
execute if score #sold shop matches 1.. run tellraw @s {"text":"衛兵の脚甲を1個売却しました。（+150G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"衛兵の脚甲を持っていません。","color":"red"}
