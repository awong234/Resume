# Requirements to build

- Built on Windows 10 or 11, other OS not tested
- R version >= 3.5
- pandoc
- wkhtmltopdf
- make

On Windows, Chocolatey is the easiest way to get all of the required software.
Versions used to build are displayed.

```
choco install R.Project --version 4.4.2
choco install wkhtmltopdf --version 0.12.6.20210114
choco install make --version 4.4.1
choco install pandoc --version 3.5.0
# Optional
choco install R.Studio
```

For R you will need to install the R Markdown package.

```r
install.packages("rmarkdown") # >= 2.29
```
