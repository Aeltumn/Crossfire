# Give players spectating if applicable
execute if score started started matches 1 as @a[tag=!spectating,tag=!selected,tag=!admin] run tag @s add spectating

# Set gamemode to proper
gamerule sendCommandFeedback false
gamemode adventure @a[tag=!spectating,tag=!admin]
gamemode spectator @a[tag=spectating,tag=!admin]
gamerule sendCommandFeedback true

# Spectate the player into someone else
scoreboard players set spectateSuccess spectateSuccess 0
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer1] run spectate @e[limit=1,tag=player1,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer2] run spectate @e[limit=1,tag=player2,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer3] run spectate @e[limit=1,tag=player3,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer4] run spectate @e[limit=1,tag=player4,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer5] run spectate @e[limit=1,tag=player5,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer6] run spectate @e[limit=1,tag=player6,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer7] run spectate @e[limit=1,tag=player7,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer8] run spectate @e[limit=1,tag=player8,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer9] run spectate @e[limit=1,tag=player9,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer10] run spectate @e[limit=1,tag=player10,tag=!spectating] @s
execute if score spectateSuccess spectateSuccess matches 0 store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer11] run spectate @e[limit=1,tag=player11,tag=!spectating] @s

# If nothing else, we do the spectator cam
# effect give @s minecraft:levitation 1000000 255 true
# effect give @s minecraft:invisibility 1000000 255 true
execute if score spectateSuccess spectateSuccess matches 0 if score started started matches 1 as @a[tag=spectating] at @e[tag=flightpath5] run tp @s ^ ^ ^28 facing entity @e[tag=spectatetarget,limit=1]