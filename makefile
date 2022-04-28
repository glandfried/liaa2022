all:
	pdflatex -interaction=nonstopmode laFuncionDeCostoEpistemica.tex

Pacha_Pampas_2022_05_06_12hs.png:
	convert -density 300 laFuncionDeCostoEpistemica.pdf -resize 100% Pacha_Pampas_2022_05_06_12hs.png
