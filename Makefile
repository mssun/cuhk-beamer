OBJS = sample.tex
all: pdf

pdf: $(OBJS) 
	latexmk -xelatex $^

pvc: $(OBJS)
	latexmk -xelatex -pvc $^

clean:
	latexmk -c
	@rm -f *.nav *.run.xml *.snm
	@rm -f figures/*-eps-converted-to.pdf
	@rm -f figures/*.dia~
