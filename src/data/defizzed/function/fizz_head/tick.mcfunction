execute unless block ~ ~ ~ minecraft:player_head{profile:{"texture":"cnk:block/transparent_head"},note_block_sound:"minecraft:entity.frog.ambient"} unless block ~ ~ ~ minecraft:player_wall_head{profile:{"texture":"cnk:block/transparent_head"},note_block_sound:"minecraft:entity.frog.ambient"} run function defizzed:fizz_head/break

# execute unless block ~ ~ ~ minecraft:player_head[powered=true] unless block ~ ~ ~ player_wall_head[powered=true] run tag @s add defizzed.powered
execute if block ~ ~ ~ minecraft:player_head[powered=true] run return run tag @s add defizzed.powered
execute if block ~ ~ ~ player_wall_head[powered=true] run return run tag @s add defizzed.powered
tag @s remove defizzed.powered