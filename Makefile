all: pandoc tex

# The following three variables you need to edit.  Do it, or things won't work.
# The first one is probably going to be the most edited, as you're going to add
# files and remove other files and reorder things, etc...

# Put the files in the order you want them
# Where are these files located?
INPUT_DIR = chapters/
FILES = $(addprefix $(INPUT_DIR), Input1.md \
		Input2.md \ 
		Chapter4.md \
		Rewrite_of_chapter_3.md \
		Beginning.md \
		The_Llama_has_a_fork.md )


# What is the title of your book?
TITLE = Output

################################################################################
## You shouldn't have to edit anything below this line.
################################################################################

# set up output dir
build:
	mkdir -p build

pandoc: build
	pandoc --template scripts/tmpl.latex -o build/$(TITLE).tex $(FILES)

tex:
	xelatex -halt-on-error -output-directory build build/$(TITLE).tex 
FORCE:

clean:
	rm -rf build

.PHONY: all clean FORCE pandoc tex
