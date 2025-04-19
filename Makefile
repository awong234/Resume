all: index.html resume.pdf

clean:
	rm resume.pdf index.html

index.html: scripts/compile_resume.R resume.Rmd style.scss
	rig run -r 4.5.0 -f $<

resume.pdf: index.html
	wkhtmltopdf -B 0 -L 0 -R 0 -T 0 --page-height 490 --page-width 250 --viewport-size 850 $< $@

