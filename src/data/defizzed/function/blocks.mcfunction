
execute if entity @s[tag=defizzed.fizz_head] run function defizzed:fizz_head/tick

# thats right im lazy and im just putting the fizz death table tick right here and you cant stop me

execute at @a as @n[type=minecraft:villager,tag=cnk.fizz_trader,tag=!defizzed.fizz_death_table,tag=!cnk.fizz_whistled,distance=..100, limit=30] run function defizzed:fizz_head/tag_death_table