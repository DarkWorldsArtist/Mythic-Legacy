CustomEnchants:
    type: inventory
    inventory: chest
    title: <reset><bold><&color[#c64fbd]><element[Custom Enchants]>
    gui: true
    debug: false
    procedural items:
    - foreach <server.enchantments.filter_tag[<enchantment[<[filter_value]>].script.exists>]> as:enchant:
        - define lore <enchantment[<[enchant]>].full_name[<[enchant].max_level>]>
        - define "lore:->:<n><gray>---Description---<n><gray><[enchant].script.data_key[data.description].parse_minimessage||<gray>No Description>"
        - if <[enchant].script.data_key[data.locked].exists>:
            - define "lore:->:<red>This item must be unlocked"
        - define item enchanted_book[enchantments=<[enchant]>,<[enchant].max_level>;lore=<[lore]>]
        - if !<[enchant].data_key[data.hidden]||false>:
            - define list:->:<[item]>
    - determine <[list].if_null[]>
    slots:
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []


CustomEnchantsCommand:
    type: command
    debug: false
    usage: /enchants
    name: enchants
    description: Displays custom enchantments and their max levels, as well as effects.
    script:
        - inventory open d:enchants