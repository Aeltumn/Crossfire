execute as @a[tag=joined] at @s if block ~ ~ ~ water run function crossfire:touch_water

execute if score started started matches 1 as @a[tag=died,tag=!waterdead,tag=!spectating] at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.3 0.1 0 3

execute as @a[tag=!died] if score started started matches 1.. as @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}] run data merge entity @s {PickupDelay:0}

execute as @a[tag=died] run clear @s minecraft:crossbow
execute as @a[tag=!died] if score started started matches 1.. run execute as @s store result score @s item run clear @s minecraft:crossbow 0
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s item matches 2.. run clear @s minecraft:crossbow
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s item matches 0 run scoreboard players set @s enabledtimer 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s item matches 0 run give @s minecraft:crossbow

execute as @a[tag=!died] if score started started matches 1.. run execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:0b}}]}] as @s run scoreboard players set @s enabledtimer 1
execute as @a[tag=!died] if entity @s[tag=crossbowreload,scores={respawnshield=..3}] if score started started matches 1.. run execute as @s if score @s enabledtimer matches 1.. run scoreboard players add @s timer 1

execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s timer matches 1..10 run replaceitem entity @s container.0 crossbow{CustomModelData:17,HideFlags:63} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s timer matches 11..20 run replaceitem entity @s container.0 crossbow{CustomModelData:18,HideFlags:63} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s timer matches 21..30 run replaceitem entity @s container.0 crossbow{CustomModelData:19,HideFlags:63} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s timer matches 31..40 run replaceitem entity @s container.0 crossbow{CustomModelData:20,HideFlags:63} 1

execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s timer matches 41..50 run scoreboard players set @s enabledtimer 0
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s timer matches 41..50 run scoreboard players set @s timer 0

execute as @a[tag=!died] as @s if score @s timer matches 40..50 at @s run playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 0.4 1

# Green team
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 0..9 if entity @s[team=green,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:1,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 10..19 if entity @s[team=green,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:13,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 20..29 if entity @s[team=green,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:5,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 30.. if entity @s[team=green,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:9,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1

# Red team
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 0..9 if entity @s[team=red,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:2,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 10..19 if entity @s[team=red,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:14,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 20..29 if entity @s[team=red,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:6,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 30.. if entity @s[team=red,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:10,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1

# Yellow team
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 0..9 if entity @s[team=yellow,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:4,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 10..19 if entity @s[team=yellow,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:16,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 20..29 if entity @s[team=yellow,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:8,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 30.. if entity @s[team=yellow,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:12,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1

# Blue team
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 0..9 if entity @s[team=blue,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:3,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 10..19 if entity @s[team=blue,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:15,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 20..29 if entity @s[team=blue,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:7,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute as @a[tag=!died] if score started started matches 1.. run execute as @s if score @s wins matches 30.. if entity @s[team=blue,tag=!died] if score @s timer matches 40..50 run replaceitem entity @s container.0 crossbow{CustomModelData:11,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1

