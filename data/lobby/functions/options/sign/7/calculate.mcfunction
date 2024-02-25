# called to calculate how long the time limit is
# lobby:options/sign/7/calculate | lobby:options/sign/7/update

scoreboard players operation optionsCaculation cm_miscellaneous = maxGameTime gm_options
scoreboard players operation optionsCaculation cm_miscellaneous /= #minute cm_miscellaneous

data modify block ~ ~ ~ front_text.messages[2] set value '["",{"score":{"name":"optionsCaculation","objective":"cm_miscellaneous"},"color":"gold"},{"text":" minutes","color":"gold"}]'
data modify block ~ ~ ~ front_text.messages[3] set value '{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 7"}}'
