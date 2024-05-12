---
title: "Minimal Site & Theme"
date: 2024-05-11T00:27:16+02:00
draft: false
weight: 30
params:
  image: /screenshots/small/minimal-site.jpg
  github:  https://github.com/about-hugo/minimal-site
  demo: https://about-hugo.github.io/minimal-site/
  theme: https://github.com/about-hugo/minimal-site/tree/main/themes/minimal-theme
  theme_fork: 
  description: Ugly, but Structure and a dynamic Navigation.
---
Minimal Site/Minimal Theme is a basic site & theme 
which has a minimal page structure with header, footer and navigation partials
and a dynamic recursive navigation which reflects the complete `content/` file tree.
<!--more-->

This example shows
- how a site is constructed with partials for header, footer and navigation
- two ways to create menus/navigation:
     - dynamically from the /content folder tree structure (left site, in partials/navigation.html)
     - with .Site.Menus.main in partials/footer.html

See the [Navigation](/hugo/content#navigation) for more information on how to create a menu.


![](/screenshots/big/minimal-site.jpg)

Minimal-Theme is directly included in the repo.