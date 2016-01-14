.PHONY: all erp-ausarbeitung gather deploy clean

all: gather

erp-ausarbeitung:
	$(MAKE) -C erp-ausarbeitung/ all


gather: erp-ausarbeitung outfolder
	cp erp-ausarbeitung/erp-ausarbeitung.pdf out/erp-ausarbeitung.pdf

deploy: gather deployfolder
	rm -Rf deploy/`git log --pretty=format:'%H' -n 1`/
	cp -R out/ deploy/`git log --pretty=format:'%H' -n 1`/

outfolder:
	mkdir -p out/

deployfolder:
	mkdir -p deploy/

indent:
	$(MAKE) -C erp-ausarbeitung/ indent

clean:
	$(MAKE) -C erp-ausarbeitung/ clean
	rm -Rf out/
