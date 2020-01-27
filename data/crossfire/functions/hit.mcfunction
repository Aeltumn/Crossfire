# Hit Effect
tag @s add dead

# Firework Colours
execute if entity @s[tag=red] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;11743532]}],Flight:1}}}}
execute if entity @s[tag=yellow] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;14602026]}],Flight:1}}}}
execute if entity @s[tag=green] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;4312372]}],Flight:1}}}}
execute if entity @s[tag=blue] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;6719955]}],Flight:1}}}}

# blue killscreen
execute if entity @s[tag=blue] as @e[distance=..3,type=minecraft:player] if entity @s[team=!blue,tag=!died] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=blue] as @e[distance=..3,type=minecraft:player] if entity @s[team=!blue,tag=!died] run title @s title ["",{"text":" \uE005 "},{"text":"Sploded! ","bold":true,"color":"aqua"},{"text":"\uE005"}]
execute if entity @s[tag=blue] as @e[distance=..3,type=minecraft:player] if entity @s[team=!blue,tag=!died] run tag @s add hit

# red killscreen
execute if entity @s[tag=red] as @e[distance=..3,type=minecraft:player] if entity @s[team=!red,tag=!died] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=red] as @e[distance=..3,type=minecraft:player] if entity @s[team=!red,tag=!died] run title @s title ["",{"text":" \uE006 "},{"text":"Sploded! ","bold":true,"color":"red"},{"text":"\uE006"}]
execute if entity @s[tag=red] as @e[distance=..3,type=minecraft:player] if entity @s[team=!red,tag=!died] run tag @s add hit

# yellow killscreen
execute if entity @s[tag=yellow] as @e[distance=..3,type=minecraft:player] if entity @s[team=!yellow,tag=!died] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=yellow] as @e[distance=..3,type=minecraft:player] if entity @s[team=!yellow,tag=!died] run title @s title ["",{"text":" \uE007 "},{"text":"Sploded! ","bold":true,"color":"yellow"},{"text":"\uE007"}]
execute if entity @s[tag=yellow] as @e[distance=..3,type=minecraft:player] if entity @s[team=!yellow,tag=!died] run tag @s add hit

# green killscreen
execute if entity @s[tag=green] as @e[distance=..3,type=minecraft:player] if entity @s[team=!green,tag=!died] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=green] as @e[distance=..3,type=minecraft:player] if entity @s[team=!green,tag=!died] run title @s title ["",{"text":" \uE008 "},{"text":"Sploded! ","bold":true,"color":"green"},{"text":"\uE008"}]
execute if entity @s[tag=green] as @e[distance=..3,type=minecraft:player] if entity @s[team=!green,tag=!died] run tag @s add hit

execute as @a[tag=hit] run title @s times 20 50 20
execute as @a[tag=hit] run tag @s add died
execute as @a[tag=hit] run effect give @s minecraft:levitation 1 40 true
execute as @a[tag=hit] run effect give @s minecraft:slowness 40 127 true
execute as @a[tag=hit] at @s run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1 1
execute as @a[tag=hit] run tag @s remove hit


execute if entity @s[tag=player1] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player1,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player1,limit=1]"}]
execute if entity @s[tag=player1] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player1,tag=!died] run tag @s add spectateplayer1
execute if entity @s[tag=player1] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player1,tag=!died] run scoreboard players add @a[tag=player1,limit=1] kills 1

execute if entity @s[tag=player2] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player2,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player2,limit=1]"}]
execute if entity @s[tag=player2] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player2,tag=!died] run tag @s add spectateplayer2
execute if entity @s[tag=player2] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player2,tag=!died] run scoreboard players add @a[tag=player2,limit=1] kills 1

execute if entity @s[tag=player3] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player3,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player3,limit=1]"}]
execute if entity @s[tag=player3] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player3,tag=!died] run tag @s add spectateplayer3
execute if entity @s[tag=player3] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player3,tag=!died] run scoreboard players add @a[tag=player3,limit=1] kills 1

execute if entity @s[tag=player4] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player4,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player4,limit=1]"}]
execute if entity @s[tag=player4] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player4,tag=!died] run tag @s add spectateplayer4
execute if entity @s[tag=player4] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player4,tag=!died] run scoreboard players add @a[tag=player4,limit=1] kills 1

execute if entity @s[tag=player5] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player5,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player5,limit=1]"}]
execute if entity @s[tag=player5] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player5,tag=!died] run tag @s add spectateplayer5
execute if entity @s[tag=player5] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player5,tag=!died] run scoreboard players add @a[tag=player5,limit=1] kills 1

execute if entity @s[tag=player6] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player6,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player6,limit=1]"}]
execute if entity @s[tag=player6] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player6,tag=!died] run tag @s add spectateplayer6
execute if entity @s[tag=player6] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player6,tag=!died] run scoreboard players add @a[tag=player6,limit=1] kills 1

execute if entity @s[tag=player7] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player7,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player7,limit=1]"}]
execute if entity @s[tag=player7] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player7,tag=!died] run tag @s add spectateplayer7
execute if entity @s[tag=player7] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player7,tag=!died] run scoreboard players add @a[tag=player7,limit=1] kills 1

execute if entity @s[tag=player8] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player8,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player8,limit=1]"}]
execute if entity @s[tag=player8] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player8,tag=!died] run tag @s add spectateplayer8
execute if entity @s[tag=player8] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player8,tag=!died] run scoreboard players add @a[tag=player8,limit=1] kills 1

execute if entity @s[tag=player9] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player9,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player9,limit=1]"}]
execute if entity @s[tag=player9] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player9,tag=!died] run tag @s add spectateplayer9
execute if entity @s[tag=player9] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player9,tag=!died] run scoreboard players add @a[tag=player9,limit=1] kills 1

execute if entity @s[tag=player10] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player10,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player10,limit=1]"}]
execute if entity @s[tag=player10] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player10,tag=!died] run tag @s add spectateplayer10
execute if entity @s[tag=player10] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player10,tag=!died] run scoreboard players add @a[tag=player10,limit=1] kills 1

execute if entity @s[tag=player11] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player11,tag=!died] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player11,limit=1]"}]
execute if entity @s[tag=player11] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player11,tag=!died] run tag @s add spectateplayer11
execute if entity @s[tag=player11] as @e[distance=..3,type=minecraft:player] if entity @s[tag=!player11,tag=!died] run scoreboard players add @a[tag=player11,limit=1] kills 1

# Kill the firework
kill @s