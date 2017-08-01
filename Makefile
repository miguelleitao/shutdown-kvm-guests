#!/usr/bin/make -f

build:

install_service: build
	install -d $(DESTDIR)/etc/init.d
	install -m 755 virtmm $(DESTDIR)/etc/init.d/

install: build
	install -d $(DESTDIR)/usr/local/bin
        install -m 755 virtmm $(DESTDIR)/usr/local/bin/

.PHONY: install build
