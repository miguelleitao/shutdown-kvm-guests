#!/usr/bin/make -f

build:

install: build
	install -d $(DESTDIR)/etc/init.d
	install -m 755 virtmm $(DESTDIR)/etc/init.d/

.PHONY: install build
