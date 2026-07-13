execute store result score #sold shop run clear @s minecraft:iron_helmet[custom_data={nexoria_armor:"guard_helmet"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 80
execute if score #sold shop matches 1.. run tellraw @s {"text":"衛兵の兜を1個売却しました。（+80G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"衛兵の兜を持っていません。","color":"red"}
