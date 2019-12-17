(
    rm -rf *.aux *.log *.bbl *.blg *.bcf *.toc *.fls *.nav *.out *.snm *.fdb_latexmk *.vrb *.gz *.run.xml main-blx.bib tex/*.aux
)&(
    (
        xelatex -interaction=nonstopmode -halt-on-error report 
    ) && biber report && (
        xelatex -interaction=nonstopmode -halt-on-error report 
    ) && (
        xelatex -interaction=nonstopmode report
    )
)
