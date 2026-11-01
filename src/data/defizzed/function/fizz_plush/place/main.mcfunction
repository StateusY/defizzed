# From defizzed:tick

# reset drop_fizz score
scoreboard players set @s defizzed.place_plush 0

# if shifting, throw as normal
execute if entity @s[predicate=cnk:sneaking] run return 0

# check to see if the player is holding the plush
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{defizzed:{id:"fizz_plush"}}] run function defizzed:fizz_plush/place/setup

