# one basket per person
execute as @a[gamemode=adventure] if entity @s[nbt=!{Inventory:[{id:"minecraft:iron_nugget",Count:1b}]}] run clear @s minecraft:iron_nugget
execute as @a[gamemode=adventure] if entity @s[nbt=!{Inventory:[{id:"minecraft:iron_nugget",Count:1b}]}] run give @s iron_nugget{CanDestroy:["minecraft:sea_pickle"]}

# kill any baskets that were thrown
kill @e[type=item,nbt={Item:{id: "minecraft:iron_nugget"}}]

# remove empty bottles (from honey)
clear @a[gamemode=adventure] minecraft:glass_bottle
