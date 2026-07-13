execute store result score #sold shop run clear @s minecraft:iron_helmet[custom_data={nexoria_armor:"port_soldier_helmet"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 150
execute if score #sold shop matches 1.. run tellraw @s {"text":"港兵の兜を1個売却しました。（+150G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"港兵の兜を持っていません。","color":"red"}
