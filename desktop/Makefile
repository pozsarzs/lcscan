# +----------------------------------------------------------------------------+
# | LCScan v0.3r3 * Logical circuit scanner                                    |
# | Copyright (C) 2006-2012 Pozsar Zsolt <pozsarzs@gmail.com>                  |
# | Makefile                                                                   |
# | Make file                                                                  |
# +----------------------------------------------------------------------------+

include ../Makefile.global

desktopfiles= `ls *.desktop`
iconfiles = `ls *.xpm`

all:

clean:

install:
	@echo -n Installing desktop files...
	@$(install) --directory $(datadir)/applications
	@for x in $(desktopfiles); do \
	  if [ -e $$x ]; then $(install) --mode $(txtmode) $$x $(datadir)/applications/; fi; \
	done
	@echo "done."
	@echo -n Installing icon files...
	@$(install) --directory $(datadir)/pixmaps
	@for x in $(iconfiles); do \
	  if [ -e $$x ]; then $(install) --mode $(txtmode) $$x $(datadir)/pixmaps/; fi; \
	done
	@echo "done."

uninstall:
	@echo -n Removing desktop files...
	@for x in $(desktopfiles); do \
	  if [ -e $$x ]; then $(rm) $(datadir)/applications/$$x; fi; \
	done
	@echo "done."
	@echo -n Removing icon files...
	@for x in $(iconfiles); do \
	  if [ -e $$x ]; then $(rm) $(datadir)/pixmaps/$$x; fi; \
	done
	@echo "Done."

