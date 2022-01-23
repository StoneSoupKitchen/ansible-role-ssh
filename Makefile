PROJECT_ROOT := $(shell git rev-parse --show-toplevel)

ANSIBLE_LINT = pipenv run ansible-lint
MOLECULE = pipenv run molecule

MOLECULE_DISTRO ?= "debian:10"

.DEFAULT_GOAL: help

# Print a help message to the console.
#
.PHONY: help
help:
	@echo "Usage: $(MAKE) <target>"
	@echo
	@echo -e "\tclean\tRemove any generated build files"
	@echo -e "\tlint\tRun linters"
	@echo -e "\ttest\tRun automated tests"
	@echo

# Clean all python-generated artifacts and caches.
#
.PHONY: clean
clean:
	find . -name '*.pyc' -exec rm --force {} +
	find . -name '*.pyo' -exec rm --force {} +

# Run ansible-lint on the role.
#
.PHONY: lint
lint:
	@echo "--- Running ansible-lint"
	$(ANSIBLE_LINT)

# Run unit tests.
#
.PHONY: test
test: clean
	@echo "--- Running molecule tests"
	MOLECULE_DISTRO=$(MOLECULE_DISTRO) $(MOLECULE) test

