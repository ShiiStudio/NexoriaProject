execute store result score #sold shop run clear @s minecraft:netherite_scrap[custom_data={nexoria_item:"dead_knight_soul_fragment"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 420
execute if score #sold shop matches 1.. run tellraw @s {"text":"亡者騎士の魂片を1個売却しました。（+420G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"亡者騎士の魂片を持っていません。","color":"red"}
