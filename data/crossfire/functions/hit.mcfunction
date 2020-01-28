# Hit Effect
tag @s add dead

# Firework Colours
execute if entity @s[tag=red] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;11743532]}],Flight:1}}}}
execute if entity @s[tag=yellow] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;14602026]}],Flight:1}}}}
execute if entity @s[tag=green] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;4312372]}],Flight:1}}}}
execute if entity @s[tag=blue] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;6719955]}],Flight:1}}}}

# Send message if you hit someone who was immune
execute if entity @s[tag=red] if @e[limit=1,distance=..3,type=minecraft:player,team=!red,tag=!died,scores={respawnshield=1..}] run title @s actionbar ["",{"text":"You've hit a player that was still respawning!","color":"dark_gray"}]
execute if entity @s[tag=yellow] if @e[limit=1,distance=..3,type=minecraft:player,team=!yellow,tag=!died,scores={respawnshield=1..}] run title @s actionbar ["",{"text":"You've hit a player that was still respawning!","color":"dark_gray"}]
execute if entity @s[tag=green] if @e[limit=1,distance=..3,type=minecraft:player,team=!green,tag=!died,scores={respawnshield=1..}] run title @s actionbar ["",{"text":"You've hit a player that was still respawning!","color":"dark_gray"}]
execute if entity @s[tag=blue] if @e[limit=1,distance=..3,type=minecraft:player,team=!blue,tag=!died,scores={respawnshield=1..}] run title @s actionbar ["",{"text":"You've hit a player that was still respawning!","color":"dark_gray"}]

# Send message if you hit a teammate
execute if entity @s[tag=red] if @e[limit=1,distance=..3,type=minecraft:player,team=red] run title @s actionbar ["",{"text":"Don't attack your teammates!","color":"dark_gray"}]
execute if entity @s[tag=yellow] if @e[limit=1,distance=..3,type=minecraft:player,team=yellow] run title @s actionbar ["",{"text":"Don't attack your teammates!","color":"dark_gray"}]
execute if entity @s[tag=green] if @e[limit=1,distance=..3,type=minecraft:player,team=green] run title @s actionbar ["",{"text":"Don't attack your teammates!","color":"dark_gray"}]
execute if entity @s[tag=blue] if @e[limit=1,distance=..3,type=minecraft:player,team=blue] run title @s actionbar ["",{"text":"Don't attack your teammates!","color":"dark_gray"}]

# Red killscreen
execute if entity @s[tag=red] as @e[distance=..3,type=minecraft:player] if entity @s[team=!red,tag=!died,scores={respawnshield=..0}] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=red] as @e[distance=..3,type=minecraft:player] if entity @s[team=!red,tag=!died,scores={respawnshield=..0}] run title @s title ["",{"text":" \uE006 "},{"text":"Sploded! ","bold":true,"color":"red"},{"text":"\uE006"}]
execute if entity @s[tag=red] as @e[distance=..3,type=minecraft:player] if entity @s[team=!red,tag=!died,scores={respawnshield=..0}] run tag @s add hit

# Yellow killscreen
execute if entity @s[tag=yellow] as @e[distance=..3,type=minecraft:player] if entity @s[team=!yellow,tag=!died,scores={respawnshield=..0}] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=yellow] as @e[distance=..3,type=minecraft:player] if entity @s[team=!yellow,tag=!died,scores={respawnshield=..0}] run title @s title ["",{"text":" \uE007 "},{"text":"Sploded! ","bold":true,"color":"yellow"},{"text":"\uE007"}]
execute if entity @s[tag=yellow] as @e[distance=..3,type=minecraft:player] if entity @s[team=!yellow,tag=!died,scores={respawnshield=..0}] run tag @s add hit

# Green killscreen
execute if entity @s[tag=green] as @e[distance=..3,type=minecraft:player] if entity @s[team=!green,tag=!died,scores={respawnshield=..0}] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=green] as @e[distance=..3,type=minecraft:player] if entity @s[team=!green,tag=!died,scores={respawnshield=..0}] run title @s title ["",{"text":" \uE008 "},{"text":"Sploded! ","bold":true,"color":"green"},{"text":"\uE008"}]
execute if entity @s[tag=green] as @e[distance=..3,type=minecraft:player] if entity @s[team=!green,tag=!died,scores={respawnshield=..0}] run tag @s add hit

# Blue killscreen
execute if entity @s[tag=blue] as @e[distance=..3,type=minecraft:player] if entity @s[team=!blue,tag=!died,scores={respawnshield=..0}] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=blue] as @e[distance=..3,type=minecraft:player] if entity @s[team=!blue,tag=!died,scores={respawnshield=..0}] run title @s title ["",{"text":" \uE005 "},{"text":"Sploded! ","bold":true,"color":"aqua"},{"text":"\uE005"}]
execute if entity @s[tag=blue] as @e[distance=..3,type=minecraft:player] if entity @s[team=!blue,tag=!died,scores={respawnshield=..0}] run tag @s add hit

# Chat message and kill count
execute if entity @s[tag=player1] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player1,limit=1]"}]
execute if entity @s[tag=player1] as @e[tag=hit] run tag @s add spectateplayer1
execute if entity @s[tag=player1] as @e[tag=hit] run scoreboard players add @a[tag=player1] roundKills 1
execute if entity @s[tag=player1] as @e[tag=hit] run scoreboard players add @a[tag=player1] kills 1

execute if entity @s[tag=player2] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player2,limit=1]"}]
execute if entity @s[tag=player2] as @e[tag=hit] run tag @s add spectateplayer2
execute if entity @s[tag=player2] as @e[tag=hit] run scoreboard players add @a[tag=player2] roundKills 1
execute if entity @s[tag=player2] as @e[tag=hit] run scoreboard players add @a[tag=player2] kills 1

execute if entity @s[tag=player3] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player3,limit=1]"}]
execute if entity @s[tag=player3] as @e[tag=hit] run tag @s add spectateplayer3
execute if entity @s[tag=player3] as @e[tag=hit] run scoreboard players add @a[tag=player3] roundKills 1
execute if entity @s[tag=player3] as @e[tag=hit] run scoreboard players add @a[tag=player3] kills 1

execute if entity @s[tag=player4] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player4,limit=1]"}]
execute if entity @s[tag=player4] as @e[tag=hit] run tag @s add spectateplayer4
execute if entity @s[tag=player4] as @e[tag=hit] run scoreboard players add @a[tag=player4] roundKills 1
execute if entity @s[tag=player4] as @e[tag=hit] run scoreboard players add @a[tag=player4] kills 1

execute if entity @s[tag=player5] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player5,limit=1]"}]
execute if entity @s[tag=player5] as @e[tag=hit] run tag @s add spectateplayer5
execute if entity @s[tag=player5] as @e[tag=hit] run scoreboard players add @a[tag=player5] roundKills 1
execute if entity @s[tag=player5] as @e[tag=hit] run scoreboard players add @a[tag=player5] kills 1

execute if entity @s[tag=player6] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player6,limit=1]"}]
execute if entity @s[tag=player6] as @e[tag=hit] run tag @s add spectateplayer6
execute if entity @s[tag=player6] as @e[tag=hit] run scoreboard players add @a[tag=player6] roundKills 1
execute if entity @s[tag=player6] as @e[tag=hit] run scoreboard players add @a[tag=player6] kills 1

execute if entity @s[tag=player7] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player7,limit=1]"}]
execute if entity @s[tag=player7] as @e[tag=hit] run tag @s add spectateplayer7
execute if entity @s[tag=player7] as @e[tag=hit] run scoreboard players add @a[tag=player7] roundKills 1
execute if entity @s[tag=player7] as @e[tag=hit] run scoreboard players add @a[tag=player7] kills 1

execute if entity @s[tag=player8] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player8,limit=1]"}]
execute if entity @s[tag=player8] as @e[tag=hit] run tag @s add spectateplayer8
execute if entity @s[tag=player8] as @e[tag=hit] run scoreboard players add @a[tag=player8] roundKills 1
execute if entity @s[tag=player8] as @e[tag=hit] run scoreboard players add @a[tag=player8] kills 1

execute if entity @s[tag=player9] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player9,limit=1]"}]
execute if entity @s[tag=player9] as @e[tag=hit] run tag @s add spectateplayer9
execute if entity @s[tag=player9] as @e[tag=hit] run scoreboard players add @a[tag=player9] roundKills 1
execute if entity @s[tag=player9] as @e[tag=hit] run scoreboard players add @a[tag=player9] kills 1

execute if entity @s[tag=player10] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player10,limit=1]"}]
execute if entity @s[tag=player10] as @e[tag=hit] run tag @s add spectateplayer10
execute if entity @s[tag=player10] as @e[tag=hit] run scoreboard players add @a[tag=player10] roundKills 1
execute if entity @s[tag=player10] as @e[tag=hit] run scoreboard players add @a[tag=player10] kills 1

execute if entity @s[tag=player11] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player11,limit=1]"}]
execute if entity @s[tag=player11] as @e[tag=hit] run tag @s add spectateplayer11
execute if entity @s[tag=player11] as @e[tag=hit] run scoreboard players add @a[tag=player11] roundKills 1
execute if entity @s[tag=player11] as @e[tag=hit] run scoreboard players add @a[tag=player11] kills 1

# Make hit effects work
execute as @a[tag=hit] run tag @s add died
execute as @a[tag=hit] run title @s times 20 50 20
execute as @a[tag=hit] if entity @s[tag=player1] run tag @a remove spectateplayer1
execute as @a[tag=hit] if entity @s[tag=player2] run tag @a remove spectateplayer2
execute as @a[tag=hit] if entity @s[tag=player3] run tag @a remove spectateplayer3
execute as @a[tag=hit] if entity @s[tag=player4] run tag @a remove spectateplayer4
execute as @a[tag=hit] if entity @s[tag=player5] run tag @a remove spectateplayer5
execute as @a[tag=hit] if entity @s[tag=player6] run tag @a remove spectateplayer6
execute as @a[tag=hit] if entity @s[tag=player7] run tag @a remove spectateplayer7
execute as @a[tag=hit] if entity @s[tag=player8] run tag @a remove spectateplayer8
execute as @a[tag=hit] if entity @s[tag=player9] run tag @a remove spectateplayer9
execute as @a[tag=hit] if entity @s[tag=player10] run tag @a remove spectateplayer10
execute as @a[tag=hit] if entity @s[tag=player11] run tag @a remove spectateplayer11
execute as @a[tag=hit] run clear @s
execute as @a[tag=hit] run effect give @s minecraft:levitation 1 40 true
execute as @a[tag=hit] run effect give @s minecraft:slowness 40 127 true
execute as @a[tag=hit] at @s run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1 1
execute as @a[tag=hit] run tag @s remove hit

# Kill the firework
kill @s