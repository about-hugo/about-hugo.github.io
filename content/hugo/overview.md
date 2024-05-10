---
title: "Overview"
date: 2024-05-10T10:10:01+02:00
draft: true
weight: 10
---

Very simply said, Hugo solves the problem every web site (consisting of more than one page) has: 
Combining an overall Site structure, such as Header, Footer and especially a uniform Navigation,
with the Site Contents:

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


## Static Site Generator

As a static site generator, hugo takes the site structure and the site content (in markdown format) and
generates a static web site:

```mermaid
flowchart LR
    content[/"Site Content (Markdown)"/]
    structure[/"Site Structure (HTML, CSS, JS)"/]
    hugo["`**HUGO**`"]
    website[/"Complete Website (HTML, CSS, JS)"/]
    content & structure --> hugo
    hugo --> website
```

