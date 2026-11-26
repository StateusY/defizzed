scoreboard players add $global cnk.item_count 1
execute if score $global cnk.item_count matches 1 run data merge entity @s {transformation:{left_rotation:[0f,0.7f,0f,1f],right_rotation:[-1f,0.0f,0f,1f],scale:[0.4f,0.4f,0.4f],translation:[-0.1f,-0.42f,0.1f]},Tags:["defizzed.fizz_rack_item","defizzed.fizz_rack_1"],interpolation_duration:6,teleport_duration:6}
execute if score $global cnk.item_count matches 2 run data merge entity @s {transformation:{left_rotation:[0f,1.1f,0f,1f],right_rotation:[-1f,0.2f,-0.2f,1f],scale:[0.4f,0.4f,0.4f],translation:[-0.1f,-0.41f,-0.1f]},Tags:["defizzed.fizz_rack_item","defizzed.fizz_rack_2"],interpolation_duration:6,teleport_duration:6}
execute if score $global cnk.item_count matches 3 run data merge entity @s {transformation:{left_rotation:[0f,0.0f,0f,1f],right_rotation:[-1f,0.2f,0f,1f],scale:[0.4f,0.4f,0.4f],translation:[0.1f,-0.41f,0.1f]},Tags:["defizzed.fizz_rack_item","defizzed.fizz_rack_3"],interpolation_duration:6,teleport_duration:6}
execute if score $global cnk.item_count matches 4 run data merge entity @s {transformation:{left_rotation:[0f,0.95f,0f,1f],right_rotation:[1.15f,-0.2f,-0.1f,1f],scale:[0.4f,0.4f,0.4f],translation:[0.1f,-0.4f,-0.1f]},Tags:["defizzed.fizz_rack_item","defizzed.fizz_rack_4"],interpolation_duration:6,teleport_duration:6}

execute if score $hand_place cnk.dummy matches 1 run item replace entity @s contents from entity @p[tag=defizzed.interact_fizz_rack,distance=..20] weapon.mainhand
execute if score $hand_place cnk.dummy matches 0 run data modify entity @s item set from storage cnk:temp fizz_rack.input

execute at @s rotated as @n[type=minecraft:item_display,tag=defizzed.fizz_rack] run rotate @s ~ ~
ride @s mount @n[type=minecraft:item_display,tag=defizzed.fizz_rack]
playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2

execute if score $hand_place cnk.dummy matches 1 run item modify entity @p[tag=defizzed.interact_fizz_rack,distance=..20] weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}