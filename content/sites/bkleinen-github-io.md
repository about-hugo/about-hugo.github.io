---
title: "bkleinen.github.io"
date: 2024-05-11T01:16:47+02:00
draft: false
weight: 100
type: example
params:
  github: https://github.com/bkleinen/bkleinen.github.io
  site: https://home.htw-berlin.de/~kleinen/
  theme: https://github.com/bkleinen/bkleinen.github.io/tree/main/hugo/themes/greenpage
  description: My HTW Homepage.
---

My HTW Homepage contains all information about my classes and other HTW related stuff.
I've created an own theme based on bootstrap for it.

It contains more than 10 years of history, see https://home.htw-berlin.de/~kleinen/classes/.

<!--more-->

The site is automatically deployed both to https://bkleinen.github.io/ and the HTW home page
server for every tag pushed to main, powered by a combination of Makefile and shell scripts - 
all I have to do is commit the changes and then do a 

```sh
make deploy
```
