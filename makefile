all: auxiliar/tex/.git
	pdflatex -interaction=nonstopmode laFuncionDeCostoEpistemica.tex

auxiliar/tex/.git:verdades_empiricas.pdf
	make -C auxiliar
	
Pacha_Pampas_2022_05_06_12hs.png:
	convert -density 300 laFuncionDeCostoEpistemica.pdf[0] -resize 100% Pacha_Pampas_2022_05_06_12hs.png

tapas: laFuncionDeCostoEpistemica.pdf
	convert -density 300 laFuncionDeCostoEpistemica.pdf[24] -resize 100% png/cooperacion0.png
	convert -density 300 laFuncionDeCostoEpistemica.pdf[25] -resize 100% png/cooperacion1.png
	convert -density 300 laFuncionDeCostoEpistemica.pdf[26] -resize 100% png/cooperacion2.png
	convert -density 300 laFuncionDeCostoEpistemica.pdf[27] -resize 100% png/cooperacion3.png
	convert -density 300 laFuncionDeCostoEpistemica.pdf[28] -resize 100% png/cooperacion4.png
	convert -density 300 laFuncionDeCostoEpistemica.pdf[30] -resize 100% png/cooperacion5.png
	convert -density 300 laFuncionDeCostoEpistemica.pdf[31] -resize 100% png/cooperacion6.png
	convert -density 300 laFuncionDeCostoEpistemica.pdf[32] -resize 100% png/cooperacion7.png
	convert -density 300 laFuncionDeCostoEpistemica.pdf[34] -resize 100% png/cooperacion8.png

Pacha_Pampas_2022_05_06_12hs.pdf:
	pdftk laFuncionDeCostoEpistemica.pdf cat 1-1 output Pacha_Pampas_2022_05_06_12hs.pdf
