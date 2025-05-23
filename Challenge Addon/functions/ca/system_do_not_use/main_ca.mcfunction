# If its execute from a player
execute if entity @s[tag=!trust_player_control] run tellraw @s {"rawtext":[{"text":"§l§6[§eError§6]§r You do not have the necessary permissions for this action. Current players who could grant you this permission: §l"},{"selector": "@a[tag=trust_player_control]"}]}
execute if entity @s[tag=!trust_player_control] unless score custom_music timer_settings matches 1 run playsound block.false_permissions
execute if entity @s[tag=!trust_player_control] if score custom_music timer_settings matches 1 run playsound timeru.function_no_permissions @s


execute if entity @s[tag=trust_player_control] run tellraw @s {"rawtext":[{"text":"§l§4[§cError§4]§r This function is running already"}]}
execute if entity @s[tag=trust_player_control] unless score custom_music timer_settings matches 1 run playsound random.enderchestopen @s ~~~ 1 0.5
execute if entity @s[tag=trust_player_control] if score custom_music timer_settings matches 1 run playsound timeru.function_system @s

# Smart-Enchnat
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a density 5
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a wind_burst 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a protection 4
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a mending
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a unbreaking 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a aqua_affinity
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a thorns 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a respiration 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a depth_strider 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a feather_falling 4
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a soul_speed 3
execute if score mode timer_settings matches 0..1 if score goal timer_settings matches 2 if score enchant timer_addon matches 1.. run enchant @a smite 5
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a sharpness 5
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a looting 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a knockback
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a fire_aspect 2
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a power 5
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a punch 2
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a flame
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a efficiency 5
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a lure 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a luck_of_the_sea 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a quick_charge 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a multishot
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a impaling 5
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a loyalty 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a channeling
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a fortune 3
execute if score mode timer_settings matches 0..1 if score enchant timer_addon matches 1.. run enchant @a swift_sneak 3

# speed x
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score speed_x timer_addon matches 1 run effect @e clear speed
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score speed_x timer_addon matches 1 run effect @e speed 83 11 true

# invisibility
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score invisibility timer_addon matches 1 run effect @e clear invisibility
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score invisibility timer_addon matches 1 run effect @e invisibility 83 0 true

# gravity
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score gravity timer_addon matches 1 run effect @e clear levitation
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score gravity timer_addon matches 1 run effect @e clear slow_falling
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score gravity timer_addon matches 1 run effect @e[tag=!sneak_for_ice] levitation 83 3 true
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score gravity timer_addon matches 1 run effect @e[tag=sneak_for_ice] slow_falling 83 0 true

# ice_challenge
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score ice_challenge timer_addon matches 1 at @a[tag=sneak_for_ice] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 packed_ice replace air
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score ice_challenge timer_addon matches 1 at @a[tag=sneak_for_ice] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 packed_ice replace water
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score ice_challenge timer_addon matches 1 at @a[tag=sneak_for_ice] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 packed_ice replace lava
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score ice_challenge timer_addon matches 1 at @a[tag=sneak_for_ice] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 packed_ice replace powder_snow

# floor_is_lava
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score floor_is_lava timer_addon matches 1 if score ms timer_time matches 0 at @a unless block ~ ~-1 ~ air unless block ~ ~ ~ water unless block ~ ~ ~ tallgrass run setblock ~ ~-1 ~ lava
execute if score mode timer_settings matches 1 if score do_count timer_settings matches 1 if score floor_is_lava timer_addon matches 1 if score ms timer_time matches 50 at @a unless block ~ ~-1 ~ air unless block ~ ~ ~ water unless block ~ ~ ~ tallgrass run setblock ~ ~-1 ~ lava


### Feedback at actionbar for Enchant
# Title when someone in the main-menu is
execute if score mode timer_settings matches 0 if score speed_run timer_settings matches 0 unless score difficulty timer_settings matches 2.. if score enchant timer_addon matches 1.. if score shoud_count_down timer_settings matches 1 run titleraw @a[scores={timer_show_actionbar=1}, tag=trust_player_control] actionbar {"rawtext":[{"text":"§9Enchant§r §5("},{"score":{"name":"h","objective":"timer_time"}},{"text":"h "},{"score":{"name":"min","objective":"timer_time"}},{"text":"m "},{"score":{"name":"sec","objective":"timer_time"}},{"text":"s) §b§oby TheFelixLive"}]}
execute if score mode timer_settings matches 0 if score speed_run timer_settings matches 0 if score difficulty timer_settings matches 2.. if score enchant timer_addon matches 1.. if score shoud_count_down timer_settings matches 1 run titleraw @a[scores={timer_show_actionbar=1}, tag=trust_player_control] actionbar {"rawtext":[{"text":"§9Enchant§r §c("},{"score":{"name":"h","objective":"timer_time"}},{"text":"h "},{"score":{"name":"min","objective":"timer_time"}},{"text":"m "},{"score":{"name":"sec","objective":"timer_time"}},{"text":"s) §b§oby TheFelixLive"}]}

execute if score mode timer_settings matches 0 if score speed_run timer_settings matches 0 unless score difficulty timer_settings matches 2.. if score enchant timer_addon matches 1.. if score shoud_count_down timer_settings matches 0 run titleraw @a[scores={timer_show_actionbar=1}, tag=trust_player_control] actionbar {"rawtext":[{"text":"§9Enchant§r §b§oby TheFelixLive"}]}

# for player thay dont have the trust_player_control
execute if score mode timer_settings matches 0 if score speed_run timer_settings matches 0 unless score difficulty timer_settings matches 2.. if score enchant timer_addon matches 1.. run titleraw @a[scores={timer_show_actionbar=1}, tag=!trust_player_control] actionbar {"rawtext":[{"text":"§9Enchant§r §b§oby TheFelixLive"}]}

execute if score mode timer_settings matches 0 if score speed_run timer_settings matches 0 if score difficulty timer_settings matches 2 if score enchant timer_addon matches 1.. if score shoud_count_down timer_settings matches 0 run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9Enchant §4[§cHardcore Mode§4]§r §b§oby TheFelixLive"}]}
execute if score mode timer_settings matches 0 if score speed_run timer_settings matches 0 if score difficulty timer_settings matches 3 if score enchant timer_addon matches 1.. if score shoud_count_down timer_settings matches 0 run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9Enchant §4[§cUltra Hardcore§4]§r §b§oby TheFelixLive"}]}
execute if score mode timer_settings matches 0 if score speed_run timer_settings matches 0 if score difficulty timer_settings matches 4 if score enchant timer_addon matches 1.. if score shoud_count_down timer_settings matches 0 run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9Enchant §4[§7Infinity§4]§r §b§oby TheFelixLive"}]}

# Normal

# time_second
execute if score do_count timer_settings matches 1 if score speed_run timer_settings matches 0 if score mode timer_settings matches 1 if score difficulty timer_settings matches 0..1 if score enchant timer_addon matches 1.. if score sec timer_time matches 0.. if score min timer_time matches 0 if score h timer_time matches 0 run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9"},{"score":{"name":"sec","objective":"timer_time"}},{"text":"s"}]}

# time_minuten
execute if score do_count timer_settings matches 1 if score speed_run timer_settings matches 0 if score mode timer_settings matches 1 if score difficulty timer_settings matches 0..1 if score enchant timer_addon matches 1.. if score sec timer_time matches 0 if score min timer_time matches 1.. if score h timer_time matches 0 run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9"},{"score":{"name":"min","objective":"timer_time"}},{"text":"m"}]}
execute if score do_count timer_settings matches 1 if score speed_run timer_settings matches 0 if score mode timer_settings matches 1 if score difficulty timer_settings matches 0..1 if score enchant timer_addon matches 1.. if score sec timer_time matches 1.. if score min timer_time matches 1.. if score h timer_time matches 0 run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9"},{"score":{"name":"min","objective":"timer_time"}},{"text":"m "},{"score":{"name":"sec","objective":"timer_time"}},{"text":"s"}]}


# time_hours
execute if score do_count timer_settings matches 1 if score speed_run timer_settings matches 0 if score mode timer_settings matches 1 if score difficulty timer_settings matches 0..1 if score enchant timer_addon matches 1.. if score sec timer_time matches 0 if score min timer_time matches 0 if score h timer_time matches 1.. run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9"},{"score":{"name":"h","objective":"timer_time"}},{"text":"h"}]}
execute if score do_count timer_settings matches 1 if score speed_run timer_settings matches 0 if score mode timer_settings matches 1 if score difficulty timer_settings matches 0..1 if score enchant timer_addon matches 1.. if score sec timer_time matches 1.. if score min timer_time matches 0 if score h timer_time matches 1.. run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9"},{"score":{"name":"h","objective":"timer_time"}},{"text":"h "},{"score":{"name":"sec","objective":"timer_time"}},{"text":"s"}]}
execute if score do_count timer_settings matches 1 if score speed_run timer_settings matches 0 if score mode timer_settings matches 1 if score difficulty timer_settings matches 0..1 if score enchant timer_addon matches 1.. if score sec timer_time matches 0 if score min timer_time matches 1.. if score h timer_time matches 1.. run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9"},{"score":{"name":"h","objective":"timer_time"}},{"text":"h "},{"score":{"name":"min","objective":"timer_time"}},{"text":"m"}]}
execute if score do_count timer_settings matches 1 if score speed_run timer_settings matches 0 if score mode timer_settings matches 1 if score difficulty timer_settings matches 0..1 if score enchant timer_addon matches 1.. if score sec timer_time matches 1.. if score min timer_time matches 1.. if score h timer_time matches 1.. run titleraw @a[scores={timer_show_actionbar=1}] actionbar {"rawtext":[{"text":"§9"},{"score":{"name":"h","objective":"timer_time"}},{"text":"h "},{"score":{"name":"min","objective":"timer_time"}},{"text":"m "},{"score":{"name":"sec","objective":"timer_time"}},{"text":"s"}]}


### if the timer lauched before the addon was aktivieren
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run tellraw @a {"rawtext":[{"text":"§l§3[§bAddon§3]§r The challenge addon has been detected and can be used!"}]}

execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard objectives add timer_addon dummy

execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set speed_x timer_addon 0
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set invisibility timer_addon 0
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set ice_challenge timer_addon 0
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set only timer_addon 0
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set floor_is_lava timer_addon 0
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set gravity timer_addon 0
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set level_equals_border timer_addon 0
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set movement_severely_restricted timer_addon 0
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set movement_sneaking timer_addon 0
execute unless score enchant timer_addon matches 0.. unless score look timer_setup matches 0.. run scoreboard players set enchant timer_addon 0

# stop_lauching
execute if score enchant timer_addon matches 0.. if score look timer_setup matches 1 run tellraw @a {"rawtext":[{"text":"§l§3[§bAddon§3]§r The challenge addon has been successfully the world will shout down!"}]}
execute if score enchant timer_addon matches 0.. if score look timer_setup matches 1 run scriptevent timeru:remove
execute if score enchant timer_addon matches 0.. if score look timer_setup matches 1 run scoreboard objectives remove timer_addon
