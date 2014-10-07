[![Build Status](https://travis-ci.org/yihui/pandoc-ubuntu.svg)](https://travis-ci.org/yihui/pandoc-ubuntu)

It is painful to install the latest version of Pandoc on Ubuntu/Debian. It is
not that you cannot do it, nor is it super difficult (this pain is not specific
to Pandoc, actually). You just need to prepare the giant building environment,
and take a relatively long time to compile packages from source. As someone who
is always impatient with software packages that are years behind their latest
versions, I'm trying to build the binaries for `pandoc` and `pandoc-citeproc` on
the Travis CI platform and upload them to back to this repository using the
awesome [Github releases](https://help.github.com/articles/about-releases/). The
main purpose is for checking R package with R Markdown v2 vignettes on Travis
CI (e.g. the [crandalf](https://github.com/yihui/crandalf) project). Unless you
understand what I'm doing here, you are not recommended to download the Pandoc
binaries here and use them in production.

Yes, I understand the point and importance of "being stable", but I also like
"cutting-edge" versions to be tested early and more frequently. From the
perspective of users, they usually do not care about the versions of software at
all until they are bitten by bugs or suddenly realize some cool new features
some day. I just cannot stand hearing some known bugs biting users again and
again simply because it is hard to upgrade software packages. Developers often
ask for testing before releasing a package, but nobody actually listens or is
willing to do it. I hope this repo can help us identify potential problems early
in the latest version of Pandoc (well, I really wish we could find no problems).

There is no magic in `.travis.yml`: everything was basically taken from
<http://johnmacfarlane.net/pandoc/installing.html>. Many thanks to the author
and contributors of Pandoc for making such a great package, and also to the
Travis CI team. I believe both have changed the world.

This repository only has one tag/release, which is always `latest`, and the
binaries can be downloaded at:
https://github.com/yihui/pandoc-ubuntu/releases/tag/latest It takes about 22
minutes to rebuild and release `pandoc` and `pandoc-citeproc` on Travis.
