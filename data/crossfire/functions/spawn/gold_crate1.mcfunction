summon minecraft:armor_stand ~ 91 ~ {Tags:["cleanup","supplycrate","gold"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,Marker:1b,tag:{CustomModelData:2}}],Invisible:1}
summon minecraft:armor_stand ~ 91 ~ {Tags:["cleanup","crate","gold"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Marker:1b,Count:10b,tag:{CustomModelData:4}}],Invisible:1}
tellraw @a[scores={map=1}] ["",{"text":"A "},{"text":"golden crate","color":"gold"},{"text":" has appeared above the arena!"}]
execute as @a[scores={map=1}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 2