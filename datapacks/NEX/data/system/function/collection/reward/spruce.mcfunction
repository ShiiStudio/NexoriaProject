give @a[distance=..5] minecraft:spruce_log[custom_name='{"text":"トウヒ原木","color":"green","italic":false}',custom_data={nexoria_item:"spruce_log"}] 1

execute store result score #rng collection_rng run random value 1..100
execute if score #rng collection_rng matches 1..50 run give @a[distance=..5] minecraft:paper[custom_name='{"text":"トウヒ樹皮","color":"blue","italic":false}',custom_data={nexoria_item:"spruce_bark"}] 1
tellraw @a[distance=..5] [{"text":"トウヒ原木+1","color":"green"}]
execute if score #rng collection_rng matches ..50 run tellraw @a[distance=..5] [{"text":"トウヒ樹皮+1","color":"blue"}]