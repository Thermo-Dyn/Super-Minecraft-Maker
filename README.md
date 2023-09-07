# Super Minecraft Maker
In this document I will explain how to use the datapack & resource pack, and my reasoning behind some seemingly counter-intuitive decisions.

### So what is it? What is it even for?
The datapack is a method to make "level making" easier and more reliable for both the maker and the player. Adding several of the play features from Super Mario Maker, we can build trust and ultimately have a more pleasant experience while playing Minecraft.

### Why should I care?
Having some implicit trust means you can violate it far faster, and if this datapack becomes standard, there will be even faster trust.


------------

# Getting Started
### Startup
First, on startup, you **have** to run this command: `/function all:startup`
You have to run it, as it places a very important structure at `0, 0`. It also sets a half-dozen gamerules and scoreboards, and it's necessary to get all the functions working. 
### Items
Next, grab all the tools you'll need to add function to your map with `/function all:give_items`. This will give you, in order, a book with a few insights about Doors and Props. Clicking on some of the text can run some commands.
It's a smart idea to save your toolbar with the keybinds you see in that one tab in your creative inventory. You can run this command at any point, or if you want the doors or checkpoints specifically, you can run `/function door_handler:give_door` or `/function checkpoint:give_cp`.
### Tools
To utilize the available tools, you have to think about them less as tools, but more as retextured blocks you place nearby. That's because they are. 
The Rotator does what it says on the tin. It rotates any entity around them 90º clockwise, including you.
The Thing Killer also does what it says. It will kill any close entity. Well, except you.
The Item Frame Freezer will freeze and turn invisible the closest item frame. This will keep it from being knocked off the wall in survival and adventure mode, will lock it from rotation and will make the item frame invisible. If you remove the block from under the item frame it will still hang around, which can be very useful.
##### Spawn
Placing the spawn will not set your current spawn but will set the World Spawn, and will set your spawn if you run `/trigger RESETMEPLEASE`. You can see it's facing direction with the purple section.
##### Checkpoints
They do what you think. They are two separate items, however they do look alike once placed. If you place more than one of each, the previous one will go away.
##### The Magic Ball
This can be the end to your map. Collecting it will play a sound and force you into spectator mode.
##### Doors
You must place each door pair to work, so Door ♥A and ♥B. Although after they are placed they are interchangeable, so no need to worry about entrances and exits.
Keydoors work the same. You can enter keydoors in creative mode, although you must run `/kill` before they will reset to being locked.
### Props
To give yourself a prop, you have to use this command: `/give @s gold_ingot{CustomModelData:#}`, where # is a number 1-4.
Why did I implement it in this way? I want to teach map-makers how to get better at making Minecraft maps.
### Sounds
In a similar way, you just use `/tag % add x` where % = (press tab while looking at an entity, and pick the string of random characters), and x = any of the sounds listed in the book.

------------
Now that's all you need to know if you're making a basic level, without any entities or destruction, but what if you wanted to do more than just simple redstone?

# Advanced Tech
You might want to have things reset completely when you die. You may want to implement new features to the datapack. I'm all for it! Although you do have to watch out for the "bull in a china shop" effect, so I would keep it more minimalistic.

All you'll need to edit the `.mcfunction`s and `json`s is notepad++, but you are free to use any text editor you like.
### Death Handler
The first thing you may want to change is what the death handler does. Ordinarily, it just respawns lost red coins and gives you the red coins you already collected. However, you can (and will have to) include a structure to spawn in. You can look up lots of tutorials for making a structure, but you can even save entities which I would recommend. I would suggest killing and re-adding your red coins, end and checkpoints until after the structure is saved, so that the regular death handler functions still work.
### Props
Props are handled by just adding different models as Custom Model Data to the Gold Ingot. All the data on that is solely in the resource pack, so you can go wild. Later I will discuss display entities that let you make intangible blocks, so you don't have to do that yourself. I use BlockBench to make my models, and there are lots of tutorials on making those as well. You can also follow my lead, with seeing how things are laid out in the pack.
### Sounds
Sounds are handled in a similar way, unless you want them to also be properly implemented in game. First, you have to make the sound, and save it as a `.ogg`. Then, add it to the resource pack and change `sounds.json` to include it (you'll see how to do that with the other sounds in it). If you intend to use it with the other sounds, you'll have to include it in `tick.mcfunction` in the sounds folder, and make a new `.mcfunction` with the time it takes in ticks (20 per second), in a similar way to this:
`scoreboard players set @p music 3140 | playsound troll:troll.slider master @p`
Next, just use `/tag` with whatever you set in the `tick.mcfunction`.
### Display Entities
Display entities are recent additions to Minecraft. They can display a Block, an Item, or even Text like a Hologram. They are both confusing and particularly easy to understand, if you know how to use the Minecraft wiki. I would advise against using Block Entities for most cases, as you want to build trust with your player before breaking it, and just like in SMM2, you want to use them sparingly.
Another addition to Minecraft are Trigger entities. Trigger entities can detect when someone interacts or punches it, although you have to check on it rather than it sending something. I would use them sparingly to avoid lag.
### Barriers
Similarly to Block entities, Barriers are invisible blocks. Like Kaizo blocks in SMM, barriers can be funny. However with 3D, not being able to clearly see above you at all times can make these blocks feel cheaty, which they tend to. Again, sparingly, unless marked with something like track props or the such.
### Adventure Mode Tech
There are lots of specific Minecraft features built specifically for maps. Mostly the "can break" and "can be placed on" tags you can assign to items. Normally in Adventure mode, you can't build or break, but you can interact with buttons and levers. With such tags set on items, you can have your players do specific things with specific items. By default, these won't be saved with checkpoints.
### Better Doors
In Minecraft, there are certain blocks that have cool functions. One such block is called the "End Gateway". You can use these blocks to teleport players that enter the block, or throw an Ender Pearl. These will be more reliable than doors, but work similarly to warp blocks in SMM2. You can specify an end point, but that will be one-way.
### Custom Crafting
You can also specify custom crafting recipies. What to use it with? It's up to you. You can't specify a recipe that requires or spits out an item with NBT, however there are ways to circumvent that. There are lots of other tutorials with that as well.