simple_backpack:
  type: item
  debug: false
  material: chest
  display name: <&7>Simple Backpack
  lore:
  - <&7>9 Slot Backpack
  - <&e>A simple backpack for extra storage.
  - <&e>Right click while holding to open it.
  data:
    backpack_size: 9
  recipes:
       1:
          type: shaped
          input:
            - springy_spoke|dark_iron_ingot|springy_spoke
            - dark_iron_ingot|chest|dark_iron_ingot
            - dark_iron_ingot|dark_iron_ingot|dark_iron_ingot

medium_backpack:
  type: item
  debug: false
  material: chest
  display name: <&a>Medium Backpack
  lore:
  - <&a>27 Slot Backpack
  - <&e>A medium backpack for extra storage.
  - <&e>Right click while holding to open it.
  data:
    backpack_size: 27
  recipes:
       1:
          type: shaped
          input:
            - springy_spoke|dark_steel_ingot|springy_spoke
            - dark_steel_ingot|emerald_prism|dark_steel_ingot
            - dark_steel_ingot|dark_steel_ingot|dark_steel_ingot

large_backpack:
  type: item
  debug: false
  material: chest
  display name: <&1>Large Backpack
  lore:
  - <&1>54 Slot Backpack
  - <&e>A large backpack for extra storage.
  - <&e>Right click while holding to open it.
  data:
    backpack_size: 54
  recipes:
       1:
          type: shaped
          input:
            - springy_spoke|refined_dark_steel|springy_spoke
            - refined_dark_steel|pristine_diamond|refined_dark_steel
            - refined_dark_steel|refined_dark_steel|refined_dark_steel

backpack_inventory:
    type: inventory
    inventory: chest
    debug: false
    title: <&7>Bork
    size: 9

backpack_task_open:
    type: task
    debug: false
    script:
        - note <inventory[backpack_inventory]> as:<player.uuid>.opened_backpack
        - adjust <inventory[<player.uuid>.opened_backpack]> size:<context.item.script.data_key[data.backpack_size]>
        - adjust <inventory[<player.uuid>.opened_backpack]> title:<context.item.display||<context.material>>
        - inventory set d:<inventory[<player.uuid>.opened_backpack]> o:<player.item_in_hand.flag[backpack.contents]||<list[]>>
        - inventory open d:<inventory[<player.uuid>.opened_backpack]>

backpack_events:
    type: world
    debug: false
    events:
        on player right clicks block with:*_backpack:
            - determine passively cancelled
            - inject backpack_task_open

        on player clicks *backpack in backpack_inventory:
            - determine cancelled

        on player closes backpack_inventory:
            - inventory flag slot:hand backpack.contents:<context.inventory.list_contents>
            - note remove as:<context.inventory.note_name>

        on dropped_item damaged:
            - ratelimit <context.entity> 1t
            - if <context.entity.item.has_flag[backpack.contents]>:
                - define items <context.entity.item.flag[backpack.contents]>
                - drop <[items]||<list[]>> <context.entity.location>
                - remove <context.entity>