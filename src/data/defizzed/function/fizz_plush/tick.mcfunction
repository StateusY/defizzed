# FROM defizzed:blocks

execute if entity @s[tag=cnk.in_partial] run return run function defizzed:fizz_plush/in_partial
execute unless block ~ ~ ~ #defizzed:ignore_collision run return run function defizzed:fizz_plush/break/break