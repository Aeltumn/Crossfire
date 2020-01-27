execute as @a[tag=!died] run scoreboard players set @s deadtimer 8

schedule function crossfire:respawn 1s

execute as @a[tag=died] run scoreboard players remove @s deadtimer 1

execute as @a[tag=died,tag=!waterdead] if entity @s[team=red] if score @s deadtimer matches 6 at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;11743532]}],Flight:1}}}}
execute as @a[tag=died,tag=!waterdead] if entity @s[team=green] if score @s deadtimer matches 6 at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;4312372]}],Flight:1}}}}
execute as @a[tag=died,tag=!waterdead] if entity @s[team=yellow] if score @s deadtimer matches 6 at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;14602026]}],Flight:1}}}}
execute as @a[tag=died,tag=!waterdead] if entity @s[team=blue] if score @s deadtimer matches 6 at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;6719955]}],Flight:1}}}}
execute as @a[tag=died,tag=!waterdead] if score @s deadtimer matches 6 at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 100 0
execute as @a[tag=died,tag=!waterdead] if score @s deadtimer matches 6 at @s run tag @s add spectating

execute as @a[tag=died] if score @s deadtimer matches 0 run function crossfire:respawn2