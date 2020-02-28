# Enter shooting range
execute as @a[tag=!selected,tag=!shootrange] at @s if block ~ 88 ~ minecraft:red_glazed_terracotta run tag @s add reloadcrossbow
execute as @a[tag=!selected,tag=!shootrange] at @s if block ~ 88 ~ minecraft:red_glazed_terracotta run tag @s add shootrange

# Leave shooting range
execute as @a[tag=!selected,tag=shootrange] at @s if block ~ 88 ~ minecraft:light_blue_glazed_terracotta run clear @s[tag=!admin] minecraft:crossbow
execute as @a[tag=!selected,tag=shootrange] at @s if block ~ 88 ~ minecraft:light_blue_glazed_terracotta run tag @s remove reloadcrossbow
execute as @a[tag=!selected,tag=shootrange] at @s if block ~ 88 ~ minecraft:light_blue_glazed_terracotta run tag @s remove shootrange