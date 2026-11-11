# Learn to Fly: source code

![Learn to Fly cover art](docs/capsule.jpg)

ActionScript 2 source for Learn to Fly (2009), from the last build, version 3.54 (2017). All of the exported code came from the Flash project. It was written on the main timeline and on frames and instances inside library symbols.

This is an edited snapshot of the Flash source. We removed platform integrations and cleaned up the scripts that called them. The gameplay guides point to the retained mechanics and formulas.

## Mechanics

The [mechanics guide](docs/mechanics.md) follows a flight from the ramp to the water, including gliding, rocket thrust, and water bounces. It also covers flight payouts, gear upgrades, and stage goals.

## Artwork renders

[Preview](docs/art-renders/preview.png) · [Asset manifest](docs/art-renders/manifest.csv). The full pack contains transparent 256 × 256 and 1024 × 1024 PNGs in `learn-to-fly-art-renders.zip` for [Releases](../../releases).

## What's here

This release is for reading the source. The game lived inside a Flash project file, with its code spread over the frames of its timelines, and the original art and sound files aren't included.

`scripts/` holds code exported from the Flash project file:

1. `Main timeline.as`: the code on the game's main timeline.
2. `Library/`: one file per library symbol that has code, in the same folders as the project's library.

Each block starts with a comment saying where it sits, for example `// ---- layer "Control", frame 4 ("init")`, or the instance it's attached to for `on (...)` and `onClipEvent (...)` code.

## License

The [LBG-NCNC License v1.0](LICENSE.md) covers Light Bringer Games' source code in this repository.

You can read, use, change, and share the code for noncommercial purposes, including by forking it on GitHub. When sharing, credit Light Bringer Games and keep the license and copyright notices. Get written permission before distributing or hosting a product based on the code that competes with or undercuts a Light Bringer Games product or service, even if it's free. The full license governs.

Light Bringer Games reserves its rights in the game's name, art, and sound. Third-party files have their own licenses.
