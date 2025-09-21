# Use official TeX Live image (full, all packages)
FROM texlive/texlive:latest

RUN apt-get update && apt-get install -y \
    make \
    latexmk \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /data

# Default command will be pdflatex
#ENTRYPOINT ["pdflatex"]
ENTRYPOINT ["latexmk"]
CMD ["-pdf", "-interaction=nonstopmode", "-halt-on-error"]

