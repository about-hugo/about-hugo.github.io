---
title: "Hugo Bare Bones"
date: 2024-05-11T11:39:05+02:00
draft: true
weight: 1000
params:
  image: /screenshots/small/hugo-bare-bones.jpg
  github: https://github.com/about-hugo/hugo-bare-bones
  demo: https://about-hugo.github.io/hugo-bare-bones/
  theme: no theme
  description: a minimal hugo site
---

This is an attempt at the smallest hugo site possible. 
It contains three pages: / (Home), a posts index and a single post.

It can be used as a base for first hugo experiments as it is not cluttered 
with complex features or any content.

<!--more-->

![](/screenshots/big/hugo-bare-bones.jpg)

See the tree outputs below to see the structure in the source and resulting page.

The repo
<!--more-->
### Hugo Content dir:
```
content
└── posts
    ├── _index.md
    └── hello.md
```
### Created site (in /public):
```                                                                             .
public
├── index.html
└── posts
    ├── hello
    │   └── index.html
    └── index.html
```