schedule function crossfire:respawn 1s

execute as @a[tag=died] if score @s deadtimer matches 0 run gamemode spectator @s
execute as @a[tag=died] run scoreboard players add @s deadtimer 1

execute as @a[tag=died,tag=!waterdead] if entity @s[team=red] if score @s deadtimer matches 2 at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;11743532]}],Flight:1}}}}
execute as @a[tag=died,tag=!waterdead] if entity @s[team=green] if score @s deadtimer matches 2 at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;4312372]}],Flight:1}}}}
execute as @a[tag=died,tag=!waterdead] if entity @s[team=yellow] if score @s deadtimer matches 2 at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;14602026]}],Flight:1}}}}
execute as @a[tag=died,tag=!waterdead] if entity @s[team=blue] if score @s deadtimer matches 2 at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;6719955]}],Flight:1}}}}

execute as @a[tag=died] if score @s deadtimer matches 2 at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 100 0
execute as @a[tag=died] if score @s deadtimer matches 2.. run spectate @e[limit=1,tag=spectate] @s
execute as @a[tag=died] if score @s deadtimer matches 10.. run function crossfire:remove_kill_tag
execute as @a[tag=died] if score @s deadtimer matches 10.. run function crossfire:init_player
execute as @a[tag=died] if score @s deadtimer matches 10.. run tag @s remove waterdead
execute as @a[tag=died] if score @s deadtimer matches 10.. run tag @s remove died
execute as @a if score @s deadtimer matches 10.. run scoreboard players set @s deadtimer 0