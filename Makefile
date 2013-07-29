DESCRIPCIONES=$(wildcard descripciones/*)
CONTROLFILES=$(DESCRIPCIONES:descripciones/%=controlfiles/%)

all: $(CONTROLFILES)

controlfiles/%: descripciones/%
	mkdir -p controlfiles/
	./control-uno.sh $< $@

.PHONY: all
