PREFIX ?= /usr/local

BINARY_DIR ?= $(PREFIX)/bin
LIB_DIR ?= $(PREFIX)/lib
ETC_DIR ?= $(PREFIX)/etc

CURR_DIR =$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

$(info $$CURR_DIR is [${CURR_DIR}])

.PHONY: uninstall install purge

install: $(CURR_DIR)/src/bin/dockrun $(CURR_DIR)/src/bin/dockrm $(CURR_DIR)/src/lib/dockrun-common
	mkdir -p $(BINARY_DIR)
	mkdir -p $(LIB_DIR)
	install $(CURR_DIR)/src/bin/dockrun $(BINARY_DIR)/dockrun
	install $(CURR_DIR)/src/bin/dockrm $(BINARY_DIR)/dockrm
	install $(CURR_DIR)/src/lib/dockrun-common $(LIB_DIR)/dockrun-common

uninstall:
	rm -f $(BINARY_DIR)/dockrun
	rm -f $(BINARY_DIR)/dockrm
	rm -f $(LIB_DIR)/dockrun-common

purge: uninstall
	$(CURR_DIR)/src/bin/dockclean
