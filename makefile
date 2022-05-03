all: auxiliar/tex/.git
	pdflatex -interaction=nonstopmode laFuncionDeCostoEpistemica.tex

auxiliar/tex/.git:
	make -C auxiliar
	
Pacha_Pampas_2022_05_06_12hs.png:
	convert -density 300 laFuncionDeCostoEpistemica.pdf[0] -resize 100% Pacha_Pampas_2022_05_06_12hs.png

Pacha_Pampas_2022_05_06_12hs.pdf:
	pdftk laFuncionDeCostoEpistemica.pdf cat 1-1 output Pacha_Pampas_2022_05_06_12hs.pdf
