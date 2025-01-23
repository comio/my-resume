RESUME_IN=Resume_Luigi_Mantellini_EN.tex Luigi_Mantellini.png
RESUME_OUT=Resume_Luigi_Mantellini_EN.pdf

all: resume

resume: $(RESUME_OUT)

$(RESUME_OUT): $(RESUME_IN)
	latexmk -pdf $<

distclean:
	rm -f *~ *.synctex.gz *.aux *.log *.out *.backup *.toc *.temp *.fdb_latexmk *.fls

clean: distclean
	rm -f *.pdf

.PHONY: all clean distclean
