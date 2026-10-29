kill @s
kill @n[type=minecraft:item,nbt={Item:{components:{"minecraft:profile":{"texture":"cnk:block/transparent_head"},"minecraft:note_block_sound":"minecraft:entity.frog.ambient"}}},distance=..30]

particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"defizzed:fizz_head"}}} ~ ~0.5 ~ 0.3 0.1 0.3 0.1 20
playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 1 2
loot spawn ~ ~ ~ loot defizzed:fizz_head