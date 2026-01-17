.PHONY: all render slides clean preview

all: render slides

render:
	quarto render

slides:
	quarto render case_studies/coffee-chain/slides.qmd
	quarto render case_studies/sports-retailer/slides.qmd
	quarto render case_studies/building-supplies-distributor/slides.qmd
	quarto render case_studies/qsr-chain/slides.qmd
	cp case_studies/coffee-chain/slides.html docs/case_studies/coffee-chain/
	cp case_studies/sports-retailer/slides.html docs/case_studies/sports-retailer/
	cp case_studies/building-supplies-distributor/slides.html docs/case_studies/building-supplies-distributor/
	cp case_studies/qsr-chain/slides.html docs/case_studies/qsr-chain/

preview:
	quarto preview

clean:
	rm -rf docs/*
	rm -f case_studies/*/slides.html
