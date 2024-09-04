# Pathfinder Second Edition LaTeX Styles

This is a set of styles for LaTeX - specifically XeLaTeX - for making books and supplements that look similar to those that Paizo publish.  There is a lot to do, an it's not close to being finished yet.

Most of the code is coming from here: https://github.com/Krozark/RPG-LaTeX-Template/ that being MIT licensed, (at least at the time of forking) and the fact that I am probably going to deviate far from their code, I did not fork. Also, there are D&D logos and stuff in that project's history, and this is for Pathfinder, not D&D.  I don't want to have any reason for WotC to come and complain that I, or someone using this package, is taking their stuff.

A lot of this may break and not work initially.  I do want and appreciate pull requests more than bug reports. :-D

## How to use

tl;dr:

```
git init foo
cd foo
git submodule add https://github.com/serialhex/PF2e-Tex.git lib
cp lib/scripts/build.ps1 .
cp lib/scripts/tmpl.tex foo.tex
nano build.ps1                    # change $title variable to "foo"
nano foo.tex                      # start writing your awesome content
./build.ps1                       # look at your awesome PDF
```

BAM!

### NOTE!!!

**There was a specific way that I was using this library.  Basically as a submodule included into my other projects.  Unfortunately I have changed the build process like a dozen times since I initially wrote this intro, so that is out-of-date.  Once I have this in more than a pre-alpha stage I'll write a better into on how this can be used.**

There are a pair of scripts in the `scripts` directory.  Well a script and a template.  Use the `build.ps1` script to, well, build the project, and the template `tmpl.tex` as the main file that you include everything else in.  When you make your project, change the name of the `$title` variable to whatever you named your TeX file.  The resulting PDF will be named the same thing.

The script uses xelatex for all rendering, so be sure to have that installed.  I use TexLive on Windows, with *ALL OF THE THINGS* installed.  I try not to use utilities that need to fetch rando libraries from the 'net, so anything I use will (hopefully) either be in a default install or included.  Make an issue & maybe a PR of this isn't the case.

I typically use a `./ch/` directory and `\include{}` all my files from there.  This makes it easier to work on one part at a time.  If you need to further subdivide you can use the `\input{}` directive to add more stuff.  I've done this, for example, to make some 1e & 2e Pathfinder stuff that has the same intro text, but of course very different rules.  Using `\include{foo-2e}` and `\include{foo-1e}`, then inside both `foo-*` have an `\input{foo-intro}` makes it mush easier if I want to change the intro a bit, I only have to do it once.


## License

This is all under the MIT License, see `LICENSE.txt` for the details.  Attribution is nice, and if you want to let people know you are using this, feel free to contact me and I'll link to your product wherever it is on the web.

## Misc

The Pathfinder logo is - of course - Copyright Paizo.  The action images were made by me, but were traced from the Pathfinder 2nd Edition Playtest Rulebook.  I'm not sure how that shakes out in a copyright thing...

The Pathfinder-Icons.ttf font is also Copyright Paizo.

The action images are in two formats: SVG and EPS.  The SVG is there for ease of editing, as that is the format InkScape likes to use.  The EPS files are output from InkScape because TeX doesn't understand SVG yet... -_-  I did my best to copy them from the 2nd Edition Rulebook, but there may be errors in size and rendering.

The fonts are from the [League of Moveable Type](https://github.com/theleagueof/) and from [Omnibus Type](http://omnibus-type.com/) and are all under the Open Font License.  Readme's and License are in the `book/fonts` directory.  I don't believe I am using all of them right now, and I may change them for something else... we shall see...

