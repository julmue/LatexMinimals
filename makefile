# VARIABLES
# project directory
dirProject = .
# document name
docName = minimal
# xelatex options
xelatexOptions = -halt-on-error -file-line-error

# TARGETS
pdf: $(docName).tex
	xelatex $(xelatexOptions) $<

.PHONY: lint
lint: $(docName).tex
	lacheck  $<

.PHONY: clean
clean:
	rm *.pdf *.log *.aux
