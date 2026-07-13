give @a[distance=..5] minecraft:coal[custom_name='{"text":"低純度石炭","color":"green","italic":false}',custom_data={nexoria_item:"low_coal"}] 1

execute store result score #rng collection_rng run random value 1..100
execute if score #rng collection_rng matches 1..50 run give @a[distance=..5] minecraft:coal_block[custom_name='{"text":"高純度石炭","color":"blue","italic":false}',custom_data={nexoria_item:"high_coal"}] 1
tellraw @a[distance=..5] [{"text":"低純度石炭+1","color":"green"}]
execute if score #rng collection_rng matches ..50 run tellraw @a[distance=..5] [{"text":"高純度石炭+1","color":"blue"}]