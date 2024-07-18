@echo off
Rscript --quiet --no-echo -e "x <- gsub('\\\\', '/', r'(%1)'); styler::style_file(x)" >NUL 2>&1