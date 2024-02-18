# called to calculate how long the time limit is
# lobby:options/sign/7/calculate | lobby:options/sign/7/update

scoreboard players operation optionsCaculation cm_miscellaneous = maxGameTime gm_options
scoreboard players operation optionsCaculation cm_miscellaneous /= #minute cm_miscellaneous

data merge block ~ ~ ~ {Text3:"[\"\",{\"score\":{\"name\":\"optionsCaculation\",\"objective\":\"cm_miscellaneous\"},\"color\":\"gold\"},{\"text\":\" minutes\",\"color\":\"gold\"}]",Text4:'{"text":"","clickEvent":{"action":"run_command","value":"trigger lb_optionTrig set 7"}}'}
