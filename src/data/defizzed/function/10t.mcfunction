# runs every 10 ticks

# checks for fizz entites with unmodified loot tables and then modifies them
execute at @a as @n[type=minecraft:villager,tag=cnk.fizz_trader,tag=!defizzed.fizz_death_table,tag=!cnk.fizz_whistled,distance=..100, limit=30] run function defizzed:fizz_head/tag_death_table

schedule function defizzed:10t 10t