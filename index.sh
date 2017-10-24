#!/bin/sh

echo '<html><head><title>Pre-built binaries of Pandoc and TeXLive for Travis</title></head><body><ul>'
for i in `ls dist`; do [ ${i} = "index.html" ] || echo "<li><a href=\"$i\">$i</a></li>"; done
echo '</ul>Last updated on '
date
echo '</body></html>'
