PREFIX ?= /usr/local

BINARY_DIR ?= $(PREFIX)/bin
ETC_DIR ?= $(PREFIX)/etc

.PHONY: uninstall install purge

install: bin/dockrun bin/dockrm
	install $(CURDIR)/bin/dockrun $(BINARY_DIR)/dockrun
	install $(CURDIR)/bin/dockrm $(BINARY_DIR)/dockrm

uninstall:
	rm -f $(BINARY_DIR)/dockrun
	rm -f $(BINARY_DIR)/dockrm

purge: uninstall
	$(CURDIR)/bin/dockclean
