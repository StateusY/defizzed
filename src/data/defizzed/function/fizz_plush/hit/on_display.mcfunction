# FROM defizzed:fizz_plush/hit/on_interaction

execute on passengers if entity @s[type=minecraft:item_display,tag=defizzed.fizz_plush_item] on vehicle run return run function defizzed:fizz_plush/hit/remove_last

function defizzed:fizz_plush/break/break