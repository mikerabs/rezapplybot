# Main tex file (adjust if you rename it later)
TEXFILE = mikeresume2.tex
PDF = $(TEXFILE:.tex=.pdf)

DC = docker compose -f compose-dev.yaml

all: resume

build:
	$(DC) build

resume: build
	$(DC) run --rm latex $(TEXFILE)
	mkdir -p build && mv $(PDF) build/

clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk

rebuild: clean resume

