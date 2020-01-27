# Hit Effect
tag @s add dead

# Firework Colours
execute if entity @s[tag=red] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;11743532]}],Flight:1}}}}
execute if entity @s[tag=yellow] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;14602026]}],Flight:1}}}}
execute if entity @s[tag=green] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;4312372]}],Flight:1}}}}
execute if entity @s[tag=blue] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;6719955]}],Flight:1}}}}

execute if entity @s[tag=yellow] as @e[distance=..2.5,type=minecraft:player,team=!yellow] as @a[team=yellow] run scoreboard players add @s kills 1

# blue killscreen
execute if entity @s[tag=blue] as @e[distance=..2.5,type=minecraft:player] if entity @s[team=!blue] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=blue] as @e[distance=..2.5,type=minecraft:player] if entity @s[team=!blue] run title @s title ["",{"text":" \uE005 "},{"text":"Sploded! ","bold":true,"color":"aqua"},{"text":"\uE005"}]
# red killscreen
execute if entity @s[tag=red] as @e[distance=..2.5,type=minecraft:player] if entity @s[team=!red] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=red] as @e[distance=..2.5,type=minecraft:player] if entity @s[team=!red] run title @s title ["",{"text":" \uE006 "},{"text":"Sploded! ","bold":true,"color":"red"},{"text":"\uE006"}]

# yellow killscreen
execute if entity @s[tag=yellow] as @e[distance=..2.5,type=minecraft:player] if entity @s[team=!yellow] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=yellow] as @e[distance=..2.5,type=minecraft:player] if entity @s[team=!yellow] run title @s title ["",{"text":" \uE007 "},{"text":"Sploded! ","bold":true,"color":"yellow"},{"text":"\uE007"}]
# green killscreen
execute if entity @s[tag=green] as @e[distance=..2.5,type=minecraft:player] if entity @s[team=!green] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=green] as @e[distance=..2.5,type=minecraft:player] if entity @s[team=!green] run title @s title ["",{"text":" \uE008 "},{"text":"Sploded! ","bold":true,"color":"green"},{"text":"\uE008"}]


execute if entity @s[tag=red.tag=yellow,tag=green,tag=blue] as @e[distance=..2.5,type=minecraft:player] if entity @s run title @s times 20 50 20
execute if entity @s[tag=red.tag=yellow,tag=green,tag=blue] as @e[distance=..2.5,type=minecraft:player] if entity @s run tag @s add died
execute if entity @s[tag=red.tag=yellow,tag=green,tag=blue] as @e[distance=..2.5,type=minecraft:player] if entity @s run effect give @s minecraft:levitation 1 40 true
execute if entity @s[tag=red.tag=yellow,tag=green,tag=blue] as @e[distance=..2.5,type=minecraft:player] if entity @s run effect give @s minecraft:speed 40 127 true
execute if entity @s[tag=red.tag=yellow,tag=green,tag=blue] as @e[distance=..2.5,type=minecraft:player] if entity @s at @s run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1 1


execute if entity @s[tag=player1] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player1] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player1,limit=1]"}]
execute if entity @s[tag=player1] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player1] run tag @s add spectateplayer1
execute if entity @s[tag=player1] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player1] run scoreboard players add @a[tag=player1,limit=1] kills 1

execute if entity @s[tag=player2] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player2] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player2,limit=1]"}]
execute if entity @s[tag=player2] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player2] run tag @s add spectateplayer2
execute if entity @s[tag=player2] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player2] run scoreboard players add @a[tag=player2,limit=1] kills 1

execute if entity @s[tag=player3] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player3] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player3,limit=1]"}]
execute if entity @s[tag=player3] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player3] run tag @s add spectateplayer3
execute if entity @s[tag=player3] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player3] run scoreboard players add @a[tag=player3,limit=1] kills 1

execute if entity @s[tag=player4] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player4] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player4,limit=1]"}]
execute if entity @s[tag=player4] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player4] run tag @s add spectateplayer4
execute if entity @s[tag=player4] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player4] run scoreboard players add @a[tag=player4,limit=1] kills 1

execute if entity @s[tag=player5] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player5] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player5,limit=1]"}]
execute if entity @s[tag=player5] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player5] run tag @s add spectateplayer5
execute if entity @s[tag=player5] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player5] run scoreboard players add @a[tag=player5,limit=1] kills 1

execute if entity @s[tag=player6] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player6] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player6,limit=1]"}]
execute if entity @s[tag=player6] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player6] run tag @s add spectateplayer6
execute if entity @s[tag=player6] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player6] run scoreboard players add @a[tag=player6,limit=1] kills 1

execute if entity @s[tag=player7] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player7] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player7,limit=1]"}]
execute if entity @s[tag=player7] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player7] run tag @s add spectateplayer7
execute if entity @s[tag=player7] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player7] run scoreboard players add @a[tag=player7,limit=1] kills 1

execute if entity @s[tag=player8] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player8] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player8,limit=1]"}]
execute if entity @s[tag=player8] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player8] run tag @s add spectateplayer8
execute if entity @s[tag=player8] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player8] run scoreboard players add @a[tag=player8,limit=1] kills 1

execute if entity @s[tag=player9] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player9] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player9,limit=1]"}]
execute if entity @s[tag=player9] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player9] run tag @s add spectateplayer9
execute if entity @s[tag=player9] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player9] run scoreboard players add @a[tag=player9,limit=1] kills 1

execute if entity @s[tag=player10] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player10] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player10,limit=1]"}]
execute if entity @s[tag=player10] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player10] run tag @s add spectateplayer10
execute if entity @s[tag=player10] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player10] run scoreboard players add @a[tag=player10,limit=1] kills 1

execute if entity @s[tag=player11] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player11] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player11,limit=1]"}]
execute if entity @s[tag=player11] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player11] run tag @s add spectateplayer11
execute if entity @s[tag=player11] as @e[distance=..2.5,type=minecraft:player] if entity @s[tag=!player11] run scoreboard players add @a[tag=player11,limit=1] kills 1

# Kill the firework
kill @s