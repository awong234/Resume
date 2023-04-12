# Requirements to build

- Built on Windows 10, other OS not tested
- R version >= 3.5 
- pandoc (comes with Rstudio, ensure pandoc path in PATH)
- wkhtmltopdf
- make

If you have chocolatey: 

```
choco install R.Project
choco install R.Studio
choco install wkhtmltopdf
choco install make
export RSTUDIO_PANDOC=C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools
```
