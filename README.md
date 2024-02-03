# Thesis Template

Para compilar commitear y esperar que corra el pipeline o correr con docker:

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