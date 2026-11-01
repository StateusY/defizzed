# FROM defizzed:fizz_plush/place/setup

# remove item from player
item modify entity @s weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}

# floor rotation
data modify storage cnk:temp rotation set value 0
data modify storage cnk:temp rotation_y set value 0
data modify storage cnk:temp plush_height set value 0.6
data modify storage cnk:temp plush_shift set value 0.5
execute store result score $rotation cnk.dummy run data get entity @s Rotation[0]
scoreboard players operation $rotation cnk.dummy += $constant cnk.dummy
execute store result storage cnk:temp rotation int 1 run scoreboard players get $rotation cnk.dummy

# wall rotation
execute if block ~ ~-0.1 ~ #defizzed:ignore_collision run function defizzed:fizz_plush/place/wall_rotation

# floor snapping
execute at d76668a3-267e-4725-a781-fa6ac8f102ac unless block ~ ~-0.1 ~ #defizzed:ignore_collision align y run tp d76668a3-267e-4725-a781-fa6ac8f102ac ~ ~ ~
execute at d76668a3-267e-4725-a781-fa6ac8f102ac unless block ~ ~ ~ #defizzed:ignore_collision run tp d76668a3-267e-4725-a781-fa6ac8f102ac ~ ~1 ~
execute at d76668a3-267e-4725-a781-fa6ac8f102ac unless block ~ ~ ~ #defizzed:ignore_collision run tp d76668a3-267e-4725-a781-fa6ac8f102ac ~ ~1 ~
execute at d76668a3-267e-4725-a781-fa6ac8f102ac unless block ~ ~ ~ #defizzed:ignore_collision run tp d76668a3-267e-4725-a781-fa6ac8f102ac ~ ~1 ~

# SFX and particles
playsound defizzed:item.plush.squeak neutral @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"defizzed:fizz_plush"}}} ~ ~ ~ 0.15 0.1 0.15 0.1 10

# place plush
execute at d76668a3-267e-4725-a781-fa6ac8f102ac run function defizzed:fizz_plush/macro with storage cnk:temp
