# CS 276 · Pac-Blitz

*(Born a Pac-Man clone in Lecture W1R1. Became **Blitz the Bearcat** the same
morning. Nobody has built this game before - that is the point.)*

**Blitz** runs a gauntlet of **mazes**, eating **marionberries** (Marion
County's own berry), growing from **First-Year** to **Sophomore** to **Junior** to **Senior**,
one maze at a time. Right now that is four builds of scaffolding; every lecture
from here on upgrades this repo until, by the showcase, it is a complete
original game. Each branch is a checkpoint from class; `main` is the current
finished state.

| Branch | What works | GDScript you meet there |
| --- | --- | --- |
| `Build1` | Blitz moves with the arrow keys | variables & static typing, `Vector2`, functions, if/elif, `delta` |
| `Build2` | Blitz faces the direction of travel | `match`, node references (`$Sprite2D`), sprite flip/rotation |
| `Build3` | A row of marionberries you can eat; count in Output | scenes-in-code (`preload` + `instantiate`), `for` loops, a first **signal** |
| `main`   | All of the above plus a wandering ghost | arrays, `pick_random()`, `Timer` |

The ghost *sprite* is a stand-in until the rival art lands, but the cast is
signed: Pac-Blitz's enemies are the Northwest Conference's finest, each with a
personality that becomes a real brain in the state-machines weeks.

| Rival | Personality |
| --- | --- |
| The Linfield Wildcat | **The chaser** - runs straight at Blitz. Relentless. |
| The Puget Sound Logger | **The ambusher** - fells the corridor ahead of you. |
| The George Fox Bruin | **The flanker** - a bigger bear stalking a bearcat. |
| The Pacific Boxer | **The wildcard** - swings wild, wanders off. Nobody knows. |

Also canon: **figs** trigger the *Fig Break* - for a few seconds the chase
flips and the rivals run from Blitz. Every maze is its own design; new mazes
land when the course reaches level design. All rival art stays original pixel
caricatures - a generic wildcat, logger, bruin, and boxer - never school logos.

## Presenting from this repo

```bash
git checkout Build1    # movement done, nothing else
git checkout Build2    # after the facing build
git checkout Build3    # after marionberries
git checkout main      # the complete demo
```

Godot notices files changing underneath it: when you switch branches with the
editor open, accept the **Reload from disk** prompt. (Close any script tabs you
edited live first, or your edits will fight the checkout.)

## Try it

```bash
git clone https://github.com/LucasCordova/pac-blitz.git
cd pac-blitz
```

Open `project.godot` in Godot (standard build). Run the project; arrow keys move
Blitz. On `main`, watch the ghost wander through the berry row: it *eats the
marionberries*. That is not a bug we fix today, it is the cliffhanger.
Why does the berry not care who touched it? Collision layers and masks: next week.

## What is deliberately missing

Walls and real collision (next week), the berry count on *screen* instead of the
Output panel (signals, week 3), enemy brains (state machines, weeks 4-5), Blitz's
growth stages (state machines + data-driven design, weeks 4-6), the actual
mazes (level building, week 10). Blitz grows with the course -
literally.

## Optional: git inside the Godot editor

Godot can show commits, diffs, and changed files **inside the editor** via the
official [Godot Git Plugin](https://github.com/godotengine/godot-git-plugin).
This is optional - plain `git` in a terminal does everything this course needs -
but if you like the in-editor view:

1. In Godot, open **AssetLib** (top center), search **"Godot Git Plugin"**, and
   install it into this project - or download the latest release from GitHub and
   extract so the folder is `addons/godot-git-plugin/`. GDExtension plugins load
   automatically; there is nothing to enable.
2. **Project → Version Control → Version Control Settings**, choose
   **GitPlugin**, and click **Connect to VCS**. A Commit dock and a Version
   Control panel appear.
3. **macOS note:** if the editor reports it cannot load the plugin, macOS
   quarantined the downloaded library. Allow it under System Settings → Privacy
   & Security, or run
   `xattr -d com.apple.quarantine addons/godot-git-plugin/macos/*.dylib`.

Keep the plugin out of your commits: it is a per-machine tool, not part of the
game (this repo ignores `addons/` locally via `.git/info/exclude`; add the same
line in your own repos, or add `addons/godot-git-plugin/` to `.gitignore`).

## Credits

All art is original coursework (drawn in the course's arcade palette, plus
Blitz in cardinal and gold); no Namco assets are used or included. Blitz the
Bearcat is Willamette's mascot; this fan-art pixel Blitz is ours.
