#!/bin/sh

echo '<html><head><title>Pre-built binaries of Pandoc and TeXLive for Travis</title></head>'
echo '<body><p>Available binaries (<a href="https://github.com/yihui/travis-bin">Github repo</a>):</p><ul>'
for i in `ls dist`; do [ ${i} = "index.html" ] || echo "<li><a href=\"$i\">$i</a> (`ls -lh dist/$i | tr -s ' ' | cut -d' ' -f5`)</li>"; done
echo '</ul><pre>'
cat dist/.pandoc-version.txt
echo
cat dist/.tinytex-version.txt
echo '</pre><p>Last updated on '
date
echo '</p></body></html>'
