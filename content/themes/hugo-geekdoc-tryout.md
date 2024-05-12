---
title: "Hugo Geekdoc Theme Tryout"
date: 2024-05-11T00:38:31+02:00
draft: false
weight: 20
params:
  image: /screenshots/small/geekdocs-theme.jpg
  github: https://github.com/about-hugo/hugo-geekdoc-tryout
  demo: https://about-hugo.github.io/hugo-geekdoc-tryout/
  theme: https://github.com/thegeeklab/hugo-geekdoc
  theme_fork: https://github.com/about-hugo/hugo-geekdoc
  description: Geekdoc is an elegant comprehensive documentation theme based on Bootstrap.

---

Geekdoc is an elegant comprehensive documentation theme based on Bootstrap.

<!--more-->

![](/screenshots/big/geekdocs-theme.jpg)

## A Note on including the theme:

Geekdoc uses npm and webpack to build the theme.
I've forked the theme and update the node dependency to be able to run the scripts locally. The github page installs the theme via a tarball.

Created theme fork to update the node version to my version; and then learned that 
this is on purpose as they only support the LTS versions: 

https://github.com/thegeeklab/hugo-geekdoc/issues/641#issuecomment-1598230979


