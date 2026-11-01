# FROM defizzed:fizz_plush/place/land

## modify position and roation based on surfaces

execute if block ~ ~-1 ~ #minecraft:trapdoors[half=bottom,open=false] run tp @s ~ ~-0.8125 ~
execute if block ~ ~ ~ #cnk:carpets run tp ~ ~0.0625 ~ 
execute if block ~ ~-1 ~ #minecraft:slabs[type=bottom] run tp @s ~ ~-0.5 ~

# if there is ground below, then face the feet
# execute if entity @p[tag=defizzed.threw_fizz,2]
execute unless block ~ ~-0.25 ~ #defizzed:ignore_collision run return run rotate @s facing entity @p[tag=defizzed.threw_fizz] feet

# if there is a block on the plush's side, face the eyes
rotate @s facing entity @p[tag=defizzed.threw_fizz] eyes