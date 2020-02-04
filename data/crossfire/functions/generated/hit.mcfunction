# Hit Effect
tag @s add dead

# Firework Colours
execute if entity @s[tag=red] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;11743532]}],Flight:1}}}}
execute if entity @s[tag=yellow] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;14602026]}],Flight:1}}}}
execute if entity @s[tag=green] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;4312372]}],Flight:1}}}}
execute if entity @s[tag=blue] at @s run summon firework_rocket ~ ~ ~ {Tags:["custom"],LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;6719955]}],Flight:1}}}}

# Killscreens
# Red killscreen
execute if entity @s[tag=red] as @a[distance=..3,team=!red,tag=!died,tag=!admin,scores={respawnshield=..0}] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=red] as @a[distance=..3,team=!red,tag=!died,tag=!admin,scores={respawnshield=..0}] run title @s title ["",{"text":" \uE006 "},{"text":"Sploded! ","bold":true,"color":"red"},{"text":"\uE006"}]
execute if entity @s[tag=red] as @a[distance=..3,team=!red,tag=!died,tag=!admin,scores={respawnshield=..0}] run tag @s add hit

# Yellow killscreen
execute if entity @s[tag=yellow] as @a[distance=..3,team=!yellow,tag=!died,tag=!admin,scores={respawnshield=..0}] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=yellow] as @a[distance=..3,team=!yellow,tag=!died,tag=!admin,scores={respawnshield=..0}] run title @s title ["",{"text":" \uE007 "},{"text":"Sploded! ","bold":true,"color":"yellow"},{"text":"\uE007"}]
execute if entity @s[tag=yellow] as @a[distance=..3,team=!yellow,tag=!died,tag=!admin,scores={respawnshield=..0}] run tag @s add hit

# Green killscreen
execute if entity @s[tag=green] as @a[distance=..3,team=!green,tag=!died,tag=!admin,scores={respawnshield=..0}] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=green] as @a[distance=..3,team=!green,tag=!died,tag=!admin,scores={respawnshield=..0}] run title @s title ["",{"text":" \uE008 "},{"text":"Sploded! ","bold":true,"color":"green"},{"text":"\uE008"}]
execute if entity @s[tag=green] as @a[distance=..3,team=!green,tag=!died,tag=!admin,scores={respawnshield=..0}] run tag @s add hit

# Blue killscreen
execute if entity @s[tag=blue] as @a[distance=..3,team=!blue,tag=!died,tag=!admin,scores={respawnshield=..0}] run title @s subtitle {"text":"\uE004"}
execute if entity @s[tag=blue] as @a[distance=..3,team=!blue,tag=!died,tag=!admin,scores={respawnshield=..0}] run title @s title ["",{"text":" \uE005 "},{"text":"Sploded! ","bold":true,"color":"aqua"},{"text":"\uE005"}]
execute if entity @s[tag=blue] as @a[distance=..3,team=!blue,tag=!died,tag=!admin,scores={respawnshield=..0}] run tag @s add hit

# Hit supply crates
execute as @e[tag=supplycrate,tag=!crateless,distance=..3] run tag @s add wantstodrop
execute as @e[tag=supplycrate,tag=!crateless,tag=wantstodrop] at @s run tag @e[tag=!dropped,tag=!crateless,tag=!wantstodrop,distance=..1] add wantstodrop

# Remove hit tags
tag @e[type=!player] remove hit

# Message informing you of teamkilling:
execute if entity @s[tag=red,tag=player1] if entity @a[distance=..3,team=red,limit=1,tag=!player1] run title @a[tag=player1] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player1] if entity @a[distance=..3,team=yellow,limit=1,tag=!player1] run title @a[tag=player1] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player1] if entity @a[distance=..3,team=green,limit=1,tag=!player1] run title @a[tag=player1] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player1] if entity @a[distance=..3,team=blue,limit=1,tag=!player1] run title @a[tag=player1] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player2] if entity @a[distance=..3,team=red,limit=1,tag=!player2] run title @a[tag=player2] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player2] if entity @a[distance=..3,team=yellow,limit=1,tag=!player2] run title @a[tag=player2] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player2] if entity @a[distance=..3,team=green,limit=1,tag=!player2] run title @a[tag=player2] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player2] if entity @a[distance=..3,team=blue,limit=1,tag=!player2] run title @a[tag=player2] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player3] if entity @a[distance=..3,team=red,limit=1,tag=!player3] run title @a[tag=player3] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player3] if entity @a[distance=..3,team=yellow,limit=1,tag=!player3] run title @a[tag=player3] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player3] if entity @a[distance=..3,team=green,limit=1,tag=!player3] run title @a[tag=player3] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player3] if entity @a[distance=..3,team=blue,limit=1,tag=!player3] run title @a[tag=player3] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player4] if entity @a[distance=..3,team=red,limit=1,tag=!player4] run title @a[tag=player4] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player4] if entity @a[distance=..3,team=yellow,limit=1,tag=!player4] run title @a[tag=player4] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player4] if entity @a[distance=..3,team=green,limit=1,tag=!player4] run title @a[tag=player4] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player4] if entity @a[distance=..3,team=blue,limit=1,tag=!player4] run title @a[tag=player4] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player5] if entity @a[distance=..3,team=red,limit=1,tag=!player5] run title @a[tag=player5] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player5] if entity @a[distance=..3,team=yellow,limit=1,tag=!player5] run title @a[tag=player5] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player5] if entity @a[distance=..3,team=green,limit=1,tag=!player5] run title @a[tag=player5] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player5] if entity @a[distance=..3,team=blue,limit=1,tag=!player5] run title @a[tag=player5] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player6] if entity @a[distance=..3,team=red,limit=1,tag=!player6] run title @a[tag=player6] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player6] if entity @a[distance=..3,team=yellow,limit=1,tag=!player6] run title @a[tag=player6] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player6] if entity @a[distance=..3,team=green,limit=1,tag=!player6] run title @a[tag=player6] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player6] if entity @a[distance=..3,team=blue,limit=1,tag=!player6] run title @a[tag=player6] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player7] if entity @a[distance=..3,team=red,limit=1,tag=!player7] run title @a[tag=player7] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player7] if entity @a[distance=..3,team=yellow,limit=1,tag=!player7] run title @a[tag=player7] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player7] if entity @a[distance=..3,team=green,limit=1,tag=!player7] run title @a[tag=player7] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player7] if entity @a[distance=..3,team=blue,limit=1,tag=!player7] run title @a[tag=player7] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player8] if entity @a[distance=..3,team=red,limit=1,tag=!player8] run title @a[tag=player8] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player8] if entity @a[distance=..3,team=yellow,limit=1,tag=!player8] run title @a[tag=player8] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player8] if entity @a[distance=..3,team=green,limit=1,tag=!player8] run title @a[tag=player8] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player8] if entity @a[distance=..3,team=blue,limit=1,tag=!player8] run title @a[tag=player8] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player9] if entity @a[distance=..3,team=red,limit=1,tag=!player9] run title @a[tag=player9] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player9] if entity @a[distance=..3,team=yellow,limit=1,tag=!player9] run title @a[tag=player9] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player9] if entity @a[distance=..3,team=green,limit=1,tag=!player9] run title @a[tag=player9] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player9] if entity @a[distance=..3,team=blue,limit=1,tag=!player9] run title @a[tag=player9] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player10] if entity @a[distance=..3,team=red,limit=1,tag=!player10] run title @a[tag=player10] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player10] if entity @a[distance=..3,team=yellow,limit=1,tag=!player10] run title @a[tag=player10] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player10] if entity @a[distance=..3,team=green,limit=1,tag=!player10] run title @a[tag=player10] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player10] if entity @a[distance=..3,team=blue,limit=1,tag=!player10] run title @a[tag=player10] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]

execute if entity @s[tag=red,tag=player11] if entity @a[distance=..3,team=red,limit=1,tag=!player11] run title @a[tag=player11] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=yellow,tag=player11] if entity @a[distance=..3,team=yellow,limit=1,tag=!player11] run title @a[tag=player11] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=green,tag=player11] if entity @a[distance=..3,team=green,limit=1,tag=!player11] run title @a[tag=player11] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]
execute if entity @s[tag=blue,tag=player11] if entity @a[distance=..3,team=blue,limit=1,tag=!player11] run title @a[tag=player11] actionbar ["",{"text":"Don't attack your teammates!","color":"red"}]


# Message informing you of respawn shield
execute if entity @s[tag=red,tag=player1] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player1] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player1] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player1] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player1] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player1] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player1] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player1] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player2] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player2] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player2] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player2] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player2] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player2] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player2] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player2] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player3] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player3] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player3] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player3] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player3] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player3] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player3] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player3] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player4] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player4] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player4] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player4] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player4] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player4] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player4] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player4] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player5] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player5] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player5] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player5] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player5] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player5] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player5] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player5] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player6] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player6] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player6] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player6] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player6] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player6] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player6] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player6] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player7] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player7] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player7] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player7] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player7] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player7] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player7] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player7] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player8] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player8] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player8] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player8] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player8] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player8] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player8] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player8] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player9] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player9] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player9] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player9] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player9] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player9] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player9] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player9] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player10] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player10] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player10] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player10] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player10] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player10] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player10] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player10] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]

execute if entity @s[tag=red,tag=player11] if entity @a[distance=..3,team=!red,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player11] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=yellow,tag=player11] if entity @a[distance=..3,team=!yellow,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player11] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=green,tag=player11] if entity @a[distance=..3,team=!green,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player11] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]
execute if entity @s[tag=blue,tag=player11] if entity @a[distance=..3,team=!blue,tag=!died,scores={respawnshield=1..},limit=1] run title @a[tag=player11] actionbar ["",{"text":"You've hit a player that was still respawning!","color":"yellow"}]


# Death messages per player
execute if entity @s[tag=player1] as @e[tag=hit] run title @a[tag=player1] times 10 30 10
execute if entity @s[tag=player1] as @e[tag=hit] run title @a[tag=player1] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player1] as @e[tag=hit] run title @a[tag=player1] title {"text":" "}
execute if entity @s[tag=player1] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player1,limit=1]"}]
execute if entity @s[tag=player1] as @e[tag=hit] run tag @s add spectateplayer1
execute if entity @s[tag=player1] as @e[tag=hit] run scoreboard players add @a[tag=player1] roundKills 1
execute if entity @s[tag=player1] as @e[tag=hit] run scoreboard players add @a[tag=player1] kills 1

execute if entity @s[tag=player2] as @e[tag=hit] run title @a[tag=player2] times 10 30 10
execute if entity @s[tag=player2] as @e[tag=hit] run title @a[tag=player2] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player2] as @e[tag=hit] run title @a[tag=player2] title {"text":" "}
execute if entity @s[tag=player2] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player2,limit=1]"}]
execute if entity @s[tag=player2] as @e[tag=hit] run tag @s add spectateplayer2
execute if entity @s[tag=player2] as @e[tag=hit] run scoreboard players add @a[tag=player2] roundKills 1
execute if entity @s[tag=player2] as @e[tag=hit] run scoreboard players add @a[tag=player2] kills 1

execute if entity @s[tag=player3] as @e[tag=hit] run title @a[tag=player3] times 10 30 10
execute if entity @s[tag=player3] as @e[tag=hit] run title @a[tag=player3] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player3] as @e[tag=hit] run title @a[tag=player3] title {"text":" "}
execute if entity @s[tag=player3] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player3,limit=1]"}]
execute if entity @s[tag=player3] as @e[tag=hit] run tag @s add spectateplayer3
execute if entity @s[tag=player3] as @e[tag=hit] run scoreboard players add @a[tag=player3] roundKills 1
execute if entity @s[tag=player3] as @e[tag=hit] run scoreboard players add @a[tag=player3] kills 1

execute if entity @s[tag=player4] as @e[tag=hit] run title @a[tag=player4] times 10 30 10
execute if entity @s[tag=player4] as @e[tag=hit] run title @a[tag=player4] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player4] as @e[tag=hit] run title @a[tag=player4] title {"text":" "}
execute if entity @s[tag=player4] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player4,limit=1]"}]
execute if entity @s[tag=player4] as @e[tag=hit] run tag @s add spectateplayer4
execute if entity @s[tag=player4] as @e[tag=hit] run scoreboard players add @a[tag=player4] roundKills 1
execute if entity @s[tag=player4] as @e[tag=hit] run scoreboard players add @a[tag=player4] kills 1

execute if entity @s[tag=player5] as @e[tag=hit] run title @a[tag=player5] times 10 30 10
execute if entity @s[tag=player5] as @e[tag=hit] run title @a[tag=player5] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player5] as @e[tag=hit] run title @a[tag=player5] title {"text":" "}
execute if entity @s[tag=player5] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player5,limit=1]"}]
execute if entity @s[tag=player5] as @e[tag=hit] run tag @s add spectateplayer5
execute if entity @s[tag=player5] as @e[tag=hit] run scoreboard players add @a[tag=player5] roundKills 1
execute if entity @s[tag=player5] as @e[tag=hit] run scoreboard players add @a[tag=player5] kills 1

execute if entity @s[tag=player6] as @e[tag=hit] run title @a[tag=player6] times 10 30 10
execute if entity @s[tag=player6] as @e[tag=hit] run title @a[tag=player6] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player6] as @e[tag=hit] run title @a[tag=player6] title {"text":" "}
execute if entity @s[tag=player6] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player6,limit=1]"}]
execute if entity @s[tag=player6] as @e[tag=hit] run tag @s add spectateplayer6
execute if entity @s[tag=player6] as @e[tag=hit] run scoreboard players add @a[tag=player6] roundKills 1
execute if entity @s[tag=player6] as @e[tag=hit] run scoreboard players add @a[tag=player6] kills 1

execute if entity @s[tag=player7] as @e[tag=hit] run title @a[tag=player7] times 10 30 10
execute if entity @s[tag=player7] as @e[tag=hit] run title @a[tag=player7] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player7] as @e[tag=hit] run title @a[tag=player7] title {"text":" "}
execute if entity @s[tag=player7] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player7,limit=1]"}]
execute if entity @s[tag=player7] as @e[tag=hit] run tag @s add spectateplayer7
execute if entity @s[tag=player7] as @e[tag=hit] run scoreboard players add @a[tag=player7] roundKills 1
execute if entity @s[tag=player7] as @e[tag=hit] run scoreboard players add @a[tag=player7] kills 1

execute if entity @s[tag=player8] as @e[tag=hit] run title @a[tag=player8] times 10 30 10
execute if entity @s[tag=player8] as @e[tag=hit] run title @a[tag=player8] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player8] as @e[tag=hit] run title @a[tag=player8] title {"text":" "}
execute if entity @s[tag=player8] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player8,limit=1]"}]
execute if entity @s[tag=player8] as @e[tag=hit] run tag @s add spectateplayer8
execute if entity @s[tag=player8] as @e[tag=hit] run scoreboard players add @a[tag=player8] roundKills 1
execute if entity @s[tag=player8] as @e[tag=hit] run scoreboard players add @a[tag=player8] kills 1

execute if entity @s[tag=player9] as @e[tag=hit] run title @a[tag=player9] times 10 30 10
execute if entity @s[tag=player9] as @e[tag=hit] run title @a[tag=player9] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player9] as @e[tag=hit] run title @a[tag=player9] title {"text":" "}
execute if entity @s[tag=player9] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player9,limit=1]"}]
execute if entity @s[tag=player9] as @e[tag=hit] run tag @s add spectateplayer9
execute if entity @s[tag=player9] as @e[tag=hit] run scoreboard players add @a[tag=player9] roundKills 1
execute if entity @s[tag=player9] as @e[tag=hit] run scoreboard players add @a[tag=player9] kills 1

execute if entity @s[tag=player10] as @e[tag=hit] run title @a[tag=player10] times 10 30 10
execute if entity @s[tag=player10] as @e[tag=hit] run title @a[tag=player10] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player10] as @e[tag=hit] run title @a[tag=player10] title {"text":" "}
execute if entity @s[tag=player10] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player10,limit=1]"}]
execute if entity @s[tag=player10] as @e[tag=hit] run tag @s add spectateplayer10
execute if entity @s[tag=player10] as @e[tag=hit] run scoreboard players add @a[tag=player10] roundKills 1
execute if entity @s[tag=player10] as @e[tag=hit] run scoreboard players add @a[tag=player10] kills 1

execute if entity @s[tag=player11] as @e[tag=hit] run title @a[tag=player11] times 10 30 10
execute if entity @s[tag=player11] as @e[tag=hit] run title @a[tag=player11] subtitle ["",{"text":"You've killed: "},{"selector":"@s"}]
execute if entity @s[tag=player11] as @e[tag=hit] run title @a[tag=player11] title {"text":" "}
execute if entity @s[tag=player11] as @e[tag=hit] run tellraw @a ["",{"selector":"@s"},{"text":" was sploded by "},{"selector":"@a[tag=player11,limit=1]"}]
execute if entity @s[tag=player11] as @e[tag=hit] run tag @s add spectateplayer11
execute if entity @s[tag=player11] as @e[tag=hit] run scoreboard players add @a[tag=player11] roundKills 1
execute if entity @s[tag=player11] as @e[tag=hit] run scoreboard players add @a[tag=player11] kills 1


# Make hit effects work
execute as @e[tag=hit] run function crossfire:hit2

# Kill the firework
kill @s
