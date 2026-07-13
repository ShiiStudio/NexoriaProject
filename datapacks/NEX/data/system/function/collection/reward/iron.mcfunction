give @a[distance=..5] minecraft:raw_iron[custom_name='{"text":"低純度鉄鉱石","color":"green","italic":false}',custom_data={nexoria_item:"low_iron"}] 1

execute store result score #rng collection_rng run random value 1..100
execute if score #rng collection_rng matches 1..50 run give @a[distance=..5] minecraft:iron_block[custom_name='{"text":"高純度鉄鉱石","color":"blue","italic":false}',custom_data={nexoria_item:"high_iron"}] 1
tellraw @a[distance=..5] [{"text":"低純度鉄鉱石+1","color":"green"}]
execute if score #rng collection_rng matches ..50 run tellraw @a[distance=..5] [{"text":"高純度鉄鉱石+1","color":"blue"}]