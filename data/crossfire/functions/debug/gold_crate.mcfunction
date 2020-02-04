summon minecraft:armor_stand ~ ~18 ~ {Tags:["supplycrate","gold"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,tag:{CustomModelData:2}}],Invisible:1}
summon minecraft:armor_stand ~ ~18 ~ {Tags:["crate","gold"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Count:10b,tag:{CustomModelData:4}}],Invisible:1}
tellraw @a ["",{"text":"A shiny crate has appeared!","color":"white"}]