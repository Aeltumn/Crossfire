summon minecraft:armor_stand ~ 32 ~ {Tags:["supplycrate","iron"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,Marker:1b,tag:{CustomModelData:3}}],Invisible:1b}
summon minecraft:armor_stand ~ 32 ~ {Tags:["crate","iron"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,tag:{CustomModelData:4}}],Invisible:1b}
tellraw @a ["",{"text":"A crate has appeared!","color":"white"}]