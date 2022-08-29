# +----------------------------------------------------------------------------+
# | LCScan v0.3r3 * Logical circuit scanner                                    |
# | Copyright (C) 2006-2012 Pozsar Zsolt <pozsarzs@gmail.com>                  |
# | Makefile                                                                   |
# | Make file for FreePascal source.                                           |
# +----------------------------------------------------------------------------+

include ../../Makefile.global

srcfiles = lcscan-backend.lpr
binfiles = lcscan-backend

all:
	@echo Compiling source code...
	@for x in $(srcfiles); do \
	  if [ -e $$x ]; then ppc386 $(fpflag) $$x; echo ""; fi; \
	done
	@echo "done."

clean:
	@echo -n Cleaning source code...
	@$(rm) ./lib/i386-linux/*
	@echo "done."

install:
	@echo -n Installing binary files...
	@$(install) --directory $(bindir)
	@for x in $(binfiles); do \
	  if [ -e ./lib/i386-linux/$$x ]; then $(install) --mode $(binmode) ./lib/i386-linux/$$x $(bindir); fi; \
	  chmod 4755 $(bindir)/$$x; \
	done
	@echo "done."

uninstall:
	@echo -n Installing manual files...
	@for x in $(binfiles); do $(rm) $(bindir)/$$x; done
	@echo "Done."

