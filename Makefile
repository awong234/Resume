all: index.html resume.pdf 

clean:
	rm resume.pdf cover_letter.pdf index.html

index.html: scripts/compile_resume.R resume.Rmd style.scss
	Rscript $<

resume.pdf: index.html
	wkhtmltopdf -B 0 -L 0 -R 0 -T 0 $< $@

