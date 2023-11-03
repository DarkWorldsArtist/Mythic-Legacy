dark_iron_nugget:
  type: item
  debug: false
  material: iron_nugget
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#4c4a49]>Dark Iron Nugget
  lore:
    - <&color[#4c4a49]>An iron nugget strengthened
    - <&color[#4c4a49]>and compressed by the
    - <&color[#4c4a49]>deepslate surrounding it.

dark_iron_ingot:
  type: item
  debug: false
  material: iron_ingot
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#2f3845]>Dark Iron Ingot
  lore:
    - <&color[#2f3845]>A deeply condensed version
    - <&color[#2f3845]>of raw dark iron.
  recipes:
    1:
      type: shaped
      input:
      - dark_iron_nugget|dark_iron_nugget|dark_iron_nugget
      - dark_iron_nugget|dark_iron_nugget|dark_iron_nugget
      - dark_iron_nugget|dark_iron_nugget|dark_iron_nugget

dark_steel_ingot:
  type: item
  debug: false
  material: iron_ingot
  mechanisms:
      custom_model_data: 2
  data:
    discover: true
  display name: <&color[#6eb6ab]>Dark Steel Ingot
  lore:
    - <&color[#6eb6ab]>An incredibly strong alloy
    - <&color[#6eb6ab]>crafted from netherite and
    - <&color[#6eb6ab]>dark iron.
  recipes:
    1:
      type: shaped
      input:
      - dark_iron_ingot|dark_iron_ingot|dark_iron_ingot
      - dark_iron_ingot|netherite_ingot|netherite_ingot
      - netherite_ingot|netherite_ingot|air

refined_dark_steel:
  type: item
  debug: false
  material: iron_ingot
  mechanisms:
      custom_model_data: 3
  data:
    discover: true
  display name: <&color[#43736a]>Refined Dark Steel
  lore:
    - <&color[#43736a]>A refined form of Dark Steel
    - <&color[#43736a]>used in crafting the
    - <&color[#43736a]>strongest of tools and
    - <&color[#43736a]>weaponry.
  recipes:
    1:
      type: shaped
      input:
      - dark_steel_ingot|dark_steel_ingot|dark_steel_ingot
      - dark_steel_ingot|pristine_diamond|dark_steel_ingot
      - dark_steel_ingot|dark_steel_ingot|dark_steel_ingot

dark_steel_rod:
  type: item
  debug: false
  material: stick
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#6eb6ab]>Dark Steel Rod
  lore:
    - <&color[#6eb6ab]>A rod crafted of
    - <&color[#6eb6ab]>pure Dark Steel.
  recipes:
    1:
      type: shaped
      input:
      - dark_steel_ingot|dark_steel_ingot|dark_steel_ingot
      - dark_steel_ingot|reflective_ruby|dark_steel_ingot
      - dark_steel_ingot|dark_steel_ingot|dark_steel_ingot

reflective_ruby:
  type: item
  debug: false
  material: red_dye
  mechanisms:
      custom_model_data: 3
  data:
    discover: true
  display name: <&color[#b5262a]>Reflective Ruby
  lore:
    - <&color[#b5262a]>A shiny gem that reflects
    - <&color[#b5262a]>some great evil.

abyss_gem:
  type: item
  debug: false
  material: blue_dye
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#02225D]>Abyssal Gem
  lore:
    - <&color[#02225D]>A stone that whispers of
    - <&color[#02225D]>souls banished beyond our
    - <&color[#02225D]>realm. Where has it come from?

obsidian_plate:
  type: item
  debug: false
  material: netherite_scrap
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#445055]>Blackened Slate
  lore:
    - <&color[#445055]>Polished, perfected, endless.
    - <&color[#445055]>A mirror of planes beyond
    - <&color[#445055]>your comprehension.

flight_rune:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 12
  data:
    discover: true
  display name: <&color[#346eeb]>Flight Rune
  lore:
  - <&color[#346eeb]>A seemingly weightless
  - <&color[#346eeb]>shard imbued with the
  - <&color[#346eeb]>properties of the sky.
  recipes:
       1:
          type: shaped
          input:
            - pristine_diamond|refined_dark_steel|pristine_diamond
            - refined_dark_steel|Essence_crest|refined_dark_steel
            - pristine_diamond|refined_dark_steel|pristine_diamond

withering_essence:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 11
  data:
    discover: true
  display name: <&color[#404040]>Withering Essence
  lore:
  - <&color[#404040]>A shard of its being.
  - <&color[#404040]>Part of a greater power.
  - <&color[#9B111E]>The first of three.

netherbane_relic:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 6
  data:
    discover: true
  display name: <&color[#807171]>Relic of Netherbane
  lore:
  - <&color[#807171]>A relic that once held peace
  - <&color[#807171]>in a mighty empire.
  - <&color[#b80718]>Key to a greater treasure.
  recipes:
       1:
          type: shaped
          input:
            - withering_essence|withering_essence|withering_essence
            - withering_essence|withering_essence|withering_essence
            - withering_essence|withering_essence|withering_essence

draconic_essence:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#c800fa]>Draconic Essence
  lore:
  - <&color[#c800fa]>A shard of its being.
  - <&color[#c800fa]>Part of a greater power.
  - <&color[#9B111E]>The second of three.

drakeheart_relic:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 2
  data:
    discover: true
  display name: <&color[#8300a3]>Drakeheart Relic
  lore:
  - <&color[#8300a3]>A stitched together heart of
  - <&color[#8300a3]>the once powerful drake.
  - <&color[#b80718]>Key to a greater treasure.
  recipes:
       1:
          type: shaped
          input:
            - draconic_essence|draconic_essence|draconic_essence
            - draconic_essence|draconic_essence|draconic_essence
            - draconic_essence|draconic_essence|draconic_essence

echoing_essence:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 3
  data:
    discover: true
  display name: <&color[#4c7f99]>Echoing Essence
  lore:
  - <&color[#4c7f99]>A shard of its being.
  - <&color[#4c7f99]>Part of a greater power.
  - <&color[#b80718]>The last of three.

resonant_relic:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 7
  data:
    discover: true
  display name: <&color[#4899c2]>Relic of Resonance
  lore:
  - <&color[#4899c2]>A relic that echoes with
  - <&color[#4899c2]>the voices of many lost souls.
  - <&color[#b80718]>Key to a greater treasure.
  recipes:
       1:
          type: shaped
          input:
            - echoing_essence|echoing_essence|echoing_essence
            - echoing_essence|echoing_essence|echoing_essence
            - echoing_essence|echoing_essence|echoing_essence

essence_crest:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 4
  data:
    discover: true
  display name: <&color[#9966cc]>Essenceforged Crest
  lore:
  - <&color[#9966cc]>A crest crafted from relics
  - <&color[#9966cc]>of immense power. Your journey
  - <&color[#9966cc]>has come to an end.
  recipes:
       1:
          type: shaped
          input:
            - resonant_relic|drakeheart_relic|drakeheart_relic
            - netherbane_relic|resonant_relic|drakeheart_relic
            - netherbane_relic|netherbane_relic|resonant_relic

pristine_diamond:
  type: item
  debug: false
  material: diamond
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#b9f2ff]>Pristine Diamond
  lore:
  - <&color[#b9f2ff]>A flawless diamond.

emerald_prism:
  type: item
  debug: false
  material: emerald
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#1B7931]>Emerald Prism
  lore:
  - <&color[#1B7931]>A flawless emerald.

solidified_gold:
  type: item
  debug: false
  material: gold_ingot
  mechanisms:
      custom_model_data: 2
  data:
    discover: true
  display name: <&color[#cfae00]>Solidified Gold
  lore:
  - <&color[#cfae00]>Solidified and condensed gold.
  recipes:
    1:
      type: furnace
      cook_time: 120m
      experience: 1000
      input: gold_block

purified_gold:
  type: item
  debug: false
  material: gold_ingot
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#fcd817]>Purified Gold
  lore:
  - <&color[#fcd817]>Purified condensed gold.
  recipes:
       1:
          type: shaped
          input:
            - solidified_gold|solidified_gold|solidified_gold
            - solidified_gold|solidified_gold|solidified_gold
            - solidified_gold|solidified_gold|solidified_gold


sovereign_stone:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 9
  data:
    discover: true
  display name: <&color[#DB5E44]>Sovereign's Stone
  lore:
  - <&color[#DB5E44]>A gem once belonging
  - <&color[#DB5E44]>to a sovereign ruler.
  recipes:
       1:
          type: shaped
          input:
            - purified_gold|emerald_prism|purified_gold
            - emerald_prism|pristine_diamond|emerald_prism
            - purified_gold|emerald_prism|purified_gold

sovereign_crest:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 8
  data:
    discover: true
  display name: <&color[#F5BD02]>Sovereign's Crest
  lore:
  - <&color[#F5BD02]>The restored crest
  - <&color[#F5BD02]>of a sovereign ruler.
  recipes:
       1:
          type: shaped
          input:
            - Essence_crest|Essence_crest|Essence_crest
            - Essence_crest|sovereign_stone|Essence_crest
            - Essence_crest|Essence_crest|Essence_crest

pliant_cane:
  type: item
  debug: false
  material: stick
  mechanisms:
      custom_model_data: 3
  data:
    discover: true
  display name: <&color[#006442]>Pliant Cane
  lore:
  - <&color[#006442]>A particularly bendy
  - <&color[#006442]>piece of bamboo.

springy_spoke:
  type: item
  debug: false
  material: stick
  mechanisms:
      custom_model_data: 5
  data:
    discover: true
  display name: <&color[#d1a871]>Springy Spoke
  lore:
  - <&color[#d1a871]>A powerful replacement
  - <&color[#d1a871]>for a string.
  recipes:
       1:
          type: shaped
          input:
            - furled_vine|furled_vine|furled_vine
            - furled_vine|pliant_cane|furled_vine
            - furled_vine|furled_vine|furled_vine

unbound_bow:
  type: item
  debug: false
  material: stick
  mechanisms:
      custom_model_data: 6
  data:
    discover: true
  display name: <&color[#D6D0C8]>Unbound Bow
  lore:
  - <&color[#D6D0C8]>A useless bow,
  - <&color[#D6D0C8]>yet to be imbued
  - <&color[#D6D0C8]>with power.
  recipes:
       1:
          type: shaped
          input:
            - orikalkum|springy_spoke|air
            - orikalkum|essence_crest|springy_spoke
            - orikalkum|springy_spoke|air

opulent_fragment:
  type: item
  debug: false
  material: emerald
  mechanisms:
      custom_model_data: 2
  data:
    discover: true
  display name: <&color[#85bb65]>Opulent Fragment
  lore:
  - <&color[#85bb65]>A shining fragment
  - <&color[#85bb65]>of wealth.

judicious_shard:
  type: item
  debug: false
  material: amethyst_shard
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#6b56a6]>Judicious Shard
  lore:
  - <&color[#6b56a6]>The stone gazes,
  - <&color[#6b56a6]>indifferent to your actions.

marble_quartz:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 5
  data:
    discover: true
  display name: <&color[#cce7f0]>Marbled Quartzite
  lore:
  - <&color[#cce7f0]>A beautiful piece
  - <&color[#cce7f0]>of smooth quartz.
  recipes:
    1:
      type: furnace
      cook_time: 45m
      experience: 1000
      input: smooth_quartz

power_core:
  type: item
  debug: false
  material: red_dye
  mechanisms:
      custom_model_data: 2
  data:
    discover: true
  display name: <&color[#b51b00]>Power Core
  lore:
  - <&color[#b51b00]>It trembles with
  - <&color[#b51b00]>unharnessed power.
  recipes:
       1:
          type: shaped
          input:
            - polished_plating|marble_quartz|polished_plating
            - judicious_shard|recovery_compass|judicious_shard
            - polished_plating|marble_quartz|polished_plating
imbued_naut:
  type: item
  debug: false
  material: nautilus_shell
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#006994]>Imbued Nautilus Shell
  lore:
  - <&color[#006994]>A shell containing
  - <&color[#006994]>the power of the sea.
  recipes:
       1:
          type: shaped
          input:
            - air|nautilus_shell|air
            - nautilus_shell|heart_of_the_sea|nautilus_shell
            - air|nautilus_shell|air

wax_frogspawn:
  type: item
  debug: false
  material: lapis_lazuli
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#9c966c]>Waxed Frogspawn
  lore:
  - <&color[#9c966c]>A particularly waxy
  - <&color[#9c966c]>batch of frogspawn.
  recipes:
       1:
          type: shaped
          input:
            - honeycomb|honeycomb|honeycomb
            - honeycomb|frogspawn|honeycomb
            - honeycomb|honeycomb|honeycomb
wound_propagule:
  type: item
  debug: false
  material: stick
  mechanisms:
      custom_model_data: 7
  data:
    discover: true
  display name: <&color[#f5e5c4]>Wound Propagule
  lore:
  - <&color[#f5e5c4]>A mangrove propagule,
  - <&color[#f5e5c4]>wound in vine.
  recipes:
       1:
          type: shaped
          input:
            - furled_vine|furled_vine|furled_vine
            - furled_vine|mangrove_propagule|furled_vine
            - furled_vine|furled_vine|furled_vine

resilient_vine:
  type: item
  debug: false
  material: stick
  mechanisms:
      custom_model_data: 4
  data:
    discover: true
  display name: <&color[#38a32a]>Resilient Vine
  lore:
  - <&color[#38a32a]>A piece of particularly
  - <&color[#38a32a]>resilient vine.

furled_vine:
  type: item
  debug: false
  material: stick
  mechanisms:
      custom_model_data: 2
  data:
    discover: true
  display name: <&color[#38a32a]>Furled Vine
  lore:
  - <&color[#38a32a]>A tightly woven
  - <&color[#38a32a]>vine rope.
  recipes:
       1:
          type: shaped
          input:
            - resilient_vine|resilient_vine|resilient_vine
            - resilient_vine|resilient_vine|resilient_vine
            - resilient_vine|resilient_vine|resilient_vine

orikalkum:
  type: item
  debug: false
  material: netherite_ingot
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#800505]>Orikalkum
  lore:
  - <&color[#800505]>An incredibly strong
  - <&color[#800505]>metallic alloy.
  recipes:
       1:
          type: shaped
          input:
            - refined_dark_steel|polished_plating|refined_dark_steel
            - polished_plating|marble_quartz|polished_plating
            - refined_dark_steel|polished_plating|refined_dark_steel

guardianspine:
  type: item
  debug: false
  material: bone
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#d68585]>Guardian Vertebrae
  lore:
  - <&color[#d68585]>The barbed spine
  - <&color[#d68585]>of an Elder Guardian.

ruby_plating:
  type: item
  debug: false
  material: red_dye
  mechanisms:
      custom_model_data: 4
  data:
    discover: true
  display name: <&color[#b5262a]>Ruby Plating
  lore:
    - <&color[#b5262a]>A brilliant plate
    - <&color[#b5262a]>of reflective rubies.
  recipes:
       1:
          type: shaped
          input:
            - reflective_ruby|reflective_ruby|reflective_ruby
            - reflective_ruby|reflective_ruby|reflective_ruby
            - reflective_ruby|reflective_ruby|reflective_ruby

polished_plating:
  type: item
  debug: false
  material: red_dye
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#f01d23]>Polished Ruby Plating
  lore:
    - <&color[#f01d23]>A brilliant plate
    - <&color[#f01d23]>of polished ruby.
  recipes:
    1:
      type: furnace
      cook_time: 60m
      experience: 1000
      input: ruby_plating

blaze_essence:
  type: item
  debug: false
  material: blaze_powder
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#FFA500]>Blaze Essence
  lore:
    - <&color[#FFA500]>The brightly burning
    - <&color[#FFA500]>fireheart of a blaze.

smoldering_coal:
  type: item
  debug: false
  material: charcoal
  mechanisms:
      custom_model_data: 1
  data:
    discover: true
  display name: <&color[#36454F]>Smoldering Coal
  lore:
    - <&color[#36454F]>An ever burning coal
    - <&color[#36454F]>imbued with the power
    - <&color[#36454F]>of many blazes.
  recipes:
       1:
          type: shaped
          input:
            - blaze_essence|blaze_essence|blaze_essence
            - blaze_essence|coal|blaze_essence
            - blaze_essence|blaze_essence|blaze_essence

vitrolic_core:
  type: item
  debug: false
  material: quartz
  mechanisms:
      custom_model_data: 10
  data:
    discover: true
  display name: <&color[#82237A]>Vitrolic Core
  lore:
    - <&color[#82237A]>A foul concoction
    - <&color[#82237A]>that weeps some thick
    - <&color[#82237A]>substance.
  recipes:
       1:
          type: shapeless
          input:
            - nether_wart|redstone_dust|gunpowder
            - glowstone_dust|fermented_spider_eye|sugar
            - blaze_powder|blaze_essence|dragon_breath