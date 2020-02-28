# Rapid Fire
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:0}}}] run effect give @s minecraft:unluck 20 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:0}}}] at @s run playsound minecraft:item.armor.equip_diamond master @a ~ ~ ~
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:0}}}] run replaceitem entity @s weapon.mainhand air

# Multishot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run effect give @s minecraft:luck 20 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] at @s run playsound minecraft:item.armor.equip_diamond master @a ~ ~ ~
# Give the multishot crossbow if you already have a reloaded crossbow
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] if entity @s[tag=givecrossbow,tag=!spectating,tag=!died,predicate=crossfire:has_multishot] if score @s timer matches 40.. run function crossfire:give_crossbow_multishot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run replaceitem entity @s weapon.mainhand air

# Map switch items
scoreboard players set temp3 result 0
execute store success score temp3 result if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] as @s run function crossfire:change_map
execute if score temp3 result matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] as @s run function crossfire:change_map