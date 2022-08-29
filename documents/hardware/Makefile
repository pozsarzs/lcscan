# +----------------------------------------------------------------------------+
# | LCScan v0.3r3 * Logical circuit scanner                                    |
# | Copyright (C) 2006-2012 Pozsar Zsolt <pozsarzs@gmail.com>                  |
# | Makefile                                                                   |
# | Make file                                                                  |
# +----------------------------------------------------------------------------+

include ../../Makefile.global

docfiles= `ls -I ?? | grep -v Makefile`
lang=hardware

all:

clean:

install:
	@echo -n Installing document files...
	@$(install) --directory $(datadir)/doc/$(name)/$(lang)
	@for x in $(docfiles); do \
	  if [ -e $$x ]; then $(install) --mode $(txtmode) $$x $(datadir)/doc/$(name)/$(lang); fi; \
	done
	@echo "done."

uninstall:
	@echo -n Removing document files...
	@for x in $(docfiles); do \
	  if [ -e $$x ]; then $(rm) $(datadir)/doc/$(name)/$(lang)/$$x; fi; \
	done
	@rmdir $(datadir)/doc/$(name)/$(lang)
	@echo "done."

