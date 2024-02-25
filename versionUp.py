import os
import re
from pathlib import Path

os.chdir(Path(__file__).parent)

version = input("version >> ")
mcmeta = "./pack.mcmeta"
sidebar = "./data/lobby/functions/update_sidebar.mcfunction"
load = "./data/main/functions/load.mcfunction"

if not (result := re.match(r"(\d+)\.(\d+)\.(\d+)", version)):
    raise Exception("input Error")

ver0 = result.group(1)
ver1 = result.group(2)
ver2 = result.group(3)


with open(mcmeta,"r",encoding="utf-8") as f:
    text = f.read()

with open(mcmeta,"w",encoding="utf-8") as f:
    text = re.sub(r"1.4.0\+\d+\.\d+\.\d+", f"1.4.0+{version}", text, 1)
    f.write(text)


with open(sidebar,"r",encoding="utf-8") as f:
    text = f.read()

with open(sidebar,"w",encoding="utf-8") as f:
    text = re.sub(r"§7Ver:1.4.0\+\d+.\d+.\d+", f"§7Ver:1.4.0+{version}", text, 1)
    f.write(text)
    

with open(load,"r",encoding="utf-8") as f:
    text = f.read()

with open(load,"w",encoding="utf-8") as f:
    text = re.sub(r"data merge storage fox:main \{Version:\[\[1,4,0\],\[\d+,\d+,\d+\]\]\}", 'data merge storage fox:main {Version:[[1,4,0],['+f'{ver0},{ver1},{ver2}'+']]}', text, 1)
    f.write(text)