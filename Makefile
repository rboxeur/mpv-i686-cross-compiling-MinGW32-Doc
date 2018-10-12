textfiles = $(wildcard *.rst)
htmlfiles := $(patsubst %.rst,%.html,$(textfiles))
CSSFILE := style.css
INSTALLDIR = machine_distante:repertoire_distant
OBJDIR = html

.PHONY: all clean install objdir html

all: objdir html

$(htmlfiles): %.html: %.rst
	rst2html --stylesheet-path=$(CSSFILE) $< > $@

html: $(htmlfiles)

objdir:
	@mkdir -p $(OBJDIR)

install: html
	scp $(OBJDIR)/$(htmlfiles) $(INSTALLDIR)

clean:
	@rm -f $(OBJDIR)/$(htmlfiles)
	@rm -rf $(OBJDIR)
