file = open("generated\\collect_powerup2.mcfunction", "w+")

def s(txt):
    file.write(txt + "\n")

s("# Make it clear that a power up was collected")
s("execute if entity @s[tag=0] run playsound minecraft:block.note_block.chime master @a[scores={map=0}] ~ ~ ~ 1 0.5")
s("execute if entity @s[tag=1] run playsound minecraft:block.note_block.chime master @a[scores={map=1}] ~ ~ ~ 1 0.5")
s("execute if entity @s[tag=0] run tellraw @a[scores={map=0}] [\"\",{\"text\":\"A powerup was picked up, watch out!\"}]")
s("execute if entity @s[tag=1] run tellraw @a[scores={map=1}] [\"\",{\"text\":\"A powerup was picked up, watch out!\"}]")
s("")
s("# Destroy the drop")
s("kill @e[tag=drop,distance=..1,limit=1]")
s("")
s("# Give the drop to the nearest player")
s("scoreboard players set temp result 0")

# 0 - swiftness
# 1 - jump boost
# 2 - slow falling
# 3 - rapid fire
# 4 - multi shot
for xi in [0, 1, 2, 3, 4]:
    x = str(xi)
    for si in [4, 5, 6]:
        sj = str(si)
        if xi == 0:
            t = "potion{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:400}],CustomPotionColor:10806260,display:{Name:\"{\\\"color\\\":\\\"aqua\\\",\\\"text\\\":\\\"Swiftness II Potion\\\"}\"}}"
        if xi == 1:
            t = "potion{CustomPotionEffects:[{Id:8,Amplifier:4,Duration:400}],CustomPotionColor:1309504,display:{Name:\"{\\\"color\\\":\\\"green\\\",\\\"text\\\":\\\"Jump Boost V Potion\\\"}\"}}"
        if xi == 2:
            t = "potion{CustomPotionEffects:[{Id:28,Duration:400}],CustomPotionColor:16777215,display:{Name:\"{\\\"color\\\":\\\"gray\\\",\\\"text\\\":\\\"Slow Falling I Potion\\\"}\"}}"
        if xi == 3:
            t = "carrot_on_a_stick{CustomModelData:0,display:{Name:\"{\\\"color\\\":\\\"gold\\\",\\\"text\\\":\\\"Rapid Fire Powerup\\\"}\"}}"
        if xi == 4:
            t = "carrot_on_a_stick{CustomModelData:1,display:{Name:\"{\\\"color\\\":\\\"light_purple\\\",\\\"text\\\":\\\"Multishot Powerup\\\"}\"}}"
            
        s("execute if score temp result matches 0 if entity @s[tag=drop"+x+"] store success score temp result run execute if entity @a[distance=..1,limit=1,nbt={Inventory:[{Slot:"+sj+"b}]}] run replaceitem entity @s container."+sj+" "+t+" 1")
    s("")

s("# Tell the player they've been given something")
s("execute if entity @s[tag=!tutorial] run tellraw @s [\"\",{\"text\":\"You've picked up a power up, right click the item that was just added to your inventory to use it.\"}]")
s("tag @s add tutorial")
    
file.close()