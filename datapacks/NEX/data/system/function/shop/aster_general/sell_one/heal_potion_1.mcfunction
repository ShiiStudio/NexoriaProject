execute store result score #sold shop run clear @s minecraft:potion[custom_data={nexoria_item:"heal_potion_1"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 40
execute if score #sold shop matches 1.. run tellraw @s {"text":"回復ポーション Lv.1を1個売却しました。（+40G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"回復ポーション Lv.1を持っていません。","color":"red"}
