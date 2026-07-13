execute store result score #has q_tmp run clear @s minecraft:prismarine_crystals[minecraft:custom_data={nexoria_item:"sea_crystal"}] 0
execute if score #has q_tmp matches 32.. run clear @s minecraft:prismarine_crystals[minecraft:custom_data={nexoria_item:"sea_crystal"}] 32
execute if score #has q_tmp matches 32.. run scoreboard players set @s q_progress 32
execute if score #has q_tmp matches 32.. run function system:quest/check
execute if score #has q_tmp matches 32.. run tellraw @s {"text":"海晶32個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 32.. run tellraw @s {"text":"素材が足りません：海晶32個納品","color":"dark_green"}
function system:quest/npc
