# Pathfinder Second Edition LaTeX Styles

This is a set of styles for LaTeX - specifically XeLaTeX - for making books and supplements that look similar to those that Paizo publish.
There is a lot to do, an it's not close to being finished yet.

Most of the code is coming from here: https://github.com/Krozark/RPG-LaTeX-Template/ that being MIT licensed, (at least at the time of forking) and the fact that I am probably going to deviate far from their code, I did not fork. Also, there are D&D logos and stuff in that project's history, and this is for Pathfinder, not D&D.
I don't want to have any reason for WotC to come and complain that I, or someone using this package, is taking their stuff.

A lot of this may break and not work initially.
I do want and appreciate pull requests more than bug reports. :-D

## How to use

### Initial Setup

First of all, go accept the Paizo Compatability License here: [https://paizo.com/licenses/compatibility](https://paizo.com/licenses/compatibility).
This will get you a zip file with the `Pathfinder-Icons.ttf` font.
You'll need this in a bit.

Next you're going to want to clone this repo to your `texmf` directory.
It seems to be pretty uniform between Windows and Linux: `$USER_DIR/texmf/`.
More precisely, clone it to the `$USER_DIR/texmf/tex/latex/` directory.
(You can get fancy and clone this to another location, and just symlink if you like, but I leave the details of that to you...)

Next, copy (or symlink) the contents of `PF2e-Tex/book/PF2e-Fonts` to `$USER_DIR/texmf/fonts/opentype/PF2e-Fonts/`.
No I didn't make any of those fonts.
Yes, they are all open source.

Last, copy the `Pathfinder-Icons.ttf` font to a "Paizo" subdirectory next to the other fonts, so here: `$USER_DIR/texmf/fonts/opentype/Paizo/`.

Now you should be able to run either `make` on Linux or `./build.ps1` on Windows in the root of this project, and it should build the `PF2e-TeX Spellbook.pdf` and put it in the new `build/` directory.

### Use & Documentation

~ stuff ~

## License

This is all under the MIT License, see `LICENSE.txt` for the details.
Attribution is nice, and if you want to let people know you are using this, feel free to contact me and I'll link to your product wherever it is on the web.

## Misc

The Pathfinder logo is - of course - Copyright Paizo.
The action images were made by me, but were traced from the Pathfinder 2nd Edition Playtest Rulebook.
I'm not sure how that shakes out in a copyright thing...

The Pathfinder-Icons.ttf font is also Copyright Paizo.

The action images are in two formats: SVG and EPS.
The SVG is there for ease of editing, as that is the format InkScape likes to use.
The EPS files are output from InkScape because TeX doesn't understand SVG yet... -_- I did my best to copy them from the 2nd Edition Rulebook, but there may be errors in size and rendering.

The fonts are from the [League of Moveable Type](https://github.com/theleagueof/) and from [Omnibus Type](http://omnibus-type.com/) and are all under the Open Font License.
Readme's and License are in the `book/fonts` directory.
I don't believe I am using all of them right now, and I may change them for something else... we shall see...
