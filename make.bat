@ECHO OFF

REM Command file for Sphinx documentation

set SPHINXBUILD=sphinx-build
set SOURCEDIR=source
set BUILDDIR=build

if "%1" == "" goto help

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS%
goto end

:help
echo.Usage: make.bat [builder]
echo.
echo.Builder is one of the following:
echo.  html      to make standalone HTML files
echo.  dirhtml   to make HTML files named index.html in directories
echo.  singlehtml to make a single large HTML file
echo.  pickle    to make pickle files
echo.  json      to make JSON files
echo.  latex     to make LaTeX files, you can set PAPER=a4 or PAPER=letter
echo.  latexpdf  to make LaTeX and PDF files (requires pdflatex)
echo.  text      to make plain text files
echo.  man       to make manual pages
echo.  texinfo   to make Texinfo files
echo.  info      to make Texinfo files and run them through makeinfo
echo.  epub      to make an epub
echo.  help      to display this help message

:end
