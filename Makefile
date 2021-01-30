#
# Minimal makefile for Sphinx documentation
#
# Version: 1.0.0
# Date: 2021-01-13
# Author: Yves Vindevogel (vindevoy)
#

#
# You can set these variables from the command line, and also
# from the environment for the first two.
#

SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

IMAGE_REPO=vindevoy
IMAGE_NAME=zythologie-eindwerk
IMAGE_VERSION=2021.01.30


.PHONY: help Makefile

#
# Put help as first task so that "make" without argument is like "make help".
#

help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

#
# watch checks all the files in source and if there's a change to a file, 
# it rebuilds the html.
#

watch:
	@./watch.sh &

#
# Simple pass-through but useful for dependencies
#

html:
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


latexpdf:
	@$(SPHINXBUILD) -M latexpdf "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

#
# Avoid common mistake
#

pdf:
	@$(SPHINXBUILD) -M latexpdf "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

#
# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
#

%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

#
# Build the docker image
#

docker-build: clean html
	@docker build -t $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_VERSION) -f docker/Dockerfile .

#
# Run the docker image
#

docker-run:
	@docker run -it -p 80:80 -d $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_VERSION)


#
# Install packages for Linux Mint (Ubuntu ?)
#

pre-install-mint-linux:
	sudo apt-get install entr
	
	sudo apt-get install latexmk
	sudo apt-get install texlive-latex-recommended
	sudo apt-get install texlive-latex-extra
	sudo apt-get install texlive-lang-european

#
# Installation using conda (conda must be installed)
#
# Note: You must be using the proper conda environment each time 
#       you use this Makefile. To do so, use "conda activate sphinx".
#

install-sphinx:
	conda create --name sphinx
	conda activate sphinx
	conda install python
	conda install sphinx
	conda install sphinx_rtd_theme
