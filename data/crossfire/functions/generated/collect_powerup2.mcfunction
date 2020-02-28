# Make it clear that a power up was collected
execute if entity @s[tag=0] run playsound minecraft:block.note_block.chime master @a[scores={map=0}] ~ ~ ~ 1 0.5
execute if entity @s[tag=1] run playsound minecraft:block.note_block.chime master @a[scores={map=1}] ~ ~ ~ 1 0.5
execute if entity @s[tag=0] run tellraw @a[scores={map=0}] ["",{"text":"A powerup was picked up, watch out!"}]
execute if entity @s[tag=1] run tellraw @a[scores={map=1}] ["",{"text":"A powerup was picked up, watch out!"}]

# Destroy the drop
kill @e[tag=drop,distance=..1,limit=1]

# Give the drop to the nearest player
scoreboard players set temp result 0
execute if score temp result matches 0 if entity @s[tag=drop0] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:4b}]}] run replaceitem entity @s container.4 potion{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:400}],CustomPotionColor:10806260,display:{Name:"{\"color\":\"aqua\",\"italic\":false,\"text\":\"Swiftness II Potion\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop0] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:5b}]}] run replaceitem entity @s container.5 potion{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:400}],CustomPotionColor:10806260,display:{Name:"{\"color\":\"aqua\",\"italic\":false,\"text\":\"Swiftness II Potion\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop0] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:6b}]}] run replaceitem entity @s container.6 potion{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:400}],CustomPotionColor:10806260,display:{Name:"{\"color\":\"aqua\",\"italic\":false,\"text\":\"Swiftness II Potion\"}"}} 1

execute if score temp result matches 0 if entity @s[tag=drop1] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:4b}]}] run replaceitem entity @s container.4 potion{CustomPotionEffects:[{Id:8,Amplifier:4,Duration:400}],CustomPotionColor:1309504,display:{Name:"{\"color\":\"green\",\"italic\":false,\"text\":\"Jump Boost V Potion\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop1] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:5b}]}] run replaceitem entity @s container.5 potion{CustomPotionEffects:[{Id:8,Amplifier:4,Duration:400}],CustomPotionColor:1309504,display:{Name:"{\"color\":\"green\",\"italic\":false,\"text\":\"Jump Boost V Potion\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop1] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:6b}]}] run replaceitem entity @s container.6 potion{CustomPotionEffects:[{Id:8,Amplifier:4,Duration:400}],CustomPotionColor:1309504,display:{Name:"{\"color\":\"green\",\"italic\":false,\"text\":\"Jump Boost V Potion\"}"}} 1

execute if score temp result matches 0 if entity @s[tag=drop2] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:4b}]}] run replaceitem entity @s container.4 potion{CustomPotionEffects:[{Id:28,Duration:400}],CustomPotionColor:16777215,display:{Name:"{\"color\":\"gray\",\"italic\":false,\"text\":\"Slow Falling I Potion\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop2] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:5b}]}] run replaceitem entity @s container.5 potion{CustomPotionEffects:[{Id:28,Duration:400}],CustomPotionColor:16777215,display:{Name:"{\"color\":\"gray\",\"italic\":false,\"text\":\"Slow Falling I Potion\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop2] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:6b}]}] run replaceitem entity @s container.6 potion{CustomPotionEffects:[{Id:28,Duration:400}],CustomPotionColor:16777215,display:{Name:"{\"color\":\"gray\",\"italic\":false,\"text\":\"Slow Falling I Potion\"}"}} 1

execute if score temp result matches 0 if entity @s[tag=drop3] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:4b}]}] run replaceitem entity @s container.4 carrot_on_a_stick{CustomModelData:0,display:{Name:"{\"color\":\"gold\",\"italic\":false,\"text\":\"Rapid Fire Powerup\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop3] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:5b}]}] run replaceitem entity @s container.5 carrot_on_a_stick{CustomModelData:0,display:{Name:"{\"color\":\"gold\",\"italic\":false,\"text\":\"Rapid Fire Powerup\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop3] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:6b}]}] run replaceitem entity @s container.6 carrot_on_a_stick{CustomModelData:0,display:{Name:"{\"color\":\"gold\",\"italic\":false,\"text\":\"Rapid Fire Powerup\"}"}} 1

execute if score temp result matches 0 if entity @s[tag=drop4] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:4b}]}] run replaceitem entity @s container.4 carrot_on_a_stick{CustomModelData:1,display:{Name:"{\"color\":\"light_purple\",\"italic\":false,\"text\":\"Multishot Powerup\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop4] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:5b}]}] run replaceitem entity @s container.5 carrot_on_a_stick{CustomModelData:1,display:{Name:"{\"color\":\"light_purple\",\"italic\":false,\"text\":\"Multishot Powerup\"}"}} 1
execute if score temp result matches 0 if entity @s[tag=drop4] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:6b}]}] run replaceitem entity @s container.6 carrot_on_a_stick{CustomModelData:1,display:{Name:"{\"color\":\"light_purple\",\"italic\":false,\"text\":\"Multishot Powerup\"}"}} 1

# Tell the player they've been given something
execute if entity @s[tag=!tutorial] run tellraw @s ["",{"text":"You've picked up a power up, right click the item that was just added to your inventory to use it."}]
tag @s add tutorial