PREFIX ?= /usr/local

BINARY_DIR ?= $(PREFIX)/bin
LIB_DIR ?= $(PREFIX)/lib
ETC_DIR ?= $(PREFIX)/etc

.PHONY: uninstall install purge

install: src/bin/dockrun src/bin/dockrm src/lib/dockrun-common
	install $(CURDIR)/src/bin/dockrun $(BINARY_DIR)/dockrun
	install $(CURDIR)/src/bin/dockrm $(BINARY_DIR)/dockrm
	install $(CURDIR)/src/lib/dockrun-common $(LIB_DIR)/dockrun-common

uninstall:
	rm -f $(BINARY_DIR)/dockrun
	rm -f $(BINARY_DIR)/dockrm
	rm -f $(LIB_DIR)/dockrun-common

purge: uninstall
	$(CURDIR)/src/bin/dockclean
