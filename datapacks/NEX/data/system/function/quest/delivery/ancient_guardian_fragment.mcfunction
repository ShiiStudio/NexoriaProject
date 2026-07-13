execute store result score #has q_tmp run clear @s minecraft:amethyst_shard[minecraft:custom_data={nexoria_item:"ancient_guardian_fragment"}] 0
execute if score #has q_tmp matches 5.. run clear @s minecraft:amethyst_shard[minecraft:custom_data={nexoria_item:"ancient_guardian_fragment"}] 5
execute if score #has q_tmp matches 5.. run scoreboard players set @s q_progress 5
execute if score #has q_tmp matches 5.. run function system:quest/check
execute if score #has q_tmp matches 5.. run tellraw @s {"text":"古代守護者の破片5個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 5.. run tellraw @s {"text":"素材が足りません：古代守護者の破片5個納品","color":"dark_green"}
function system:quest/npc
