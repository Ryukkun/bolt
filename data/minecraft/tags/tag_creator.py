import os,time, pathlib
print("please input tag list")
tags = input("> ")
tags = tags.replace("minecraft:","")
tags = tags.split(",")
basic= "{\n    \"values\":[]\n}"

if (not os.path.isdir("./blocks")):
    os.makedirs("./blocks")
elif (not os.path.isdir("./items")):
    os.makedirs("./items")
elif (not os.path.isdir("./entity_types")):
    os.makedirs("./entity_types")
elif (not os.path.isdir("./fluids")):
    os.makedirs("./fluids")
elif (not os.path.isdir("./game_event")):
    os.makedirs("./game_event")

for i in tags:
    if i.startswith("block"):
        tag=i.replace("block:","./blocks/")+".json"
        pathlib.Path(tag).parent.mkdir(parents=True,exist_ok=True)
        f=open(tag,"w")
        f.write(basic)
        f.close
    elif i.startswith("item"):
        tag=i.replace("item:","./items/")+".json"
        pathlib.Path(tag).parent.mkdir(parents=True,exist_ok=True)
        f=open(tag,"w")
        f.write(basic)
        f.close
    elif i.startswith("entity_type"):
        tag=i.replace("entity_type:","./entity_types/")+".json"
        pathlib.Path(tag).parent.mkdir(parents=True,exist_ok=True)
        f=open(tag,"w")
        f.write(basic)
        f.close
    elif i.startswith("fluid"):
        tag=i.replace("fluid:","./fluids/")+".json"
        pathlib.Path(tag).parent.mkdir(parents=True,exist_ok=True)
        f=open(tag,"w")
        f.write(basic)
        f.close
    elif i.startswith("game_event"):
        tag=i.replace("game_event:","./game_events/")+".json"
        pathlib.Path(tag).parent.mkdir(parents=True,exist_ok=True)
        f=open(tag,"w")
        f.write(basic)
        f.close

print("done")
time.sleep(3)
