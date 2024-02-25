from glob import glob
from pathlib import Path
import os
import re
import json
import ast

os.chdir(Path(__file__).parent)
re_text = re.compile(r'Text[1-4]')
re_data_merge = re.compile(r'(.*)data merge block (\S+ \S+ \S+) ({.+})')
re_setblock = re.compile(r'(.*setblock .*?)(\{.+\})(.*?)$')

def to_json(t:str):
    finds = re_text.findall(t)
    for find in finds:
        t = t.replace(find, f'"{find}"')

    return ast.literal_eval(t)


files = glob("./**/*.mcfunction",recursive=True)
for file in files:
    with open(file, "r") as f:
        texts = f.readlines()
    
    new_texts = []
    for text in texts:
        if re_text.findall(text): 
            #print(text.replace('\n','nnnnnnn'))
            if 'data merge block' in text:
                result = re_data_merge.match(text)
                prefix = result.group(1)
                position = result.group(2)
                json_text = to_json(result.group(3))
                
                if len(text_nums := re_text.findall(result.group(3))) < 4:
                    text = ''
                    for text_num in text_nums:
                        text += f'{prefix}data modify block {position} front_text.messages[{int(text_num[-1:])-1}] set value \'{json_text[text_num]}\'\n'
                    

                else:
                    #作るのめんどい
                    pass

            elif 'setblock' in text:
                result = re_setblock.match(text)
                not_json = result.group(1)
                json_text = to_json(result.group(2))
                suffix = result.group(3)

                message = ['\'""\'','\'""\'','\'""\'','\'""\'']
                for text_num in re_text.findall(result.group(2)):
                    num = int(text_num[-1:])
                    message[num-1] = f"'{json_text[text_num]}'"
                text = not_json+'{front_text:{messages:'+f'[{message[0]},{message[1]},{message[2]},{message[3]}]'+'}}'+suffix+'\n'


            else:
                #print(f'ERROR: {text}')
                pass
            
        new_texts.append(text)

    #print(''.join(new_texts))
    if (new_texts != texts):
        with open(file, "w") as f:
            f.writelines(new_texts)