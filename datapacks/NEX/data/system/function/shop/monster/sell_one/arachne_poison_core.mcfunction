execute store result score #sold shop run clear @s minecraft:fermented_spider_eye[custom_data={nexoria_item:"arachne_poison_core"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 380
execute if score #sold shop matches 1.. run tellraw @s {"text":"アラクネの毒核を1個売却しました。（+380G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"アラクネの毒核を持っていません。","color":"red"}
