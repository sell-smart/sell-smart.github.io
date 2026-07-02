.PHONY: all render slides clean preview

all: slides render

render:
	quarto render

slides:
	quarto render case_studies/coffee-chain/slides.qmd
	quarto render case_studies/sports-retailer/slides.qmd
	quarto render case_studies/building-supplies-distributor/slides.qmd
	quarto render case_studies/qsr-chain/slides.qmd
	# slides.html are declared as resources in _quarto.yml, so the site
	# render (make render) copies them into docs/ — no manual cp needed.

preview:
	quarto preview

clean:
	rm -rf docs/*
	rm -f case_studies/*/slides.html
