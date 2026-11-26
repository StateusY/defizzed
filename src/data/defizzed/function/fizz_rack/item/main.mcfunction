execute if score @s cnk.item_count matches 4.. run return run function defizzed:fizz_rack/mix/main
swing @p[tag=defizzed.interact_fizz_rack,distance=..20] mainhand

scoreboard players set $hand_place cnk.dummy 1

scoreboard players operation $global cnk.item_count = @s cnk.item_count
execute summon minecraft:item_display at @s run function defizzed:fizz_rack/item/place
scoreboard players operation @s cnk.item_count = $global cnk.item_count