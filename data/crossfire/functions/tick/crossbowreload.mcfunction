# Kill all dropped crossbows
execute as @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}] run kill @s
# Kill all powerups
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:potion"}}] run kill @s

# Take givecrossbow and reloadcrossbow tags from spectators and admins tag @s remove givecrossbow
execute as @a[tag=givecrossbow] unless entity @s[tag=!spectating,tag=!died,tag=!admin] run tag @s remove givecrossbow
execute as @a[tag=reloadcrossbow] unless entity @s[tag=!spectating,tag=!died,tag=!admin] run tag @s remove reloadcrossbow

# Set `item` to the amount of crossbows the player has
# Give or take crossbow if the player should(n't) have it
execute as @a unless entity @s[tag=!spectating,tag=!died,tag=!admin,tag=givecrossbow] run clear @s[tag=!admin] minecraft:crossbow
execute as @a[tag=!spectating,tag=!died,tag=!admin,tag=givecrossbow] store result score @s item run clear @s[tag=!admin] minecraft:crossbow 0
execute as @a[tag=!spectating,tag=!died,tag=!admin,tag=givecrossbow] if score @s item matches 2.. run clear @s[tag=!admin] minecraft:crossbow
execute as @a[tag=!spectating,tag=!died,tag=!admin,tag=givecrossbow] store result score @s item run clear @s[tag=!admin] minecraft:crossbow 0
execute as @a[tag=!spectating,tag=!died,tag=!admin,tag=givecrossbow] if score @s item matches 0 run replaceitem entity @s container.2 crossbow{HideFlags:63,Charged:0b} 1

# Determine whether or not the player is currently allowed to reload
execute as @a[tag=!spectating,tag=reloadcrossbow,scores={isreloading=..0,respawnshield=..3},tag=!died,tag=!admin,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] run scoreboard players set @s isreloading 1
execute as @a[scores={isreloading=1..},tag=!spectating] unless entity @s[tag=reloadcrossbow,scores={respawnshield=..3},tag=!died,tag=!admin,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] run scoreboard players set @s timer 1
execute as @a[scores={isreloading=1..},tag=!spectating] unless entity @s[tag=reloadcrossbow,scores={respawnshield=..3},tag=!died,tag=!admin,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] run scoreboard players set @s isreloading 0

# Increase timer
execute as @a[scores={isreloading=1..}] run scoreboard players add @s timer 1
# Increase timer further if you have rapid fire
execute as @a[scores={isreloading=1..},predicate=crossfire:has_rapid_fire] run scoreboard players add @s timer 3

# Give reload crossbows during reloading
execute as @a[tag=givecrossbow,scores={timer=1..10}] run replaceitem entity @s container.2 crossbow{CustomModelData:17,HideFlags:63,Charged:0b} 1
execute as @a[tag=givecrossbow,scores={timer=11..20}] run replaceitem entity @s container.2 crossbow{CustomModelData:18,HideFlags:63,Charged:0b} 1
execute as @a[tag=givecrossbow,scores={timer=21..30}] run replaceitem entity @s container.2 crossbow{CustomModelData:19,HideFlags:63,Charged:0b} 1
execute as @a[tag=givecrossbow,scores={timer=31..40}] run replaceitem entity @s container.2 crossbow{CustomModelData:20,HideFlags:63,Charged:0b} 1

# Reload if we may
execute as @a[tag=givecrossbow,tag=!spectating,tag=!died,predicate=!crossfire:has_multishot] at @s run execute as @s if score @s timer matches 40.. run function crossfire:give_crossbow
execute as @a[tag=givecrossbow,tag=!spectating,tag=!died,predicate=crossfire:has_multishot] at @s run execute as @s if score @s timer matches 40.. run function crossfire:give_crossbow_multishot