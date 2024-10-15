# To set the project name form the directory basename
export PROJECT := $(notdir $(shell pwd)).rom

# To force the project name
export PROJECT := myrom.rom

all: project docs


.PHONY: configure docs clean mrproper

configure:
	@$(MAKE) -C src $@
	@$(MAKE) -C docs $@

project:
	@echo -e "\nMake project $(PROJECT)\n"
	@$(MAKE) -C src

docs:
	@echo -e "\nMake project $(PROJECT) man page\n"
	@$(MAKE) -C docs

clean:
	@$(MAKE) -C src $@
	@$(MAKE) -C docs $@


mrproper:
	@$(MAKE) -C src $@
	@$(MAKE) -C docs $@

