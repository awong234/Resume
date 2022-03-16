all: checklib index.html resume.pdf

clean:
	rm resume.pdf cover_letter.pdf index.html

checklib:
	Rscript --no-site-file --no-environ --no-init-file -e ".libPaths()"

index.html: scripts/compile_resume.R resume.Rmd style.scss
	Rscript $<

resume.pdf: index.html
	wkhtmltopdf -B 20 -L 0 -R 0 -T 0 $< $@

