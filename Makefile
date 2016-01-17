all:

test:
	@$(PWD)/bin/zspec --verbose test

.PHONY: test
