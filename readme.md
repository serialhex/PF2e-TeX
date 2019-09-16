# Pathfinder Second Edition LaTeX Styles

This is a set of styles for LaTeX - specifically XeLaTeX - for making books and supplements that look similar to those that Paizo publish.  There is a lot to do, an it's not close to being finished yet.

Most of the code is coming from here: https://github.com/Krozark/RPG-LaTeX-Template/ that being MIT licensed, (at least at the time of forking) and the fact that I am probably going to deviate far from their code, I did not fork. Also, there are D&D logos and stuff in that project's history, and this is for Pathfinder, not D&D.  I don't want to have any reason for WotC to come and complain that I, or someone using this package, is taking their stuff.

A lot of this may break and not work initially.  I do want and appreciate pull requests more than bug reports. :-D

## How to use

`git submodule add http://192.168.1.2:3000/serialhex/PF2e-Tex.git lib` BAM!

### NOTE!!!

**There was a specific way that I was using this library.  Basically as a submodule included into my other projects.  Unfortunately I have changed the build process like a dozen times since I initially wrote this intro, so that is out-of-date.  Once I have this in more than a pre-alpha stage I'll write a better into on how this can be used.  For now, you can use the following mostly not-good method.**

How _**I**_ am using this, is as a submodule in projects that require it.  Here is how I lay things out:

- tmpl.latex
- build.ps1
- PF2e-TeX
- Project
  - File1.md
  - File2.md
  - FileX.md

The `tmpl.latex` and `build.ps1` files are in the `scripts` directory of this repository, but I copy them over and adjust them as needed.  If you look in the `build.ps1` file, I use Pandoc to assemble the Markdown files together into one tex document, that then gets passed into XeLaTeX.  Both of those files **need to** get edited a bit for your specific project.  The reason they are in this repository is so I don't have to write those scripts a dozen times, I just edit them as I need to.

### Say WAAAAT?

Why do things this way?  First of all, Markdown is simpler for just laying down text with minimal formatting, which is why everything is in Markdown initially.  Pandoc does an awesome job of compiling Markdown to TeX, and will keep all TeX markup in the document in such a way as to be rendered properly.

Also, what is a `*.ps1` file you ask?  It's a PowerShell script file.  If you're not on Windows you probably don't have it.  I don't have the time or energy to get this to work in *nix yet, so if you want one, and you're *nix savvy, go ahead and make one and open a pull request.  I'll take a look and if it's good it will be pulled in.

## License

This is all under the MIT License, see `LICENSE.txt` for the details.  Attribution is nice, and if you want to let people know you are using this, feel free to contact me and I'll link to your product wherever it is on the web.

## Misc

The Pathfinder logo is - of course - Copyright Paizo.  The action images were made by me, but were traced from the Pathfinder 2nd Edition Playtest Rulebook.  I'm not sure how that shakes out in a copyright thing...

The action images are in two formats: SVG and EPS.  The SVG is there for ease of editing, as that is the format InkScape likes to use.  The EPS files are output from InkScape because TeX doesn't understand SVG yet... -_-  I did my best to copy them from the 2nd Edition Rulebook, but there may be errors in size and rendering.

The fonts are from the [League of Moveable Type](https://github.com/theleagueof/) and from [Omnibus Type](http://omnibus-type.com/) and are all under the Open Font License.  Readme's and License are in the `book/fonts` directory.  I don't believe I am using all of them right now, and I may change them for something else... we shall see...
