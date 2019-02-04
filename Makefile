.PHONY: all clean test

PS_SRC = src
OUTPUT = output

all: output

output: $(PS_SRC)/*.purs .psc-package
	psc-package sources | xargs purs compile '$(PS_SRC)/**/*.purs'
	@touch output

.psc-package: psc-package.json
	psc-package install
	touch .psc-package

clean:
	rm -rf $(OUTPUT)/*
