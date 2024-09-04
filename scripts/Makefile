# What is the title of your book?
TITLE = Book Title

################################################################################
## You shouldn't have to edit anything below this line.
################################################################################

all: tex

# set up output dir
build:
	mkdir -p build

tex: build
	xelatex -halt-on-error -output-directory build -interaction=batchmode -no-pdf '$(TITLE).tex'
	xelatex -halt-on-error -output-directory build -interaction=batchmode -output-driver='xdvipdfmx -z3' '$(TITLE).tex'

FORCE:

clean:
	rm -rf build

.PHONY: all clean FORCE tex
