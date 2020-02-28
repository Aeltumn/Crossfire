# Fix map
scoreboard players add @s map 0

# Kick everyone out of spectator target
execute as @s[tag=spectating] run spectate

# Update round
execute if entity @s[scores={map=0}] run scoreboard players operation @s round = round0 round
execute if entity @s[scores={map=1}] run scoreboard players operation @s round = round1 round

# Remove tags
tag @s remove player1
tag @s remove player2
tag @s remove player3
tag @s remove player4
tag @s remove player5
tag @s remove player6
tag @s remove player7
tag @s remove player8
tag @s remove player9
tag @s remove player10
tag @s remove player11
tag @s remove selected
tag @s remove selected0
tag @s remove selected1
tag @s remove waterdead
tag @s remove died
tag @s remove spectating
tag @s remove spectateplayer1
tag @s remove spectateplayer2
tag @s remove spectateplayer3
tag @s remove spectateplayer4
tag @s remove spectateplayer5
tag @s remove spectateplayer6
tag @s remove spectateplayer7
tag @s remove spectateplayer8
tag @s remove spectateplayer9
tag @s remove spectateplayer10
tag @s remove spectateplayer11
tag @s remove hit
tag @s remove givecrossbow
tag @s remove reloadcrossbow
tag @s remove joined0
tag @s remove joined1

# Reset roundkills
scoreboard players set @s roundKills 0

# Fix cooldown
scoreboard players add @s cooldown 0

# Don't remove joined when going to postgame to avoid triggering spectator
execute if entity @s[scores={map=1}] if score postgametimer1 postgametimer matches -1 run tag @s remove joined
execute if entity @s[scores={map=0}] if score postgametimer0 postgametimer matches -1 run tag @s remove joined

# Remove from your team
team leave @s

# Fix wins
scoreboard players add @s wins 0

# Fix timer
scoreboard players set @s isreloading 0
scoreboard players set @s timer 0

# Teleport people back
gamerule sendCommandFeedback false
gamemode adventure @s[tag=!admin]
gamerule sendCommandFeedback true
clear @s[tag=!admin] #crossfire:obtainableitems
function crossfire:give_armor
effect clear @s[tag=!admin]
team join lobby @s

# Teleport player
execute if entity @s[scores={map=1}] if score postgametimer1 postgametimer matches -1 run tp @s[tag=!admin] 574.5 85 296.5 90 0
execute if entity @s[scores={map=1}] unless score postgametimer1 postgametimer matches -1 run tp @s[tag=!admin] 529 71 296 -90 0

execute if entity @s[scores={map=0}] if score postgametimer0 postgametimer matches -1 run tp @s[tag=!admin] 574.5 85 421.5 90 0
execute if entity @s[scores={map=0}] unless score postgametimer0 postgametimer matches -1 run tp @s[tag=!admin] 529 72 421 -90 0

# Give map switch item
execute if entity @s[scores={map=0}] if score postgametimer0 postgametimer matches -1 run replaceitem entity @s container.2 carrot_on_a_stick{CustomModelData:2,display:{Name:"{\"color\":\"dark_aqua\",\"italic\":false,\"text\":\"Go to the Duel map\"}"}} 1
execute if entity @s[scores={map=1}] if score postgametimer1 postgametimer matches -1 run replaceitem entity @s container.2 carrot_on_a_stick{CustomModelData:3,display:{Name:"{\"color\":\"dark_green\",\"italic\":false,\"text\":\"Go to the Party map\"}"}} 1

# Reset exp
xp set @s 0 levels
xp set @s 0 points

# Quality of life!
effect give @s[tag=!admin] minecraft:instant_health 1 20 true
effect give @s[tag=!admin] minecraft:jump_boost 1000000 1 true
effect give @s[tag=!admin] minecraft:speed 1000000 0 true
effect give @s[tag=!admin] minecraft:weakness 1000000 255 true
effect give @s[tag=!admin] minecraft:resistance 1000000 255 true
