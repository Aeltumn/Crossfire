# Kill all dropped crossbows
execute as @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}] run kill @s

# Set `item` to the amount of crossbows the player has
# Give or take crossbow if the player should(n't) have it
execute as @a unless entity @s[tag=!died,tag=!admin,tag=givecrossbow] run clear @s minecraft:crossbow
execute as @a[tag=!died,tag=!admin,tag=givecrossbow] store result score @s item run clear @s minecraft:crossbow 0
execute as @a[tag=!died,tag=!admin,tag=givecrossbow] if score @s item matches 2.. run clear @s minecraft:crossbow
execute as @a[tag=!died,tag=!admin,tag=givecrossbow] store result score @s item run clear @s minecraft:crossbow 0
execute as @a[tag=!died,tag=!admin,tag=givecrossbow] if score @s item matches 0 run give @s minecraft:crossbow{Charged:0b}

# Determine whether or not the player is currently allowed to reload
execute as @a[tag=reloadcrossbow,scores={respawnshield=..3},tag=!died,tag=!admin,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] run scoreboard players set @s isreloading 1
execute as @a unless entity @s[tag=reloadcrossbow,scores={respawnshield=..3},tag=!died,tag=!admin,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] run scoreboard players set @s isreloading 0

# Increase timer (or reset if it shouldn't increase)
execute as @a[scores={isreloading=1..}] run scoreboard players add @s timer 1
execute as @a[scores={isreloading=..0}] run scoreboard players set @s timer 0

# Give reload crossbows during reloading
execute as @a[scores={timer=1..10}] run replaceitem entity @s container.0 crossbow{CustomModelData:17,HideFlags:63,Charged:0b} 1
execute as @a[scores={timer=11..20}] run replaceitem entity @s container.0 crossbow{CustomModelData:18,HideFlags:63,Charged:0b} 1
execute as @a[scores={timer=21..30}] run replaceitem entity @s container.0 crossbow{CustomModelData:19,HideFlags:63,Charged:0b} 1
execute as @a[scores={timer=31..40}] run replaceitem entity @s container.0 crossbow{CustomModelData:20,HideFlags:63,Charged:0b} 1

# Reload if we may
execute as @a[tag=!died] run execute as @s if score @s timer matches 40.. run function crossfire:give_crossbow