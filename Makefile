NAME=proj4

pdf:
	latex ${NAME}.tex
	bibtex ${NAME}
	latex ${NAME}.tex
	latex ${NAME}.tex
	dvips ${NAME}.dvi
	ps2pdf -sPAPERSIZE=a4 ${NAME}.ps

clean:
	-rm -f $(NAME).aux $(NAME).ps $(NAME).dvi $(NAME).log
