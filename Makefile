all: checklib index.html resume.pdf

clean:
	rm resume.pdf index.html

checklib:
	Rscript --no-site-file --no-environ --no-init-file -e ".libPaths()"

index.html: scripts/compile_resume.R resume.Rmd style.scss
	Rscript $<

resume.pdf: index.html
	wkhtmltopdf -B 0 -L 0 -R 0 -T 0 --page-height 430 --page-width 250 --viewport-size 850 $< $@

