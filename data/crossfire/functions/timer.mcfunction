execute if score starttimer starttimer matches 1.. run title @a title {"score":{"name":"starttimer","objective":"starttimer"},"bold":true,"color":"gold"}
execute if score starttimer starttimer matches 1.. at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.2 0

execute if score starttimer starttimer matches 0 run function crossfire:start_round

execute if score starttimer starttimer matches 0.. run scoreboard players remove starttimer starttimer 1
execute if score starttimer starttimer matches 0.. run schedule function crossfire:timer 1s