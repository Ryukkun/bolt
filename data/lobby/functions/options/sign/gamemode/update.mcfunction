#called to update the slected gamemode sign
# lobby:options/sign/gamemode/update

data modify block 11 47 0 front_text.messages[1] set from storage lobby:saved_options current.name.Text2
data modify block 11 47 0 front_text.messages[2] set from storage lobby:saved_options current.name.Text3
