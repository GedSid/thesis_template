# Thesis Template

To compile the latex files, commit, and wait for the pipeline to generate the PDF artifact or run with Docker:

Disclaimer: You need Docker installed.

```bash
# Make the command wrapper executable
chmod +x latexdockercmd.sh
# Compile using pdflatex
./latexdockercmd.sh pdflatex main.tex
# Or use latexmk
./latexdockercmd.sh latexmk -cd -f -interaction=batchmode -pdf main.tex
# Cleanup: ./dockercmd.sh latexmk -c or -C
# Or make multiple passes (does not start container twice)
./latexdockercmd.sh /bin/sh -c "pdflatex main.tex && pdflatex main.tex"
```

To convert Markdown into Latex Use:

Disclaimer: You need Pandoc installed.

```bash
# Make the command wrapper executable
chmod +x md2tex.sh
# Convert using pandoc
./md2tex.sh
```