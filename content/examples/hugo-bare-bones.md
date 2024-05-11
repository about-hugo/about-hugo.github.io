---
title: "Hugo Bare Bones"
date: 2024-05-11T11:39:05+02:00
draft: false
weight: 10
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

See the file trees below to see the structure in the source and resulting page.

The repo
<!--more-->
### File Tree right after hugo new site

```
hugo-bare-bones>tree .
.
├── archetypes
│   └── default.md
├── assets
├── content
├── data
├── hugo.toml
├── i18n
├── layouts
├── static
└── themes
```

### File Tree in finished Site
```
hugo-bare-bones>tree .
.
├── README.md
├── archetypes
│   └── default.md
├── assets
├── content
│   └── posts
│       ├── _index.md
│       └── hello.md
├── data
├── hugo.toml
├── i18n
├── layouts
│   ├── _default
│   │   ├── baseof.html
│   │   ├── list.html
│   │   └── single.html
│   └── index.html
├── static
└── themes
    └── bare-bones-theme
        ├── data
        └── i18n

```
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