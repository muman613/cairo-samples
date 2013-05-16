SUBDIRS=draw1 pdf svg cairomm-1 pango-1 pango-2

.PHONY : $(SUBDIRS)

all: $(SUBDIRS)
	$(foreach var, $(SUBDIRS), make -C $(var);)

cleanall: $(SUBDIRS)
	$(foreach var, $(SUBDIRS), make -C $(var) clean;)

