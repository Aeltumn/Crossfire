gamerule sendCommandFeedback false
gamemode spectator @a[tag=spectating,tag=!admin]
gamemode adventure @a[tag=!spectating,tag=!admin]
gamerule sendCommandFeedback true


execute if score started started matches 1 as @a[tag=!spectating,tag=!joined] run tag @s add spectating

execute if score started started matches 1 as @a[tag=spectating,tag=!spectateplayer1,tag=!spectateplayer2,tag=!spectateplayer3,tag=!spectateplayer4,tag=!spectateplayer5,tag=!spectateplayer6,tag=!spectateplayer7,tag=!spectateplayer8,tag=!spectateplayer9,tag=!spectateplayer10,tag=!spectateplayer11] run spectate @e[limit=1,tag=spectate] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer1] run spectate @e[limit=1,tag=player1] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer2] run spectate @e[limit=1,tag=player2] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer3] run spectate @e[limit=1,tag=player3] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer4] run spectate @e[limit=1,tag=player4] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer5] run spectate @e[limit=1,tag=player5] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer6] run spectate @e[limit=1,tag=player6] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer7] run spectate @e[limit=1,tag=player7] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer8] run spectate @e[limit=1,tag=player8] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer9] run spectate @e[limit=1,tag=player9] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer10] run spectate @e[limit=1,tag=player10] @s
execute if score started started matches 1 as @a[tag=spectating,tag=spectateplayer11] run spectate @e[limit=1,tag=player11] @s