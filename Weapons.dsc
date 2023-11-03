penumbral_blade:
  type: item
  debug: false
  material: netherite_sword
  display name: <&color[#5f0007]>Penumbral Blade
  data:
    discover: true
  mechanisms:
    custom_model_data: 3
    hides: attributes
    attribute_modifiers:
      GENERIC_ATTACK_DAMAGE:
          1:
            operation: add_number
            amount: 9
            slot: hand
      GENERIC_ATTACK_SPEED:
        1:
          operation: add_number
          amount: -1.2
          slot: hand

  enchantments:
    - damage_all: 8
    - DURABILITY: 4
  lore:
  - <&color[#b5262a]>A dark and mysterious blade
  - <&color[#b5262a]>crafted and enchanted with
  - <&color[#b5262a]>some great evil.
  recipes:
    1:
      type: shaped
      input:
        - polished_plating|refined_dark_steel|polished_plating
        - polished_plating|refined_dark_steel|polished_plating
        - polished_plating|dark_steel_rod|polished_plating

opulent_bow:
  type: item
  debug: false
  material: bow
  mechanisms:
      custom_model_data: 2
  display name: <&color[#84f740]>Opulent Bow
  enchantments:
    - infinity: 1
    - mending: 1
  lore:
  - <&color[#84f740]>A better deal could
  - <&color[#84f740]>not have been bargained for.
  recipes:
       1:
          type: shaped
          input:
            - opulent_fragment|springy_spoke|opulent_fragment
            - opulent_fragment|unbound_bow|opulent_fragment
            - opulent_fragment|opulent_fragment|opulent_fragment

vigorous_bow:
  type: item
  debug: false
  material: bow
  mechanisms:
      custom_model_data: 3
  display name: <&color[#b51b00]>Vigorous Bow
  enchantments:
    - power: 12
  lore:
  - <&color[#b51b00]>And so behold,
  - <&color[#b51b00]>the great power of
  - <&color[#b51b00]>the Earth.
  recipes:
    1:
      type: shaped
      input:
        - orikalkum|power_core|orikalkum
        - power_core|unbound_bow|power_core
        - orikalkum|power_core|orikalkum

tower_shield:
  type: item
  debug: false
  material: shield
  display name: <&color[#4682b4]>Tower Shield
  enchantments:
    - unbreaking: 10
    - mending: 1
    - thorns: 5
  lore:
  - <&color[#4682b4]>May your enemies
  - <&color[#4682b4]>fall before the wall.
  recipes:
    1:
      type: shaped
      input:
        - orikalkum|air|orikalkum
        - orikalkum|shield|orikalkum
        - orikalkum|air|orikalkum

imb_trident:
  type: item
  debug: false
  material: trident
  mechanisms:
      custom_model_data: 1
  display name: <&color[#006994]>Surging Trident
  enchantments:
    - unbreaking: 5
    - mending: 1
    - loyalty: 5
    - impaling: 7
    - channeling: 1
  lore:
  - <&color[#006994]>The Sea King himself
  - <&color[#006994]>could not wield this
  - <&color[#006994]>great weapon.
  recipes:
    1:
      type: shaped
      input:
        - imbued_naut|judicious_shard|imbued_naut
        - judicious_shard|guardianspine|judicious_shard
        - imbued_naut|judicious_shard|imbued_naut

flame_blade:
  type: item
  debug: false
  material: netherite_sword
  mechanisms:
      custom_model_data: 1
  display name: <&color[#FFA500]>Ignatius' Blade
  enchantments:
    - fire_aspect: 10
    - unbreaking: 5
    - mending: 1
  lore:
  - <&color[#FFA500]>The flaming sword of
  - <&color[#FFA500]>Ignatius the Firelord.
  recipes:
    1:
      type: shaped
      input:
        - air|smoldering_coal|air
        - air|smoldering_coal|air
        - air|orikalkum|air

flame_bow:
  type: item
  debug: false
  material: bow
  mechanisms:
      custom_model_data: 1
  display name: <&color[#FFA500]>Ignatius' Bow
  enchantments:
    - flame: 10
    - unbreaking: 5
  lore:
  - <&color[#FFA500]>The flaming bow of
  - <&color[#FFA500]>Ignatius the Firelord.
  recipes:
    1:
      type: shaped
      input:
        - orikalkum|polished_plating|air
        - springy_spoke|air|smoldering_coal
        - orikalkum|polished_plating|air

potion_sword:
  type: item
  debug: false
  material: netherite_sword
  mechanisms:
      custom_model_data: 4
  display name: <&color[#82237A]>Vitrolic Blade
  lore:
  - <&color[#82237A]>Pity the man who
  - <&color[#82237A]>is wounded by this blade.
  recipes:
    1:
      type: shaped
      input:
        - air|vitrolic_core|air
        - air|sovereign_crest|air
        - air|orikalkum|air

potion_bow:
  type: item
  debug: false
  material: bow
  mechanisms:
      custom_model_data: 4
  display name: <&color[#82237A]>Vitrolic Bow
  lore:
  - <&color[#82237A]>A nasty wound is left
  - <&color[#82237A]>by each arrow fired
  - <&color[#82237A]>from this bow.
  recipes:
    1:
      type: shaped
      input:
        - orikalkum|springy_spoke|air
        - vitrolic_core|air|sovereign_crest
        - orikalkum|springy_spoke|air

whacker:
  type: item
  debug: false
  material: stick
  display name: <&color[#f5e5c4]>The Whacker
  enchantments:
    - knockback: 10
  lore:
  - <&color[#f5e5c4]>*spring noises*
  - <&color[#f5e5c4]>boingoing
  recipes:
    1:
      type: shaped
      input:
        - wax_frogspawn|wax_frogspawn|wax_frogspawn
        - wax_frogspawn|wound_propagule|wax_frogspawn
        - wax_frogspawn|wax_frogspawn|wax_frogspawn

loot_sword:
  type: item
  debug: false
  material: netherite_sword
  mechanisms:
      custom_model_data: 2
  display name: <&color[#F5BD02]>Plunderer's Dagger
  enchantments:
    - looting: 20
  lore:
  - <&color[#F5BD02]>This blade is cursed,
  - <&color[#F5BD02]>though great wealth follows
  - <&color[#F5BD02]>the wielder.
  recipes:
    1:
      type: shaped
      input:
        - polished_plating|sovereign_crest|polished_plating
        - polished_plating|orikalkum|polished_plating
        - polished_plating|orikalkum|polished_plating

void_blade:
  type: item
  debug: false
  material: diamond_sword
  mechanisms:
    custom_model_data: 1
    unbreakable: true
    attribute_modifiers:
      GENERIC_ATTACK_DAMAGE:
          1:
            operation: add_number
            amount: 20
            slot: hand
  display name: <&color[#191970]>Voidreaver
  enchantments:
    - sharpness: 10
  lore:
  - <&color[#191970]>So brittle, yet the screams
  - <&color[#191970]>of thousands banished
  - <&color[#191970]>echo from within the confines
  - <&color[#191970]>of its edges.
  recipes:
    1:
      type: shaped
      input:
        - obsidian_plate|abyss_gem|obsidian_plate
        - obsidian_plate|abyss_gem|obsidian_plate
        - obsidian_plate|orikalkum|obsidian_plate