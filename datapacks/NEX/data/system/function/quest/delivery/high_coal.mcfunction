execute store result score #has q_tmp run clear @s minecraft:coal_block[minecraft:custom_data={nexoria_item:"high_coal"}] 0
execute if score #has q_tmp matches 8.. run clear @s minecraft:coal_block[minecraft:custom_data={nexoria_item:"high_coal"}] 8
execute if score #has q_tmp matches 8.. run scoreboard players set @s q_progress 8
execute if score #has q_tmp matches 8.. run function system:quest/check
execute if score #has q_tmp matches 8.. run tellraw @s {"text":"高純度石炭8個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 8.. run tellraw @s {"text":"素材が足りません：高純度石炭8個納品","color":"dark_green"}
function system:quest/npc
