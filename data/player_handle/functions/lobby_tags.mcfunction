# called to give people tags to define there lobby team
tag @a remove gfd_creator
tag @a remove creator
tag @a remove gfd
tag @a remove heart
tag @a remove normal

# Creators:
# kruthers, hellicar, chicken
tag daf899f1-86ee-4204-a6f0-47d59427fdfd add gfd_creator
tag 259d98dd-0a9f-4a7d-8074-4dab012e5eb3 add gfd_creator
tag 94058df3-4408-4b74-b9a6-ea7e37585553 add gfd_creator

# panda_kruthers, Asometric, Qu1nten, Marhjo, Chopper2112,
tag 450b20c9-68d7-4bef-9adb-a1c69a09e153 add creator
tag b249813e-68b2-4549-9057-a4af4b21203e add creator
tag d3b923c6-528c-4b90-8fea-05bb00683c7e add creator
tag 05688f80-37b3-47a2-a44d-05491fc83520 add creator
tag bc6823d2-bf31-4d04-9e19-7d66aa08c8e3 add creator


# GFD
# Giovata, Raptor, dragon, fed
tag 38e515f6-9cb2-47fe-ad8c-a9a62997367b add gfd
tag eebddadf-c347-4488-b823-c309ce095ebf add gfd
tag ebdca2ea-c5b8-4328-a43e-6a91b405b18b add gfd
tag 575522d9-b550-465c-a390-c07a6654c94a add gfd
#> tag UUID add gfd

# Heart
# _tsts_, Ds43m, BartTheBart, Suso, DrBracewell, Nicky715, hentor5, TheSneakinSpider, InternetAlien, SirSheepe, Aura_Mancer, Bemo97, Elsfic
tag a439c59b-29d4-4390-9c99-2ea9589afb4c add heart
tag 5d176d8e-0e2b-4248-afe7-874ba9b63b6d add heart
tag c903ba22-5fa9-40f2-98dd-16af12158345 add heart
tag c20bf086-555f-4407-aed7-3102c1c3935b add heart
tag 4bf805f8-c544-46aa-9745-1c7ddd873140 add heart
tag dc50527d-e57b-4aa8-bf78-b1ce5cde2278 add heart
tag 8d66db5e-a90b-4137-8548-08b97e0ca5c7 add heart
tag 8fbea306-24fc-4761-a7ee-2dd369ca9890 add heart
tag fbeac4f6-5c66-40a2-889d-d7c417e87053 add heart
tag ddb37577-1b38-47d9-b005-6aee46a5ade1 add heart
tag 2fc06467-88c5-4aa2-a767-241df3e3e57b add heart
tag 15c66cf3-92d6-4956-991c-7b3716631d9e add heart
tag c104427f-c12b-427e-ae24-052c556b0d70 add heart
# MrFalconIX, Fackyd, Huider_Speed, 6ato
tag 041b1117-95f2-437e-b10e-9a5c597eaab7 add heart
tag c02cbde7-b5f5-4e9b-bcb2-5601d33d1855 add heart
tag 980a4682-e76c-4d21-a57e-582aa52ce463 add heart
tag 77c47efa-c512-42dc-83c4-2142ad1ef699 add heart
#> tag UUID add heart


#normal role
tag @a[tag=!creator,tag=!gfd,tag=!heart,tag=!gfd_creator] add normal
function lobby:team/join/lobby
