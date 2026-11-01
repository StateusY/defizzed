# FROM defizzed:fizz_plush/place/setup

# floor rotation
execute unless block ~ ~-0.1 ~ #defizzed:ignore_collision store result storage cnk:temp rotation int 1 run scoreboard players get $rotation cnk.dummy

# wall rotation
execute if block ~ ~-0.1 ~ #defizzed:ignore_collision run function defizzed:fizz_plush/place/wall_rotation

# floor snapping
execute unless block ~ ~ ~ #defizzed:ignore_collision unless block ~ ~ ~ #slabs unless block ~ ~ ~ #trapdoors if block ~ ~0.6 ~ #defizzed:ignore_collision align y run tp ~ ~1 ~
# execute unless block ~ ~ ~ #defizzed:ignore_collision align y run tp ~ ~1 ~

# SFX and particles
playsound defizzed:item.plush.squeak neutral @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"defizzed:fizz_plush"}}} ~ ~ ~ 0.15 0.1 0.15 0.1 10

# place plush
execute at d76668a3-267e-4725-a781-fa6ac8f102ac run function defizzed:fizz_plush/macro with storage cnk:temp
