execute store result score #sold shop run clear @s minecraft:leather_helmet[custom_data={nexoria_armor:"rookie_helmet"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 40
execute if score #sold shop matches 1.. run tellraw @s {"text":"新兵の兜を1個売却しました。（+40G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"新兵の兜を持っていません。","color":"red"}
