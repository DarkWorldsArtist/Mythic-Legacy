ender_dragon_events:
  type: world
  debug: false
  events:
    on ender_dragon death:
      - define drops <list>
      - define rand <util.random_decimal>
      - if <context.entity.location.world.name> == world_the_end:
        - define drops <[drops].include[draconic_essence]>
        - if <[rand]> < 0.65:
          - define drops <[drops].include[draconic_essence]>
        - if <[rand]> < 0.45:
          - define drops <[drops].include[reflective_ruby]>
        - if <[rand]> < 0.35:
          - define drops <[drops].include[polished_plating]>
        - if <[rand]> < 0.35:
          - define drops <[drops].include[elytra]>
        - if <[rand]> < 0.30:
          - define drops <[drops].include[emerald_prism]>
        - if <[rand]> < 0.20:
          - define drops <[drops].include[pristine_diamond]>
        - if <[rand]> < 0.15:
          - define drops <[drops].include[refined_dark_steel]>
        - if <[rand]> < 0.10:
          - define drops <[drops].include[drakeheart_relic]>
        - if <[rand]> < 0.05:
          - define drops <[drops].include[orikalkum]>
        - determine <[drops]>

wither_events:
  type: world
  debug: false
  events:
    on wither death:
      - define drops <context.drops>
      - define rand <util.random_decimal>
      - if <context.entity.location.world.name> == s2:
        - define drops <[drops].include[withering_essence]>
        - if <[rand]> < 0.65:
          - define drops <[drops].include[withering_essence]>
        - if <[rand]> < 0.55:
          - define drops <[drops].include[reflective_ruby]>
        - if <[rand]> < 0.40:
          - define drops <[drops].include[polished_plating]>
        - if <[rand]> < 0.40:
          - define drops <[drops].include[emerald_prism]>
        - if <[rand]> < 0.30:
          - define drops <[drops].include[pristine_diamond]>
        - if <[rand]> < 0.25:
          - define drops <[drops].include[refined_dark_steel]>
        - if <[rand]> < 0.15:
          - define drops <[drops].include[nether_star]>
        - if <[rand]> < 0.10:
          - define drops <[drops].include[netherbane_relic]>
        - if <[rand]> < 0.10:
          - define drops <[drops].include[orikalkum]>
        - determine <[drops]>

warden_events:
  type: world
  debug: false
  events:
    on warden death:
      - define drops <context.drops>
      - define rand <util.random_decimal>
      - if <context.entity.location.world.name> == s2:
        - define drops <[drops].include[sculk_catalyst|echoing_essence]>
        - if <[rand]> < 0.65:
          - define drops <[drops].include[echoing_essence]>
        - if <[rand]> < 0.65:
          - define drops <[drops].include[echoing_essence]>
        - if <[rand]> < 0.45:
          - define drops <[drops].include[recovery_compass]>
        - if <[rand]> < 0.35:
          - define drops <[drops].include[reflective_ruby]>
        - if <[rand]> < 0.30:
          - define drops <[drops].include[polished_plating]>
        - if <[rand]> < 0.25:
          - define drops <[drops].include[emerald_prism]>
        - if <[rand]> < 0.15:
          - define drops <[drops].include[pristine_diamond]>
        - if <[rand]> < 0.10:
          - define drops <[drops].include[refined_dark_steel]>
        - if <[rand]> < 0.10:
          - define drops <[drops].include[resonant_relic]>
        - if <[rand]> < 0.03:
          - define drops <[drops].include[orikalkum]>
        - determine <[drops]>

guardian_events:
  type: world
  debug: false
  events:
    on elder_guardian death:
      - define drops <context.drops>
      - if !<context.entity.from_spawner>:
        - define rand <util.random_decimal>
      - else:
        - define rand <util.random.decimal[1].to[3]>
      - if <context.entity.location.world.name> == s2:
          - define drops <[drops].include[guardian_spine]>
          - determine <[drops]>

blaze_events:
  type: world
  debug: false
  events:
    on blaze death:
      - define drops <context.drops>
      - if !<context.entity.from_spawner>:
        - define rand <util.random_decimal>
      - else:
        - define rand <util.random.decimal[0].to[3]>
      - if <context.entity.location.world.name> == world_nether:
          - define drops <[drops].include[blaze_essence]>
          - determine <[drops]>

#drop logic for resources

deepslate_dark_iron:
  type: world
  events:
    on player breaks deepslate_iron_ore:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*pickaxe]>
      - stop if:<player.item_in_hand.enchantment_map.contains[silk_touch]>
      - stop if:<player.gamemode.equals[creative]>
      - determine <context.location.drops[<player.item_in_hand>].include[dark_iron_nugget[quantity=<util.random.int[1].to[3]>]]>

deepslate_ruby:
  type: world
  events:
    on player breaks deepslate_redstone_ore:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*pickaxe]>
      - stop if:<player.item_in_hand.enchantment_map.contains[silk_touch]>
      - stop if:<player.gamemode.equals[creative]>
      - if <util.random_chance[30]>:
        - determine <context.location.drops[<player.item_in_hand>].include[reflective_ruby[quantity=<util.random.int[0].to[2]>]]>

deepslate_diamond:
  type: world
  events:
    on player breaks deepslate_diamond_ore:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*pickaxe]>
      - stop if:<player.item_in_hand.enchantment_map.contains[silk_touch]>
      - stop if:<player.gamemode.equals[creative]>
      - if <util.random_chance[01]>:
        - determine <context.location.drops[<player.item_in_hand>].include[pristine_diamond[quantity=<util.random.int[1].to[3]>]]>

diamond_ore_gem:
  type: world
  events:
    on player breaks diamond_ore:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*pickaxe]>
      - stop if:<player.item_in_hand.enchantment_map.contains[silk_touch]>
      - stop if:<player.gamemode.equals[creative]>
      - if <util.random_chance[0.001]>:
        - determine <context.location.drops[<player.item_in_hand>].include[abyss_gem[quantity=<util.random.int[1].to[1]>]]>

obsidian_plates:
  type: world
  events:
    on player breaks obsidian:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*pickaxe]>
      - stop if:<player.gamemode.equals[creative]>
      - if <util.random_chance[01]>:
        - determine <context.location.drops[<player.item_in_hand>].include[obsidian_plate[quantity=<util.random.int[1].to[1]>]]>

deepslate_emerald:
  type: world
  events:
    on player breaks deepslate_emerald_ore:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*pickaxe]>
      - stop if:<player.item_in_hand.enchantment_map.contains[silk_touch]>
      - stop if:<player.gamemode.equals[creative]>
      - if <util.random_chance[10]>:
        - determine <context.location.drops[<player.item_in_hand>].include[emerald_prism[quantity=<util.random.int[1].to[3]>]]>

judicious_shard_script:
  type: world
  events:
    on player breaks amethyst_block:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*pickaxe]>
      - stop if:<player.item_in_hand.enchantment_map.contains[silk_touch]>
      - stop if:<player.gamemode.equals[creative]>
      - if <util.random_chance[10]>:
        - determine <context.location.drops[<player.item_in_hand>].include[judicious_shard[quantity=<util.random.int[1].to[3]>]]>

resilient_vine_script:
  type: world
  events:
    on player breaks vine:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*shears]>
      - stop if:<player.item_in_hand.enchantment_map.contains[silk_touch]>
      - stop if:<player.gamemode.equals[creative]>
      - if <util.random_chance[40]>:
        - determine <context.location.drops[<player.item_in_hand>].include[resilient_vine[quantity=<util.random.int[1].to[3]>]]>

pliant_cane_script:
  type: world
  events:
    on player breaks bamboo:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*axe]>
      - stop if:<player.item_in_hand.enchantment_map.contains[silk_touch]>
      - stop if:<player.gamemode.equals[creative]>
      - if <util.random_chance[05]>:
        - determine <context.location.drops[<player.item_in_hand>].include[pliant_cane[quantity=<util.random.int[1].to[3]>]]>

frogspawn_script:
  type: world
  events:
    on player breaks frogspawn:
      - stop if:!<context.should_drop_items>
      - stop if:!<player.item_in_hand.advanced_matches[*shears]>
      - stop if:!<player.item_in_hand.enchantment_map.contains[silk_touch]>
      - stop if:<player.gamemode.equals[creative]>
      - determine <context.location.drops[<player.item_in_hand>].include[frogspawn[quantity=<util.random.int[1].to[3]>]]>

villager_events:
  type: world
  debug: false
  events:
    on wandering_trader death:
      - determine opulent_fragment
    on villager death:
      - if <list[DROWNED|ZOMBIE|HUSK|ZOMBIE_VILLAGER].contains[<context.damager.entity_type||none>]>:
        - stop
      - if <util.random_decimal> < 0.2:
        - determine opulent_fragment