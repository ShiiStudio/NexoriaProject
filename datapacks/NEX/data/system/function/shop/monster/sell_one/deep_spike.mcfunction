execute store result score #sold shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"deep_spike"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 50
execute if score #sold shop matches 1.. run tellraw @s {"text":"深海の棘を1個売却しました。（+50G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"深海の棘を持っていません。","color":"red"}
