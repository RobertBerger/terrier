#!/bin/bash
grep --color -E -r folder: .
find *.tex -type f -exec sed -i 's/folder:/dir:/g' {} \;
grep --color -E -r folder: .
grep --color -E -r dir: .
