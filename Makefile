DESCRIPCIONES=$(wildcard descripciones/*)
CONTROLFILES=$(DESCRIPCIONES:descripciones/%=controlfiles/%)
DEBS=$(wildcard debs/*)

all: update

controlfiles/%: descripciones/%
	mkdir -p controlfiles/
	./control-uno.sh $< $@

debs/: $(CONTROLFILES)
	mkdir -p debs/
	./meta-muchos.sh $?

clean:
	rm -rf controlfiles/

clean-all: clean
	rm -rf debs/

update: debs/
	reprepro -b ../reprepro/utncillo/ includedeb lombardi debs/*

.PHONY: all clean clean-all update
