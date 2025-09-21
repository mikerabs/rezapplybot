FROM texlive/texlive:latest

RUN apt-get update && apt-get install -y \
    make \
    latexmk \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENTRYPOINT ["latexmk"]
CMD ["-pdf", "-interaction=nonstopmode", "-halt-on-error"]

