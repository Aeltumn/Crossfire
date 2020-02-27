execute if score starttimer1 starttimer matches 1.. run title @a[scores={map=1}] subtitle {"text":""}
execute if score starttimer1 starttimer matches 1.. run title @a[scores={map=1}] title {"score":{"name":"starttimer1","objective":"starttimer"},"bold":true,"color":"gold"}
execute if score starttimer1 starttimer matches 1.. at @a[scores={map=1}] run playsound minecraft:entity.experience_orb.pickup master @a[scores={map=1}] ~ ~ ~ 0.2 0

execute if score starttimer1 starttimer matches 0 run function crossfire:start_round1

execute if score starttimer1 starttimer matches 0.. run scoreboard players remove starttimer1 starttimer 1
execute if score starttimer1 starttimer matches 0.. run schedule function crossfire:timer1 1s