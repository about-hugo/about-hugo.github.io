---
title: "Hugo Bare Theme"
date: 2024-05-11T11:39:05+02:00
draft: false
weight: 20
params:
  image: /screenshots/small/hugo-bare-theme.jpg
  github: https://github.com/about-hugo/hugo-bare-theme
  demo: https://about-hugo.github.io/hugo-bare-theme/
  theme: themes/hugo-bare-theme in repo
  description: freshly started hugo site with new generated theme
---

This is a tryout of starting a hugo page from scratch using 
**hugo new site  & hugo new theme**.

The generated theme contains some example content.
If you want to create the design of your page yourself, this
might be a good starting point. (Either this example or following the
steps to create this example documented in the readme.)

<!--more-->

![](/screenshots/big/hugo-bare-theme.jpg)

See the file trees below to see the structure of the generated theme.

The repo
<!--more-->
### Created Content in Theme:
```
themes/hugo-bare-theme/content
├── _index.md
└── posts
    ├── _index.md
    ├── post-1.md
    ├── post-2.md
    └── post-3
        ├── bryce-canyon.jpg
        └── index.md
```
### Created Structure/Layout in theme:

```                                                                             .
themes/hugo-bare-theme/layouts
├── _default
│   ├── baseof.html
│   ├── home.html
│   ├── list.html
│   └── single.html
└── partials
    ├── footer.html
    ├── head
    │   ├── css.html
    │   └── js.html
    ├── head.html
    ├── header.html
    ├── menu.html
    └── terms.html
```