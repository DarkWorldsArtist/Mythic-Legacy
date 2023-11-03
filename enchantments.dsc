VeinMiner:
    type: enchantment
    id: Veinminer
    debug: false
    data:
        description: Mines ores in a radius, scaling with level
    category: DIGGER
    slots:
       - mainhand
       - offhand
    rarity: very_rare
    full_name: <gold>Vein Miner <gray><context.level.to_roman_numerals>
    min_level: 1
    max_level: 5
    can_enchant: <context.item.advanced_matches[*pickaxe]>
    treasure_only: true
    is_tradable: true
    is_discoverable: true
VeinMinerLogic:
    type: world
    debug: false
    enabled: true
    events:
        after player breaks *ore:
            - ratelimit <player> 1t
            - if <player.item_in_hand.enchantment_map.contains[veinminer]>:
                - if !<player.is_sneaking>:
                    - foreach <context.location.find_blocks[<context.material.name>].within[2.5]>:
                        - drop <[value].drops[<player.item_in_hand>]> <[value]>
                        - drop xp quantity:<[value].xp_drop[<player.item_in_hand>]> <[value]>
                        - modifyblock <[value]> air

Lumberjack:
    type: enchantment
    id: Lumberjack
    debug: false
    category: DIGGER
    data:
        description: Chops logs in a radius, scaling with level.
    slots:
       - mainhand
       - offhand
    rarity: very_rare
    full_name: <Green>Lumberjack <gray><context.level.to_roman_numerals>
    min_level: 1
    max_level: 5
    can_enchant: <context.item.advanced_matches[*axe]>
    treasure_only: true
    is_tradable: true
    is_discoverable: true
LumberjackLogic:
    type: world
    debug: false
    enabled: true
    events:
        after player breaks *log:
            - ratelimit <player> 1t
            - if <player.item_in_hand.enchantment_map.contains[lumberjack]>:
                - if !<player.is_sneaking>:
                    - foreach <context.location.find_blocks[<context.material.name>].within[2.5]>:
                        - drop <[value].drops[<player.item_in_hand>]> <[value]>
                        - modifyblock <[value]> air

Bounty:
    type: enchantment
    id: Bounty
    debug: false
    category: DIGGER
    data:
        description: Harvests crops in a radius, scaling with level.
    slots:
       - mainhand
       - offhand
    rarity: very_rare
    full_name: <Blue>Bounty <gray><context.level.to_roman_numerals>
    min_level: 1
    max_level: 5
    can_enchant: <context.item.advanced_matches[*hoe]>
    treasure_only: true
    is_tradable: true
    is_discoverable: true
BountyLogic:
    type: world
    debug: false
    enabled: true
    events:
        after player breaks *crop:
            - ratelimit <player> 1t
            - if <player.item_in_hand.enchantment_map.contains[bounty]>:
                - if !<player.is_sneaking>:
                    - foreach <context.location.find_blocks[<context.material.name>].within[2.5]>:
                        - drop <[value].drops[<player.item_in_hand>]> <[value]>
                        - modifyblock <[value]> air