summon minecraft:armor_stand ~ ~28 ~ {Tags:["supplycrate","diamond"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,tag:{CustomModelData:1}}],Invisible:1}
summon minecraft:armor_stand ~ ~28 ~ {Tags:["crate","diamond"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,tag:{CustomModelData:4}}],Invisible:1}
tellraw @a ["",{"text":"The diamond crate has appeared!","color":"gray"}]