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

SHELL=/bin/bash

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
# Docker commanges
#

build: clean html
	@docker build -t $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_VERSION) -f docker/Dockerfile .

run:
	@docker run -it -p 80:80 -d --name $(IMAGE_NAME) $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_VERSION)

stop:
	@docker stop $(IMAGE_NAME)

tag: build
	docker tag $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_VERSION) $(IMAGE_REPO)/$(IMAGE_NAME):latest

publish: tag
	docker push $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_VERSION)
	docker push $(IMAGE_REPO)/$(IMAGE_NAME):latest

remove:
	$(eval ic=$(shell docker images | grep '$(IMAGE_REPO)/$(IMAGE_NAME)' | wc -l))
	
	@if [[ "$(ic)" -ne 0 ]]; then docker images | grep '$(IMAGE_REPO)/$(IMAGE_NAME)' | \
	sed 's/  */ /g' | cut -d ' ' -f3 | xargs docker image remove --force; fi

prune:
	docker system prune -f

#
# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
#

%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

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
