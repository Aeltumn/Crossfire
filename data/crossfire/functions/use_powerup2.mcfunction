# Rapid Fire
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:0}}}] run effect give @s minecraft:unluck 20 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:0}}}] at @s run playsound minecraft:item.armor.equip_diamond master @a ~ ~ ~
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:0}}}] run replaceitem entity @s weapon.mainhand air

# Multishot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run effect give @s minecraft:luck 20 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] at @s run playsound minecraft:item.armor.equip_diamond master @a ~ ~ ~
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run replaceitem entity @s weapon.mainhand air