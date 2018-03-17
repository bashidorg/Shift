ifeq ($(PREFIX),)
	PREFIX := /usr
endif

install:
	install -d $(DESTDIR)$(PREFIX)/bin/
	install Shift $(DESTDIR)$(PREFIX)/bin/