# Dependencies:
# * build-essential (make)
# * texlive-fonts-extra
# * texlive-lang-portuguese
# * wget

current_dir = $(shell pwd)

all: clean build

build: projeto resumo

projeto:
	export openout_any=a; \
	lualatex --synctex=1 --interaction=nonstopmode --file-line-error --recorder --output-directory=$(current_dir) $(current_dir)/projeto.tex; \
	bibtex $(current_dir)/projeto; \
	lualatex --synctex=1 --interaction=nonstopmode --file-line-error --recorder --output-directory=$(current_dir) $(current_dir)/projeto.tex; \
	lualatex --synctex=1 --interaction=nonstopmode --file-line-error --recorder --output-directory=$(current_dir) $(current_dir)/projeto.tex

resumo:
	lualatex resumo.tex
	pandoc resumo.tex -o resumo.docx --from=latex --to=docx

clean:
	@CLEAN_FILES="*.aux *.bbl *.blg *.fls *.gz *.lof *.log *.lot *.out *.pdf *.toc *latexmk"; \
	rm -rf $$CLEAN_FILES paginas/$$CLEAN_FILES
