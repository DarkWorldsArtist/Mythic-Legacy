reinforced_elytra:
  type: item
  debug: false
  material: elytra
  data:
    discover: true
  enchantments:
    - PROTECTION_ENVIRONMENTAL:8
    - PROTECTION_EXPLOSIONS:8
    - PROTECTION_FIRE:8
  mechanisms:
    custom_model_data: 1
    attribute_modifiers:
      generic_knockback_resistance:
        1:
          operation: add_number
          amount: 1
          slot: chest
      generic_armor_toughness:
        1:
          operation: add_number
          amount: 7
          slot: chest
      generic_armor:
        1:
          operation: add_number
          amount: 9
          slot: chest
  lore:
    - <&color[#346eeb]>Elytra reinforced with the
    - <&color[#346eeb]>very essence of flight and
    - <&color[#346eeb]>strengthened by an ancient
    - <&color[#346eeb]>metal long forgotten.
  flags:
    custom_durability:
      max: 2000
      current: 0
  recipes:
    1:
      type: shaped
      input:
      - orikalkum|Drakeheart_relic|orikalkum
      - Drakeheart_relic|flight_rune|Drakeheart_relic
      - orikalkum|Drakeheart_relic|orikalkum
  display name: <&color[#346eeb]>Reinforced Elytra

riftwalker_helm:
  type: item
  debug: false
  material: netherite_helmet
  data:
    discover: true
  mechanisms:
    custom_model_data: 1
    unbreakable: true
    attribute_modifiers:
      generic_knockback_resistance:
        1:
          operation: add_number
          amount: 10
          slot: head
      generic_armor_toughness:
        1:
          operation: add_number
          amount: 10
          slot: head
      generic_armor:
        1:
          operation: add_number
          amount: 10
          slot: head
  lore:
    - <&color[#191970]>A gaunt piece of mail.
    - <&color[#191970]>This faceguard once graced
    - <&color[#191970]>the head of a noble protector.
    - <&color[#191970]>It now lies accursed.
  recipes:
    1:
      type: shaped
      input:
      - obsidian_plate|obsidian_plate|obsidian_plate
      - obsidian_plate|abyss_gem|obsidian_plate
      - air|air|air
  display name: <&color[#191970]>Riftwalker Faceguard

riftwalker_chest:
  type: item
  debug: false
  material: netherite_chestplate
  data:
    discover: true
  mechanisms:
    custom_model_data: 1
    unbreakable: true
    attribute_modifiers:
      generic_knockback_resistance:
        1:
          operation: add_number
          amount: 10
          slot: chest
      generic_armor_toughness:
        1:
          operation: add_number
          amount: 10
          slot: chest
      generic_armor:
        1:
          operation: add_number
          amount: 10
          slot: chest
  lore:
    - <&color[#191970]>This breastplate was once
    - <&color[#191970]>worn over the heart of a
    - <&color[#191970]>noble protector.
    - <&color[#191970]>It now lies accursed.
  recipes:
    1:
      type: shaped
      input:
      - obsidian_plate|abyss_gem|obsidian_plate
      - obsidian_plate|obsidian_plate|obsidian_plate
      - obsidian_plate|obsidian_plate|obsidian_plate
  display name: <&color[#191970]>Riftwalker Breastplate

riftwalker_legs:
  type: item
  debug: false
  material: netherite_leggings
  data:
    discover: true
  mechanisms:
    custom_model_data: 1
    unbreakable: true
    attribute_modifiers:
      generic_knockback_resistance:
        1:
          operation: add_number
          amount: 10
          slot: legs
      generic_armor_toughness:
        1:
          operation: add_number
          amount: 10
          slot: legs
      generic_armor:
        1:
          operation: add_number
          amount: 10
          slot: legs
  lore:
    - <&color[#191970]>These legguards once
    - <&color[#191970]>guided a noble protector
    - <&color[#191970]>through the mists.
    - <&color[#191970]>They now lay accursed.
  recipes:
    1:
      type: shaped
      input:
      - obsidian_plate|obsidian_plate|obsidian_plate
      - obsidian_plate|abyss_gem|obsidian_plate
      - obsidian_plate|air|obsidian_plate
  display name: <&color[#191970]>Riftwalker Legguards

riftwalker_boots:
  type: item
  debug: false
  material: netherite_boots
  data:
    discover: true
  mechanisms:
    custom_model_data: 1
    unbreakable: true
    attribute_modifiers:
      generic_knockback_resistance:
        1:
          operation: add_number
          amount: 10
          slot: feet
      generic_armor_toughness:
        1:
          operation: add_number
          amount: 10
          slot: feet
      generic_armor:
        1:
          operation: add_number
          amount: 10
          slot: feet
  lore:
    - <&color[#191970]>These boots saw many
    - <&color[#191970]>journeys through planes
    - <&color[#191970]>far beyond our own.
    - <&color[#191970]>They now lay accursed.
  recipes:
    1:
      type: shaped
      input:
      - air|air|air
      - obsidian_plate|abyss_gem|obsidian_plate
      - obsidian_plate|air|obsidian_plate
  display name: <&color[#191970]>Riftwalker Boots
  
  wraith_crown_event:
  type: world
  debug: false
  events:
    on entity targets player:
      - if <player.has_equipped[wraith_crown]>:
        - determine cancelled

wraith_crown:
  type: item
  debug: false
  material: netherite_helmet[hides=ATTRIBUTES]
  display name: <&color[#0290b0]>Wraith Diadem
  lore:
    - <&color[#0290b0]>A poor imitation of
    - <&color[#0290b0]>the crown that sits
    - <&color[#0290b0]>upon the Wraith King's
    - <&color[#0290b0]>skull.
  recipes:
    1:
      type: shaped
      input:
      - orikalkum|orikalkum|orikalkum
      - orikalkum|essence_crest|orikalkum
      - air|air|air

jolly_sack:
  type: item
  debug: false
  material: netherite_helmet[hides=ATTRIBUTES]
  display name: <&color[#f0f0ec]>Cap of the Winds
  lore:
    - <&color[#f0f0ec]>A weightless cap,
    - <&color[#f0f0ec]>the four winds
    - <&color[#f0f0ec]>gust from within.
  recipes:
    1:
      type: shaped
      input:
      - orikalkum|orikalkum|orikalkum
      - orikalkum|flight_rune|orikalkum
      - air|air|air

jolly_sack_event:
  type: world
  debug: false
  events:
    after player equips helmet:
      - if <player.has_equipped[jolly_sack]>:
        - cast speed duration:infinite amplifier:2
        - cast health_boost duration:infinite
    after player unequips jolly_sack:
      - cast speed remove
      - cast health_boost remove