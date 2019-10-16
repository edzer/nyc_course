all:
	vi morning.Rmd
	Rscript -e 'rmarkdown::render("morning.Rmd")'
	Rscript -e 'knitr::purl("morning.Rmd")'
	mv morning.html docs

afternoon:
	vi afternoon.Rmd
	Rscript -e 'rmarkdown::render("afternoon.Rmd")'
	Rscript -e 'knitr::purl("afternoon.Rmd")'
	mv afternoon.html docs

purl:
	Rscript -e 'knitr::purl("part1.Rmd")'

view1:
	google-chrome docs/morning.html

view2:
	google-chrome docs/afternoon.html

push:
	git commit -a -m 'update'
	git push
