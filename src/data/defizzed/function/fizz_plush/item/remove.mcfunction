# SFX
playsound defizzed:item.plush.squeak block @a ~ ~ ~ 1 1

# drop the item [depends on if it has components of not]
execute if data entity @s item.components run function defizzed:fizz_plush/item/item_macro_components with entity @s item
execute unless data entity @s item.components run function defizzed:fizz_plush/item/item_macro with entity @s item

# kill item display
kill @s