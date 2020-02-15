# This is obviously more useful if you have more than one stemma

define makestemma
	xelatex -output-directory=.output "\\def\\drawgrid{1} \input{src/$(strip $(1)).tex}"
	mv ".output/"$(strip $(1))".pdf" stemmas/$(strip $(1))"_with_grid.pdf"
	xelatex -output-directory=.output src/$(strip $(1))
	mv ".output/"$(strip $(1))".pdf" stemmas/
endef

.PHONY: clean main a b

prepare:
	mkdir -p .output
	mkdir -p stemmas

clean: prepare
	rm -f .output/*
	rm -f stemmas/*

stemma:
	$(call makestemma, stemma)

all: clean stemma
