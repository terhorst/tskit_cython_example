all: clone compile run

clone:
	git clone --depth=1 --recursive git@github.com:/tskit-dev/tskit.git

compile:
	python setup.py develop

run:
	python -c "import example; example.main()"
