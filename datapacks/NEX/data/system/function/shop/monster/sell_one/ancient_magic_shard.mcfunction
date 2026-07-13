execute store result score #sold shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 60
execute if score #sold shop matches 1.. run tellraw @s {"text":"古代の魔力片を1個売却しました。（+60G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"古代の魔力片を持っていません。","color":"red"}
