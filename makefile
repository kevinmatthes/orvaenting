##
#
# makefile : build instructions for the project.
#
# See `LICENSE' for full license.
# See `README.md' for project details.
#
##

##
#
# Copyright (C) 2021 Kevin Matthes
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
##

################################################################################

##
#
# Variables.
#
##

# Software.
COPY	:= cp
REMOVE	:= rm

# Make directories.
MDOCS	:= -C ./.docs/
MLIB	:= -C ./lib/
MOCT	:= -C ./octave/

# Directories.
DOXDIR	:= ./.docs/html/ ./.docs/latex/

# Concrete files.
PDF		:= ./.docs/documentation.pdf
REFMAN	:= ./.docs/latex/refman.pdf



##
#
# Build instructions.
#
##

.PHONY: default doxygen install library manual pdf submodule tidy uninstall

default: submodule

doxygen: $(REFMAN)

install:
	make $(MOCT) install

library:
	make $(MLIB) default

manual: $(PDF) $(REFMAN)
	$(COPY) $(PDF) ./orvaenting.pdf
	$(COPY) $(REFMAN) ./liborvaenting.pdf

pdf: $(PDF)

$(PDF):
	make $(MDOCS) default

$(REFMAN):
	make $(MLIB) doxygen

submodule:
	make $(MLIB) submodule

tidy: $(REFMAN)
	$(REMOVE) $(DOXDIR) $(wildcard ./*.pdf) -rf
	make $(MDOCS) tidy
	make $(MLIB) tidy

uninstall:
	make $(MOCT) uninstall

################################################################################
