PREFIX = /usr/
MANDIR = $(PREFIX)/share/man/
ROOT = /

all:
	@echo Run \'make install\' to install Neofetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)bin
	@mkdir -p $(DESTDIR)$(MANDIR)man1
	@cp -p neofetch $(DESTDIR)$(PREFIX)bin/neofetch
	@cp -p neofetch.1 $(DESTDIR)$(MANDIR)man1
	@chmod 755 $(DESTDIR)$(PREFIX)bin/neofetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/neofetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/neofetch.1*

DO_NOT_USE_ROOTINSTALL = 0
root_install:
	@mkdir -p $(DESTDIR)$(ROOT)bin
	@mkdir -p $(DESTDIR)$(ROOT)bin
