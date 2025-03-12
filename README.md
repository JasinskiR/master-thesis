# Master Thesis Project
## Comparison of selected concurrent and parallel programming mechanisms in Rust and C++
There is an [automatic version script](./auto_version_check.sh) to push changes daily at 0:00 and tagged them with date\
Set up automatic versioning with:
```bash
crontab -e
```
Then add the following line:
```bash
0 0 * * * path/auto_version_check.sh >> path/version_check.log 2>&1
```
Jak się zepsuje automatyczne generowanie
```
pdflatex -output-directory=build Dyplom.tex
bibtex build/Dyplom
pdflatex -output-directory=build Dyplom.tex
pdflatex -output-directory=build Dyplom.tex
```