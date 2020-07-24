#!/bin/bash
grep -r setcounter .
find *.tex -type f -exec sed -i 's/\\setcounter{footnote}{0}/\\only<presentation>{\\setcounter{footnote}{0}}/g' {} \;
grep -r setcounter .
