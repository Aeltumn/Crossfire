summon minecraft:armor_stand ~ 85 ~ {Tags:["cleanup","supplycrate","iron"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,Marker:1b,tag:{CustomModelData:3}}],Invisible:1b}
summon minecraft:armor_stand ~ 85 ~ {Tags:["cleanup","crate","iron"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Marker:1b,Count:10b,tag:{CustomModelData:4}}],Invisible:1b}
tellraw @a[scores={map=0}] ["",{"text":"An "},{"text":"iron crate","color":"gray"},{"text":" has appeared above the arena!"}]
execute as @a[scores={map=0}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 1