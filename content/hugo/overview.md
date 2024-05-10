---
title: "Overview"
date: 2024-05-10T10:10:01+02:00
draft: false
weight: 10
author: bkleinen
---


As a web static site generator, hugo takes the site structure and the site content (in markdown format) and
generates a static web site. The complete web site - HTML, CSS, JS in a directory structure - is then copied to the web server, which only needs to serve these static files.
<!--more-->

## Static Site Generator

As a static web site generator, hugo takes the site structure and the site content (in markdown format) and
generates a static web site:

```mermaid
flowchart LR
    content[/"Site Content (Markdown)"/]
    structure[/"Site Structure (HTML, CSS, JS)"/]
    hugo["`
    **HUGO**
     ⚙️ `"]
    website[/"Complete Website with Content 
    (HTML, CSS, JS)"/]
    content & structure --> hugo
    hugo --> website
```


## Why?

Very simply said, Hugo solves the problem every web site (consisting of more than one page) has: 
Combining an overall Site structure, such as Header, Footer and especially a uniform Navigation,
with the Site Contents.

```goat
                                                                                                .
    .-----+-----+-----.                  
    | Header          |
    +-----+-----------+ 
    |     |           | 
    |     |           | 
    |     |           | 
    | Nav.| Content   | 
    |     |           | 
    |     |           | 
    |     |           | 
    +-----+-----+-----+ 
    | Footer          |
    '-----+-----+-----'

```
*Simple Site Structure*

While Header, Navigation and Footer should stay stable, the Content needs to be replaced:
```goat
                                                                                                .

   .-----+-----+-----.
   | Header          |
   +-----+-----------+            +-----+-----+           +-----+-----+           +-----+-----+
   |H    |           |            |           |           |           |           |           |
   |│    |           |            |           |           |           |           |           |
   |├─A  |           |            |           |           |           |           |           |
   |│    | Content H |    <--     | Content A |   <--     | Content B |   <--     | Content C |
   |├─B  |           |            |           |           |           |           |           |
   |│    |           |            |           |           |           |           |           |
   |└─C  |           |            |           |           |           |           |           |
   +-----+-----+-----+            +-----+-----+           +-----+-----+           +-----+-----+
   | Footer          |
   '-----+-----+-----'
```
*Combine Content Pages with Site Structure*

This is, of course, a simplification. Note that I summarize site layout and css as site structure.

