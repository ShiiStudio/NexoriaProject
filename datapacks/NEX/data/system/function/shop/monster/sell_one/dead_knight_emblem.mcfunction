execute store result score #sold shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"dead_knight_emblem"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 100
execute if score #sold shop matches 1.. run tellraw @s {"text":"亡者騎士の紋章を1個売却しました。（+100G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"亡者騎士の紋章を持っていません。","color":"red"}
