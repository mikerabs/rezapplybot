TEXFILE = mikeresume2.tex
PDF = $(TEXFILE:.tex=.pdf)

# Docker compose command
DC = docker compose -f compose-dev.yaml

# Default target
all: resume

# Build the Docker image (if not already built)
build:
	$(DC) build

# Compile the resume
resume: build
	$(DC) run --rm latex $(TEXFILE)

# Clean auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk

# Force full rebuild (clean + resume)
rebuild: clean resume

