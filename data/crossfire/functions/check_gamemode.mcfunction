# Give players spectating if applicable
execute if score started started matches 1 as @a[tag=!spectating,tag=!selected,tag=!admin] run effect give @s minecraft:levitation 1000000 255 true
execute if score started started matches 1 as @a[tag=!spectating,tag=!selected,tag=!admin] run effect give @s minecraft:invisibility 1000000 255 true
execute if score started started matches 1 as @a[tag=!spectating,tag=!selected,tag=!admin] run tag @s add spectating

# Remove the player spectate tag if that player is now also spectating
execute as @a[tag=spectateplayer1] unless entity @a[tag=player1,tag=!spectating] run tag @s remove spectateplayer1
execute as @a[tag=spectateplayer2] unless entity @a[tag=player2,tag=!spectating] run tag @s remove spectateplayer2
execute as @a[tag=spectateplayer3] unless entity @a[tag=player3,tag=!spectating] run tag @s remove spectateplayer3
execute as @a[tag=spectateplayer4] unless entity @a[tag=player4,tag=!spectating] run tag @s remove spectateplayer4
execute as @a[tag=spectateplayer5] unless entity @a[tag=player5,tag=!spectating] run tag @s remove spectateplayer5
execute as @a[tag=spectateplayer6] unless entity @a[tag=player6,tag=!spectating] run tag @s remove spectateplayer6
execute as @a[tag=spectateplayer7] unless entity @a[tag=player7,tag=!spectating] run tag @s remove spectateplayer7
execute as @a[tag=spectateplayer8] unless entity @a[tag=player8,tag=!spectating] run tag @s remove spectateplayer8
execute as @a[tag=spectateplayer9] unless entity @a[tag=player9,tag=!spectating] run tag @s remove spectateplayer9
execute as @a[tag=spectateplayer10] unless entity @a[tag=player10,tag=!spectating] run tag @s remove spectateplayer10
execute as @a[tag=spectateplayer11] unless entity @a[tag=player11,tag=!spectating] run tag @s remove spectateplayer11

# Give spectatoradventure if we have no specateplayer
execute as @a unless entity @s[tag=!specateplayer1,tag=!spectateplayer2,tag=!spectateplayer3,tag=!spectateplayer4,tag=!spectateplayer5,tag=!spectateplayer6,tag=!spectateplayer7,tag=!spectateplayer8,tag=!spectateplayer9,tag=!spectateplayer10,tag=!spectateplayer11] run tag @s remove spectatoradventure
execute as @a if entity @s[tag=!specateplayer1,tag=!spectateplayer2,tag=!spectateplayer3,tag=!spectateplayer4,tag=!spectateplayer5,tag=!spectateplayer6,tag=!spectateplayer7,tag=!spectateplayer8,tag=!spectateplayer9,tag=!spectateplayer10,tag=!spectateplayer11] run tag @s add spectatoradventure

# Set into the proper gamemode
gamerule sendCommandFeedback false
gamemode adventure @a[tag=spectatoradventure,tag=!admin]
gamemode spectator @a[tag=spectating,tag=!spectatoradventure,tag=!admin]
gamerule sendCommandFeedback true

# Actually make player spectate if applicable
execute as @a[tag=spectateplayer1,tag=spectating,gamemode=spectator] run spectate @e[limit=1,tag=player1,tag=!spectating] @s
execute as @a[tag=spectateplayer2,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player2,tag=!spectate] @s
execute as @a[tag=spectateplayer3,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player3,tag=!spectate] @s
execute as @a[tag=spectateplayer4,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player4,tag=!spectate] @s
execute as @a[tag=spectateplayer5,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player5,tag=!spectate] @s
execute as @a[tag=spectateplayer6,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player6,tag=!spectate] @s
execute as @a[tag=spectateplayer7,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player7,tag=!spectate] @s
execute as @a[tag=spectateplayer8,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player8,tag=!spectate] @s
execute as @a[tag=spectateplayer9,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player9,tag=!spectate] @s
execute as @a[tag=spectateplayer10,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player10,tag=!spectate] @s
execute as @a[tag=spectateplayer11,tag=spectate,gamemode=spectator] run spectate @e[limit=1,tag=player11,tag=!spectate] @s

# If nothing else, we do the spectator cam
execute as @a[tag=spectatoradventure,gamemode=adventure] as @a[tag=spectating] at @e[tag=flightpath5] run tp @s ^ ^ ^28 facing entity @e[tag=spectatetarget,limit=1]