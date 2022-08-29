# +----------------------------------------------------------------------------+
# | LCScan v0.3r3 * Logical circuit scanner                                    |
# | Copyright (C) 2006-2012 Pozsar Zsolt <pozsarzs@gmail.com>                  |
# | Makefile                                                                   |
# | Make file                                                                  |
# +----------------------------------------------------------------------------+

include ../Makefile.global

languages = en hu
subdir =

all:

clean:

install:
	@echo -n Installing manual files...
	@for x in $(languages); do \
	  if [ -e $(name)_$$x.7 ]; \
	  then \
	    $(install) --directory $(mandir)/$$x/man7; \
	    $(install) --mode $(txtmode) $(name)_$$x.7 $(mandir)/$$x/man7; \
	    mv $(mandir)/$$x/man7/$(name)_$$x.7 $(mandir)/$$x/man7/$(name).7 ; \
	  fi; \
	done
	@$(install) --directory $(mandir)/man7;
	@mv $(mandir)/en/man7/* $(mandir)/man7
	@rmdir $(mandir)/en/man7/
	@rmdir $(mandir)/en
	@for x in $(languages); do \
	  if [ -e $(name)-backend_$$x.7 ]; \
	  then \
	    $(install) --directory $(mandir)/$$x/man7; \
	    $(install) --mode $(txtmode) $(name)-backend_$$x.7 $(mandir)/$$x/man7; \
	    mv $(mandir)/$$x/man7/$(name)-backend_$$x.7 $(mandir)/$$x/man7/$(name)-backend.7 ; \
	  fi; \
	done
	@$(install) --directory $(mandir)/man7;
	@mv $(mandir)/en/man7/* $(mandir)/man7
	@rmdir $(mandir)/en/man7/
	@rmdir $(mandir)/en
	@echo "done."

uninstall:
	@echo -n Removing manual files...
	@for x in $(languages); do \
	  if [ -e $(name)_$$x.7 ]; \
	  then \
	    $(rm) $(mandir)/$$x/man7/$(name).7; \
	  fi; \
	done
	@$(rm) $(mandir)/man7/$(name).7;
	@for x in $(languages); do \
	  if [ -e $(name)-backend_$$x.7 ]; \
	  then \
	    $(rm) $(mandir)/$$x/man7/$(name)-backend.7; \
	  fi; \
	done
	@$(rm) $(mandir)/man7/$(name)-backend.7;
	@echo "done."

