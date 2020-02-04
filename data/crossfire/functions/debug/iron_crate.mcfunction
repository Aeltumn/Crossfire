summon minecraft:armor_stand ~ ~12 ~ {Tags:["supplycrate","iron"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,tag:{CustomModelData:3}}],Invisible:1}
summon minecraft:armor_stand ~ ~12 ~ {Tags:["crate","iron"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,tag:{CustomModelData:4}}],Invisible:1}
tellraw @a ["",{"text":"A crate has appeared!","color":"gray"}]