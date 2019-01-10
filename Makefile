.PHONY: test build clean

SC=swift
NAME=Graph
BUILDDIR=.build
RELEASEDIR=$(BUILDDIR)/release
DEBUGDIR=$(BUILDDIR)/debug

SWIFT_FLAGS=--configuration debug -Xswiftc "-D" -Xswiftc "DEBUG"

build:
	$(SC) build $(SWIFT_FLAGS)

run: build
	./$(DEBUGDIR)/$(NAME)

test:
	swift test

clean:
	rm -rf $(BUILDDIR)
