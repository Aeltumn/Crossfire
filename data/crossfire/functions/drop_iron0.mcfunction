# Kill the crate
kill @s
particle minecraft:explosion_emitter ~ ~ ~
playsound minecraft:entity.generic.explode block @a[scores={map=0}] ~ ~ ~

# Get a random iron number
# iron result is in X = {0,1,2}
scoreboard players set iron result 0
execute if predicate crossfire:coin_flip run scoreboard players add iron result 1
execute if score iron result matches 0 if predicate crossfire:coin_flip run scoreboard players add iron result 2

# Inform about power-up drop
execute if score iron result matches 0 run tellraw @a[scores={map=0}] ["",{"text":"The ","color":"white"},{"text":"Swiftness II Potion","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Gives the user the Swiftness II potion effect for 20 seconds.","color":"white"}]}},{"text":" power-up has been dropped by a crate!","color":"white"}]
execute if score iron result matches 1 run tellraw @a[scores={map=0}] ["",{"text":"The ","color":"white"},{"text":"Jump Boost V Potion","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Gives the user the Jump Boost V potion effect for 20 seconds.","color":"white"}]}},{"text":" power-up has been dropped by a crate!","color":"white"}]
execute if score iron result matches 2 run tellraw @a[scores={map=0}] ["",{"text":"The ","color":"white"},{"text":"Slow Falling I Potion","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Gives the user the Slow Falling I potion effect for 20 seconds.","color":"white"}]}},{"text":" power-up has been dropped by a crate!","color":"white"}]

# Summon items
execute if score iron result matches 0 run summon minecraft:armor_stand ~ ~ ~ {Tags:["cleanup","sparkling","drop0","drop","0"],Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:400}],CustomPotionColor:10806260}}],Invisible:1}
execute if score iron result matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags:["cleanup","sparkling","drop1","drop","0"],Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:8,Amplifier:4,Duration:400}],CustomPotionColor:1309504,display:{Name:"Potion of Jump Boost V"}}}],Invisible:1}
execute if score iron result matches 2 run summon minecraft:armor_stand ~ ~ ~ {Tags:["cleanup","sparkling","drop2","drop","0"],Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:28,Duration:400}],CustomPotionColor:16777215}}],Invisible:1}