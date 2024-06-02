import math
import os


os.chdir(os.path.dirname(os.path.abspath(__file__)))

currentFun = "manipulate-arrow:calc/sin"
kaisou = 9
nextLastAngles = []

# 角度は *100
# sin値は *10000

fileCount = 2**(kaisou-1)
nextAngle1Min = 0
for i2 in range(fileCount):
    sin1 = (i2 * 2) / (fileCount * 2 - 1) * 10000
    sin2 = (i2 * 2 + 1) / (fileCount * 2 - 1) * 10000
    sin3 = (i2 * 2 + 2) / (fileCount * 2 - 1) * 10000
    angle1 = math.degrees(math.asin(sin1/10000))
    angle2 = math.degrees(math.asin(sin2/10000))
    angle3 = 90 if sin2 == 10000 else math.degrees(math.asin(sin3/10000))
    angle1Min = nextAngle1Min
    angle2Min = round((angle1 + angle2) / 2 * 100)
    angle1Max = angle2Min - 1
    nextAngle1Min = round((angle2 + angle3) / 2 * 100)
    angle2Max = 9000 if sin2 == 10000 else nextAngle1Min - 1

    nextLastAngles.extend((angle1Min, angle2Max))

    with open(f"./{kaisou-1}/{i2}.mcfunction","w",) as f:
        f.write(f"execute if score $_in Ryukkun_temp matches {angle1Min}..{angle1Max} run scoreboard players set $out Ryukkun_temp {round(sin1)}\n"+
                f"execute if score $_in Ryukkun_temp matches {angle2Min}..{angle2Max} run scoreboard players set $out Ryukkun_temp {round(sin2)}"
                )


for i in range(kaisou-1, 0, -1):
    i -= 1
    os.makedirs(f"./{i}",exist_ok=True)
    fileCount = 2**i
    targetFileNum = 0
    lastAngles = nextLastAngles.copy()
    nextLastAngles.clear()

    for i2 in range(fileCount):
        angle1Min = lastAngles[i2*4]
        angle1Max = lastAngles[i2*4+1]
        angle2Min = lastAngles[i2*4+2]
        angle2Max = lastAngles[i2*4+3]
        nextLastAngles.extend((angle1Min, angle2Max))
        
        with open(f"./{i}/{i2}.mcfunction","w",) as f:
            f.write(f"execute if score $_in Ryukkun_temp matches {angle1Min}..{angle1Max} run function {currentFun}/{i+1}/{targetFileNum}\n"+
                    f"execute if score $_in Ryukkun_temp matches {angle2Min}..{angle2Max} run function {currentFun}/{i+1}/{targetFileNum+1}"
                    )
        targetFileNum += 2