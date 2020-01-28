gamerule sendCommandFeedback false
gamemode spectator @a[tag=spectating,tag=!admin]
gamemode adventure @a[tag=!spectating,tag=!admin]
gamerule sendCommandFeedback true


execute if score started started matches 1 as @a[tag=!spectating,tag=!joined] run tag @s add spectating

scoreboard players set spectateSuccess spectateSuccess 0
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer1] run spectate @s @e[limit=1,tag=player1,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer2] run spectate @s @e[limit=1,tag=player2,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer3] run spectate @s @e[limit=1,tag=player3,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer4] run spectate @s @e[limit=1,tag=player4,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer5] run spectate @s @e[limit=1,tag=player5,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer6] run spectate @s @e[limit=1,tag=player6,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer7] run spectate @s @e[limit=1,tag=player7,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer8] run spectate @s @e[limit=1,tag=player8,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer9] run spectate @s @e[limit=1,tag=player9,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer10] run spectate @s @e[limit=1,tag=player10,tag=!spectating]
execute store success score spectateSuccess spectateSuccess if score started started matches 1 as @a[tag=spectating,tag=spectateplayer11] run spectate @s @e[limit=1,tag=player11,tag=!spectating]
execute if score spectateSuccess spectateSuccess matches 0 if score started started matches 1 as @a[tag=spectating] run spectate @e[tag=spectate,limit=1] @s