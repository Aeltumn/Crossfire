summon minecraft:armor_stand ~ 45 ~ {Tags:["supplycrate","diamond","tprot"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Marker:1b,Count:10b,tag:{CustomModelData:1}}],Invisible:1}
summon minecraft:armor_stand ~ 45 ~ {Tags:["crate","diamond","tprot"],NoGravity:1b,ArmorItems:[{},{},{},{id:"gold_ingot",Marker:1b,Count:10b,tag:{CustomModelData:4}}],Invisible:1}
tp @e[tag=tprot] ~ ~ ~ ~ ~
tag @e[tag=tprot] remove tprot
tellraw @a ["",{"text":"The diamond crate has appeared!","color":"white"}]