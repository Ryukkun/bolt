@echo off

del .\bolt_1.16.x.zip
del .\bolt_1.17.x.zip
del .\bolt_1.19.x.zip
del .\bolt_1.20.x.zip

git clone -b 1.16.5 https://github.com/Ryukkun/bolt.git bolt_1.16.x
git clone -b 1.17.1 https://github.com/Ryukkun/bolt.git bolt_1.17.x
git clone -b 1.19.4 https://github.com/Ryukkun/bolt.git bolt_1.19.x
git clone -b 1.20.4 https://github.com/Ryukkun/bolt.git bolt_1.20.x


cd %~dp0\bolt_1.16.x
7z a bolt_1.16.x.zip data README.md pack.mcmeta > nul

cd %~dp0\bolt_1.17.x
7z a bolt_1.17.x.zip data README.md pack.mcmeta > nul

cd %~dp0\bolt_1.19.x
7z a bolt_1.19.x.zip data README.md pack.mcmeta > nul

cd %~dp0\bolt_1.20.x
7z a bolt_1.20.x.zip data README.md pack.mcmeta > nul


cd %~dp0
move .\bolt_1.16.x\bolt_1.16.x.zip .\
move .\bolt_1.17.x\bolt_1.17.x.zip .\
move .\bolt_1.19.x\bolt_1.19.x.zip .\
move .\bolt_1.20.x\bolt_1.20.x.zip .\