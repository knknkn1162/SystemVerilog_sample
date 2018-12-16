VLOGC=iverilog
SIM=vvp
OPTION=-g2005-sv
MODULES=hello

.PHONY : clean all

all: $(MODULES)

%: %.sv
	$(VLOGC) $(OPTION) -o $* $<

clean:
	git ls-files --others --ignored --exclude-standard | xargs rm -rfv
