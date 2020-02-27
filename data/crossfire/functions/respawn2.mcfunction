# Remove redundant tags
tag @s remove waterdead
tag @s remove spectating
tag @s remove died
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
scoreboard players set @s deadtimer 6
scoreboard players set @s respawnshield 5

# Remove from currently spectated entity
spectate @s
function crossfire:init_player