# Kill the crate
kill @s
particle minecraft:explosion_emitter ~ ~ ~
playsound minecraft:entity.generic.explode block @a ~ ~ ~

# Get a random iron number
# iron result is in X = {0,1.2}
scoreboard players set iron result 0
execute if predicate crossfire:iron_drop run scoreboard players add iron result 1
execute if predicate crossfire:iron_drop run scoreboard players add iron result 1
execute if score iron result matches ..2 if predicate crossfire:iron_drop run scoreboard players add iron result 1

# Inform about powerup drop
execute if score iron result matches 0 run tellraw @a ["",{"text":"The ","color":"white"},{"text":"Swiftness II Potion","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Gives the user the Swiftness II potion effect for 20 seconds.","color":"white"}]}},{"text":" power-up has been dropped by a crate!","color":"white"}]
execute if score iron result matches 1 run tellraw @a ["",{"text":"The ","color":"white"},{"text":"Jump Boost V Potion","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Gives the user the Jump Boost V potion effect for 20 seconds.","color":"white"}]}},{"text":" power-up has been dropped by a crate!","color":"white"}]
execute if score iron result matches 2 run tellraw @a ["",{"text":"The ","color":"white"},{"text":"Slow Falling I Potion","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Gives the user the Slow Falling I potion effect for 20 seconds.","color":"white"}]}},{"text":" power-up has been dropped by a crate!","color":"white"}]

# Summon items
summon minecraft:item ~ ~ ~ {ActiveEffects:[{Id:24,Amplifier:0,Duration:999999}],PickupDelay:0,Age:-32768,Tags:["cleanup"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:20}],CustomPotionColor:10806260,display:{Name:"\"Potion of Swiftness II\""}}}}