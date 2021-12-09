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
NEWDIR	:= mkdir
OCTAVE	:= octave-cli
REMOVE	:= rm

# Directories.
INSTALLDIR	:= ~/octave/orvaenting/
OCTDIR		:= ~/octave/
DIRS		:= $(INSTALLDIR) $(OCTDIR)

# Library compilation requirements.
SOURCE	:= $(wildcard ./*.m)

# Concrete files.
SELF	:= ./makefile



##
#
# Build instructions.
#
##

.PHONY: install tidy uninstall

default: install

$(DIRS):
	$(NEWDIR) $@

install: $(DIRS) $(SOURCE)
	$(COPY) $(SOURCE) $(INSTALLDIR)
	$(OCTAVE) ./install_orvaenting.m

uninstall:
	$(OCTAVE) ./uninstall_orvaenting.m
	$(REMOVE) $(INSTALLDIR) -rfv

################################################################################
