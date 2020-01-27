execute if score starttimer starttimer matches 1.. run title @a title {"score":{"name":"starttimer","objective":"starttimer"},"bold":true,"color":"gold"}
execute if score starttimer starttimer matches 1.. at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.2 0

execute if score starttimer starttimer matches 0 at @a run playsound minecraft:event.raid.horn master @a ~ ~ ~ 100 1
execute if score starttimer starttimer matches 0 at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.2 1
execute if score starttimer starttimer matches 0 run title @a title {"text":"GO","bold":true,"color":"gold"}
execute if score starttimer starttimer matches 0 run bossbar set minecraft:test players @a
execute if score starttimer starttimer matches 0 run scoreboard players set gametimer gametimer 300
execute if score starttimer starttimer matches 0 run execute store result bossbar minecraft:test max run scoreboard players get gametimer gametimer
execute if score starttimer starttimer matches 0 run function crossfire:timer2


execute if score starttimer starttimer matches 0.. run scoreboard players remove starttimer starttimer 1
execute if score starttimer starttimer matches 0.. run schedule function crossfire:timer 1s