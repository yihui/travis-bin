#!/bin/sh

echo '<html><head><title>Pre-built binaries of Pandoc and TeXLive for Travis</title></head><body><p>Available binaries:</p><ul>'
for i in `ls dist`; do [ ${i} = "index.html" ] || echo "<li><a href=\"$i\">$i</a> (`ls -lh dist/$i | tr -s ' ' | cut -d' ' -f5`)</li>"; done
echo '</ul><pre>'
pandoc --version
echo
pandoc-citeproc --version
echo
tlmgr --version
echo '</pre><p>Last updated on '
date
echo '</p></body></html>'
