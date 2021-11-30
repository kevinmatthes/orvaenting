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
ARCHIVE	:= ar
CC		:= gcc
COPY	:= cp
LISTER	:= cat
NEWDIR	:= mkdir
REMOVE	:= rm
PANDOC	:= pandoc

# Software flags.
AFLAGS	:= rs
CFLAGS	:= -std=c99 -Wall -Werror -Wextra -Wpedantic -D__ORVAENTING_INTERNAL__
LFLAGS	:= -lm
PFLAGS	:= -N

# File types.
HEADERS	:= $(wildcard ./*.h)
OBJECTS	:= $(subst .c,.o, $(wildcard ./orvaenting_*.c))
SOURCE	:= $(wildcard ./orvaenting_*.c)
YAML	:= $(wildcard ./.docs/*.yaml)

# Concrete files.
CONTRIBUTING	:= ./CONTRIBUTING.md
LIBRARY			:= ./liborvaenting.a
LICENSE			:= ./LICENSE
LSTART			:= ./.docs/license_begin.md
LSTOP			:= ./.docs/license_end.md
META_CONST		:= ./.docs/meta.yaml
NEWPAGE			:= ./.docs/newpage.md
PDF				:= ./orvaenting.pdf
README			:= ./README.md
SOFTWARE		:= ./.docs/software_requirements.md



##
#
# Build instructions.
#
##

.PHONY: default
default: submodule
	make tidy

$(LIBRARY): $(OBJECTS)
	$(ARCHIVE) $(AFLAGS) $@ $^

$(OBJECTS): $(SOURCE)
	$(CC) $(CFLAGS) -c $(LFLAGS) $^

$(PDF):	$(CONTRIBUTING) $(LICENSE) $(LSTART) $(LSTOP) $(NEWPAGE) $(README)	\
		$(SOFTWARE) $(YAML)
	$(LISTER)	$(YAML)							$(NEWPAGE) \
				$(README)						$(NEWPAGE) \
				$(SOFTWARE)						$(NEWPAGE) \
				$(CONTRIBUTING)					$(NEWPAGE) \
				$(LSTART) $(LICENSE) $(LSTOP)	\
	| $(PANDOC) $(PFLAGS) -o $@

.PHONY: submodule
submodule: $(HEADERS) $(LIBRARY)
	$(COPY) $^ ../

.PHONY: tidy
tidy: $(LIBRARY) $(OBJECTS)
	$(REMOVE) $^
