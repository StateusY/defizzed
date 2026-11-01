# FROM defizzed:fizz_plush/place/setup

tag @s add defizzed.equip_cooldown

# get the custom model data of the item and toggle it
execute store result score $fizz_toggle cnk.dummy run data get entity @s SelectedItem.components."minecraft:custom_model_data".flags[0]
execute if score $fizz_toggle cnk.dummy matches 1 run item modify entity @s contents {"type":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}
execute if score $fizz_toggle cnk.dummy matches 0 run item modify entity @s contents {"type":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}

schedule function defizzed:fizz_plush/equip/equip_cooldown 10t append