# increment number of items held
scoreboard players add $global cnk.item_count 1

# set location and item of held item
execute if score $global cnk.item_count matches ..1 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,-0.1f,1f],right_rotation:[0.0f,0.0f,0.5f,1f],scale:[0.4f,0.4f,0.4f],translation:[0f,0.6f,-0.1f]},Tags:["defizzed.fizz_plush_item","defizzed.fizz_plush_1"]}
item replace entity @s contents from entity @p[tag=defizzed.interact_fizz_plush] weapon.mainhand
execute at @s rotated as @n[type=minecraft:item_display,tag=defizzed.fizz_plush] run tp @s ~ ~ ~ ~ ~
ride @s mount @n[type=minecraft:item_display,tag=defizzed.fizz_plush]

# SFX
playsound defizzed:item.plush.squeak block @a ~ ~ ~ 1 1

# remove the item from the player
item modify entity @p[tag=defizzed.interact_fizz_plush] weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}