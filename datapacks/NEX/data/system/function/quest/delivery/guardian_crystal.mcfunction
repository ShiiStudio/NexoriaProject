execute store result score #has q_tmp run clear @s minecraft:heart_of_the_sea[minecraft:custom_data={nexoria_item:"guardian_crystal"}] 0
execute if score #has q_tmp matches 8.. run clear @s minecraft:heart_of_the_sea[minecraft:custom_data={nexoria_item:"guardian_crystal"}] 8
execute if score #has q_tmp matches 8.. run scoreboard players set @s q_progress 8
execute if score #has q_tmp matches 8.. run function system:quest/check
execute if score #has q_tmp matches 8.. run tellraw @s {"text":"守護者の海晶8個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 8.. run tellraw @s {"text":"素材が足りません：守護者の海晶8個納品","color":"dark_green"}
function system:quest/npc
