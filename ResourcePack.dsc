resource_reload_manual:
    type: command
    usage: /resourcereload
    name: resourcereload
    description: Redownloads the resource pack
    script:
        - ~run resource_reload instantly



resource_reload_auto:
    type: world
    debug: false
    events:

        on discord message received:
            - if  !<context.new_message.author.is_bot> and <context.channel.contains_all_text[1146211114326163597]>:
                #Config
                - define PackSavePath data/ResourcePack.zip

                #Verify input
                - define url <context.new_message.attachments.get[1].before_last[.]>.zip
                - if <[url].if_null[null]> != null and <[url].contains_all_text[.zip]>:

                    #Start Download
                    - ~webget <[url]> savefile:plugins/Denizen/<[PackSavePath]> save:result hide_failure


                    #Print failure
                    - if <entry[result].status.if_null[null]> != 200:
                        - narrate "<red>Download failed <red><n><white><entry[result].status.if_null[No response from remote server]>"
                        - stop
                    - ~fileread path:<[PackSavePath]> save:File
                    - define Hash <entry[File].data.hash[SHA-1].if_null[null].replace_text[binary@]>
                    - if <[Hash]> == null:
                        - narrate "<red>Unable to read file for hashing. Random hash will be generated, this will not be the file hash."
                        - define Hash <util.random_uuid.base64_encode.base64_to_binary.hash[sha-1].to_hex.replace_text[binary@].if_null[null]>
                    - narrate "<green>Pack updated:<n><reset> <green>Hash: <white><[Hash]>"

                    #Save Details
                    - flag server ResourcePack.Hash:<[hash]>
                    - flag server ResourcePack.URL:<[url]>

                    #Announce to server
                    - clickable save:OnClickCommand until:45s usages:1:
                        - ~run resource_reload instantly
                    - narrate targets:<server.online_players> "<green>The Resource Pack has been updated, please run <white><element[/ResourceReload].on_click[<entry[OnClickCommand].command>]><reset> <green> to download and use the new pack.<n><reset>AUTOMATIC UPDATE<n><n>Changes:<n>   <context.new_message.text><n>"




resource_reload:
    type: task
    debug: false
    script:
        - resourcepack url:<server.flag[ResourcePack.URL]> hash:<server.flag[ResourcePack.Hash]> targets:<player>


resource_update_manual:
    type: command
    usage: /resourceupdate
    name: resourceupdate
    permission: admin.tools
    tab completions:
        1: URL
        2: announce
        3: decompress
    description: Updates the resource pack URL and Hash
    script:

        #Config
        - define PackSavePath data/ResourcePack.zip

        #Verify input
        - if !<context.args.contains_all_text[.zip].if_null[null]>:
            - narrate "<green>Using cached URL"
            - define url <server.flag[ResourcePack.URL]>
            - ~fileread path:<[PackSavePath]> save:OldFile
            - define OldHash <entry[OldFile].data.hash[SHA-1].if_null[null].replace_text[binary@]>
        - else:
            - foreach <context.args>:
                - if <[value].contains_all_text[.zip]>:
                    - define url <[value]>
        - if <[url].if_null[null]> != null and <[url].contains_all_text[.zip]>:

            #Start Download
            #- if <util.has_file[<[PackSavePath]>]>:
                #- adjust server delete_file:<[PackSavePath]>
            - ~webget <[url]> savefile:plugins/Denizen/<[PackSavePath]> save:result hide_failure


            #Print failure
            - if <entry[result].status.if_null[null]> != 200:
                - narrate "<red>Download failed <red><n><white><entry[result].status.if_null[No response from remote server]>"
                - stop


            #Hash file
            - ~fileread path:<[PackSavePath]> save:File
            - define Hash <entry[File].data.hash[SHA-1].if_null[null].replace_text[binary@]>
            - if <[Hash]> == null:
                - narrate "<red>Unable to read file for hashing. Random hash will be generated, this will not be the file hash."
                - define Hash <util.random_uuid.base64_encode.base64_to_binary.hash[sha-1].to_hex.replace_text[binary@].if_null[null]>
            - narrate "<green>Pack updated:<n><reset> <green>Hash: <white><[Hash]>"
            - if <[OldHash]> == <[Hash]>:
                - narrate " <green>Hash Match:<white> No change"

            #Save Details
            - flag server ResourcePack.Hash:<[hash]>
            - flag server ResourcePack.URL:<[url]>
            #Announce to server
            - if <context.args.contains_all_text[announce]>:
                - clickable save:OnClickCommand until:45s usages:1:
                    - ~run resource_reload instantly
                - narrate targets:<server.online_players> "<green>The Resource Pack has been updated, please run <white><element[/ResourceReload].on_click[<entry[OnClickCommand].command>]><reset> <green> to download and use the new pack."