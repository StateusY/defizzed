# FROM defizzed:fizz_plush/place/land

# on wall
execute as d76668a3-267e-4725-a781-fa6ac8f102ac at @s if block ~ ~-0.1 ~ #defizzed:ignore_collision run tp ~ ~-0.2 ~
execute unless block ~ ~ ~0.15 #defizzed:ignore_collision run return run data modify storage cnk:temp rotation set value 180
execute unless block ~ ~ ~-0.15 #defizzed:ignore_collision run return run data modify storage cnk:temp rotation set value 0
execute unless block ~0.15 ~ ~ #defizzed:ignore_collision run return run data modify storage cnk:temp rotation set value 90
execute unless block ~-0.15 ~ ~ #defizzed:ignore_collision run return run data modify storage cnk:temp rotation set value 270

# on ceiling
data modify storage cnk:temp plush_height set value 0.2
data modify storage cnk:temp plush_shift set value 0.3
execute as d76668a3-267e-4725-a781-fa6ac8f102ac at @s if block ~ ~-0.1 ~ #defizzed:ignore_collision run tp ~ ~0.1 ~
execute store result score $random cnk.dummy run random value 1..259
execute store result storage cnk:temp rotation int 1 run scoreboard players get $random cnk.dummy
data modify storage cnk:temp rotation_y set value 180
# data modify storage cnk:temp plush_width set value 0.75
