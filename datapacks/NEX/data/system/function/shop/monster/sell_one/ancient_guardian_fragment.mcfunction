execute store result score #sold shop run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 110
execute if score #sold shop matches 1.. run tellraw @s {"text":"古代守護者の破片を1個売却しました。（+110G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"古代守護者の破片を持っていません。","color":"red"}
