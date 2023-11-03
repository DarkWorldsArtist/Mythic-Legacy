kiss:
 type: world
 debug: false
 events:
   on player right clicks player:
     - if <player.is_sneaking>:
       - playsound <player.location> sound:entity_panda_pre_sneeze
       - playeffect effect:HEART <context.entity.location.above>

SitCommand:
    type: command
    debug: false
    usage: /sit
    name: sit
    description: Makes the player sit
    script:
        - if <player.is_on_ground>:
            - define y <player.eye_location.face[<player.eye_location.below[0.1]>].ray_trace[return=precise].below[0.2].y||null>
            - animate animation:sit for:<player>
            - wait 1t
            - teleport <player.vehicle> <player.eye_location.x>,<[y]>,<player.eye_location.z>,<player.eye_location.pitch>,<player.eye_location.yaw>,<player.location.world.name>
            - flag <player> Player.state:Sitting
        - else if <player.vehicle.is_truthy>:
            - flag <player> Player.state:!
            - animate animation:stop_sitting for:<player>
            - teleport <player> <player.location.above[0.6]>


SitCommandHelper:
    type: world
    debug: false
    events:
        on player starts sneaking:
        - if <player.flag[Player.state]> == Sitting:
            - flag <player> Player.state:!
            - animate animation:stop_sitting for:<player>
            - teleport <player> <player.location.above[0.6]>

PlacedItem:
    type: entity
    debug: false
    entity_type: item_display[item=stick;pivot=fixed;left_rotation=0,0.5,0.5,0;item=stick;scale=1,1,1]

PlacedSword:
    type: entity
    debug: false
    entity_type: item_display[item=stick;pivot=fixed;translation=0,0.4,0;left_rotation=0,0,1,0.4;item=wooden_sword;scale=0.8,0.8,0.8]

PlacedItemLogic:
    type: world
    debug: false
    enabled: true
    events:
        on player right clicks block type:!air priority:10:
        - ratelimit <player> 1t
        - if <context.location.above.material.name.is[==].to[air]> and <player.is_sneaking> and !<player.gamemode.contains[adventure]> and <player.item_in_hand.material.name.contains[sword]> and !<context.location.above.center.find_entities[PlacedItem|PlacedSword].within[1].any||false> and !<context.location.center.find_entities[PlacedItem|PlacedSword].within[0.8].get[1]||false>:
            - if <context.location.material.name.contains[slab]>:
                - spawn placedsword[item=<player.item_in_hand>] <context.location.center.below[0.1]>
            - else:
                - spawn placedsword[item=<player.item_in_hand>] <context.location.above.center.below[0.5]>
            - take iteminhand
            - stop


        - if !<player.gamemode.contains[adventure]> and <context.location.above.center.find_entities[PlacedItem|PlacedSword].within[1].any||false> or <context.location.center.find_entities[PlacedItem|PlacedSword].within[0.8].get[1]||false>:
            - determine passively cancelled
            - if <context.location.block.material.name.contains[slab]>:
                - define entity <context.location.center.find_entities[PlacedItem|PlacedSword].within[0.8].get[1]>
            - else:
                - define entity <context.location.above.center.find_entities[PlacedItem|PlacedSword].within[0.8].get[1]>
            - if !<player.item_in_hand.is_truthy> and <[entity].exists>:
                - give <[entity].item> to:<player.inventory> slot:hand
            - else if <[entity].is_truthy>:
                - drop <[entity].item> <context.location.above.center.below[0.5]>
            - if <[entity].is_spawned.is_truthy>:
                - remove <[entity]>



        on player breaks block:
        - if <context.location.above.find_entities[PlacedItem|PlacedSword].within[1].any||false>:
            - define entity <context.location.above.find_entities[PlacedItem|PlacedSword].within[1].get[1]>
            - drop <[entity].item> <context.location.above.center.below[0.5]>
            - remove <[entity]>