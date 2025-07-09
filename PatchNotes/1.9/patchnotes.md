# Patch notes
## New Features
**New control scheme: Quickfire**
  - ~~Stolen~~ Used with permission from TheyCallMeXander's SA-X Duels. Beams, missiles, and supers all have their own button. Power bombs are deployed with the missile button.
   
**New SA-X Mechanic: Save-Ending**
  - Once the SA-X team has eliminated all Fusion players, they must find a save station in order to complete their win. This was implemented to prevent situations where the game would end as a SA-X win automatically due to bugs or Fusion crashes.

**Players can see the item inside the Core-X**
  - No longer do people need to memorize a table of colors or what color Zazabi was, now the items can optionally be seen on the Core-X itself. Enabled through a setting in Display Options.

**Major item snychronization and granular control of starting tanks**
  - If you're downloading this you're probably aware by now of the ItemSyncs mod, but I'm noting it anyway.
  - Allows the host to set up major items so that either both teams start with it, only the SA-X starts with it, or that neither team starts with it and when grabbed, both teams get it.
  - Also allows the host to specify how many of each tank type each team starts wil.

**Revive button**
  - Allows the host to revive a dead, unpaused player by pressing the button next to their name in the server. Pausing the lobby is no longer required.

**Client-side kick reasons**
  - When kicked, the client will now display the reason for it. The possible reasons are as follows:
    - Kicked by host
    - Kicked - Version Mismatch
    - Kicked - Buffer Overflow
    - Kicked from Server (if the server provides an unknown reason for being kicked)

**F4 stops teh currently playing music**
  - It likes to get stuck playing because oMusicV2 is evil.

**Septoggs are now killable!**
  - Someone tell M3D

## Balance changes
**Core-X absorbs no longer freeze you in place**
  - This had the ability to kill your speed boosts and softlock you on elevators, so it was removed.
   
**All health drops are 20 HP**
  - Farming for health was a laborious process and slowed down the game more than anything else.
   
**EMP doors open as soon as the battery is in place**
  - TODO: write non-dismissive description text
   
**The Tower's Power Switch and the Distribution Center's EMP Switch activate as soon as samus rolls into place**
  - The long wait for these switches to activate meant that activating them while in chase was a death sentence.

**SA-X map starts out gray**
  - The SA-X map always being filled made it hard to tell where you and your teammates had been, and especially affected non-experimental games.
  - TODO: make metroids properly display on the SA-X map

**Mebits die in one ice missile**
  - Previously it would take one missile to freeze it, and then one or two more to kill it. It meant farming them wasn't an option since you'd at best not gain or lose missiles, if every drop was a green X.

**Late game speed shortcuts have a maze of shot blocks so you cannot hide in them as a Core-X**
  - The ability to escape for free as an SA-X by hiding in speed blocks was a sour spot for players. In 1.9, the A6 and beyond speed blocks have significantly slower paths made of shot blocks to greatly reduce the effectiveness of hiding in them.

### Spectator
**All rooms are always fully illuminated**
  - Previously, if a spectator teleported out of a dark room, it was very difficult to set the light level to normal again. Thank you BastionB56 for coding this!

**Block that only spectators can break**
  - Currently unused, but I wanted to leave it in the notes for any people trying to build SA-X based mods on 1.9 and later. It may also see use in later updates.

## Map changes
Note: All shortcuts added by 1.9 can be toggled in the server, so you can have them in co-op or not in SA-X if you want. It's where the Experimental toggle used to be.

**Main Caves**
  - Added a one-way pipe above the Entrance to Area 3, you can open it with a missile!
  ![good morning steele](./DulesShortcutImages/a0h09.gif)

  - Added a screw-locked shortcut from the U-bend room near First Alpha to the A2 EMP Ball room.
    - (possible example image pending)
  - Added a screw-locked shortcut between the cave with the shinespark item and the top right Gamma metroid.
   
**Hydro Station - A2**
  - Modified the layout of the breeding grounds missile room to allow for an exit through the Speed Booster entrance.

**Industrial Complex - A3**
  - Added a speed-locked shortcut from deep A3 "the one I never want to hear about again" to the BG3 room before the final Gamma metroid.
  - Added a screw-locked pipe between deep A3 "the one I never want to hear about again" and the A1 EMP Ball room.
   
**Deep Caves - A6**
  - Added a path of shot blocks through the speed shortcut under the first Deep Caves save station.
    - This prevents an exploit where SA-X Core-X could go into the shortcut and hide in the speed blocks for an easy escape.

**Omega Nest - A7**
  - Added a path of shot blocks through the speed shortcut in the vertical shaft leading to the save station.
    - This prevents an exploit where SA-X Core-X could go into the shortcut and hide in the speed blocks for an easy escape.

## Bug fixes
  - Changed the config location to prevent issues with new settings.
  - Add some default values to prevent crashes.
  - Made some screw attack blocks stop appearing when you don't have screw attack to prevent getting trapped.
  - Allow players to pick up items if they stopped being a spectator/Core-X without resetting the room.
  - Fix the one missing screw block in the Bullet Hell room.
  - Scrub newline characters from usernames when they get set.
  - The credits can now be skipped if the user is connected to a server.
  - Fixed the Thoth elevator softlock related to pausing.
  - Players can no longer repeat actions by getting frozen with precise timing.
  - Fixed spectators causing map icons to not be drawn during Doomsday.
  - Spectators will no longer try to sync various things about their gamestate. This fixes spectators dropping and refilling the Fusion team's energy tanks and ammo.
  - Serris is now triggered by grabbing its item instead of having it. Primarily a fix for Itemsyncs where players could unknowingly be forced to fight her.
  - The blockade stopping you from going to Queen after she dies no longer spawns in co-op mode. Thanks to Variable for making this so I could forget about it and re-do the work.
  - Fixed the kick and ban buttons to properly handle connections coming from the same IP.
  - Improved fadetiles for developers (Thanks to TheyCallMeDangerIMeanXander for this).
  - Add background tiles in the surface rooms at night.