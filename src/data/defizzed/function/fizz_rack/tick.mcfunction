# FROM defizzed:cnk_hooks/blocks

execute unless block ~ ~ ~ #cnk:air run return run function defizzed:fizz_rack/break/break
execute if score @s cnk.hit_count matches 1.. run return run function defizzed:fizz_rack/break/check