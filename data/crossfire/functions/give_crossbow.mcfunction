# Green team
execute if score @s wins matches ..9 if entity @s[team=green] run replaceitem entity @s container.3 crossbow{CustomModelData:1,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 10..19 if entity @s[team=green] run replaceitem entity @s container.3 crossbow{CustomModelData:13,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 20..29 if entity @s[team=green] run replaceitem entity @s container.3 crossbow{CustomModelData:5,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 30.. if entity @s[team=green] run replaceitem entity @s container.3 crossbow{CustomModelData:9,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1

# Red team
execute if score @s wins matches ..9 if entity @s[team=red] run replaceitem entity @s container.3 crossbow{CustomModelData:2,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 10..19 if entity @s[team=red] run replaceitem entity @s container.3 crossbow{CustomModelData:14,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 20..29 if entity @s[team=red] run replaceitem entity @s container.3 crossbow{CustomModelData:6,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 30.. if entity @s[team=red] run replaceitem entity @s container.3 crossbow{CustomModelData:10,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1

# Yellow team
execute if score @s wins matches ..9 if entity @s[team=yellow] run replaceitem entity @s container.3 crossbow{CustomModelData:4,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 10..19 if entity @s[team=yellow] run replaceitem entity @s container.3 crossbow{CustomModelData:16,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 20..29 if entity @s[team=yellow] run replaceitem entity @s container.3 crossbow{CustomModelData:8,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 30.. if entity @s[team=yellow] run replaceitem entity @s container.3 crossbow{CustomModelData:12,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1

# Blue team
execute if score @s wins matches ..9 if entity @s[team=blue] run replaceitem entity @s container.3 crossbow{CustomModelData:3,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 10..19 if entity @s[team=blue] run replaceitem entity @s container.3 crossbow{CustomModelData:15,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 20..29 if entity @s[team=blue] run replaceitem entity @s container.3 crossbow{CustomModelData:7,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1
execute if score @s wins matches 30.. if entity @s[team=blue] run replaceitem entity @s container.3 crossbow{CustomModelData:11,HideFlags:63,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1,Enchantments:[{id:piercing,lvl:10}]} 1

# Reset some variables
scoreboard players set @s isreloading 0
scoreboard players set @s timer 0
playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 0.4 1