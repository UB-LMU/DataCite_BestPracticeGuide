all:
	sed '/^## \[A\./,/^## \[C. Examples/d' bestpractice.md | \
	sed 's/^# DataCite Best Practice Guide//' | \
	sed 's/^#//' | \
	pandoc \
		-f markdown_github+pandoc_title_block \
		-V geometry:a4paper \
		-V colorlinks \
		--toc \
		--metadata link-citations \
		-s \
		-o bestpractice.pdf
clean:
	@$(RM) *.bcf *.run.xml *.out *.aux *.bbl *.blg *.dvi *.log *.pdfsync *.synctex.gz *.toc *~
