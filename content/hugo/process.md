---
title: "Content Creation and Delivery"
date: 2024-05-10T19:44:12+02:00
draft: true
weight: 20
---

Most known Web Content Management Systems (like Wordpress, Typo3, Drupal) are Web-Applications
which integrate content editing and publication in one single application. With a static
site generator, these process steps are divided: Content creation is done on your
local computer, and content delivery is done by a static web server like nginx or apache.
<!--more-->

## Editing Publishing Separation

With CMS built as Web Apps, e.g. with the LAMP Stack[3] (Linux, Apache, MySQL, PHP)
 Editing and Publishing is both done through the same App (the "CMS" like Wordpress, Typo3 etc.):


[3]: https://de.wikipedia.org/wiki/LAMP_(Softwarepaket)

### WebApp CMS: Content Creation and Delivery through one Software
```mermaid
flowchart LR
subgraph thecms["WebApp CMS"]
direction LR


subgraph Client["Client Side"]
ed1((Editor))
re1((Reader))
re2((Reader))
  browser1
  browser2
  browser3
end


ed1 --> browser1["Browser"]
re1 --> browser2["Browser"]
re2 --> browser3["Browser"]

subgraph Server["Server Side"]
direction TB
  subgraph webserver["Webserver"]
    httpd["`
    **CMS**
    `"]
   
   templates[/HTML Templates/]
 
    httpd -..->templates
   httpd -..->|SQL|db
     db[("Database\n(Content)")]
   
  end

end

browser1 <-..->|http/HTML| httpd

browser2 <-..->|http/HTML| httpd

browser3 <-..->|http/HTML| httpd
end
```
### SSG: Content Delivery
With a static site generator like hugo, these processes are split up. The Content Delivery

```mermaid
flowchart 

subgraph ssg["Static Site Generator"]
direction TB
subgraph cd["content delivery"]
subgraph Client["Client Side"]
re1((Reader))
re2((Reader))
  browser2
  browser3

end

subgraph Server["Server Side"]
  subgraph webserver["Webserver"]
    httpd["`
    **httpd**
    (nginx, apache)
    `"]
   httpd -..->pages
       pages[/"Complete Website with Content 
    (HTML, CSS, JS)"/]
  end

end

re1 --> browser2["Browser"]
re2 --> browser3["Browser"]
browser2 <-..->|http/HTML| httpd
browser3 <-..->|http/HTML| httpd

end

end
```

### SSG: Content Creation

### SSG: Deployment

```mermaid
flowchart TB


subgraph ssg["Static Site Generator"]
direction LR

subgraph cc["content creation"]
ed1((Editor))

    content[/"Site Content (Markdown)"/]
    structure[/"Site Structure (HTML, CSS, JS)"/]
    hugo["`
    **HUGO**
     ⚙️ `"]
    website[/"Complete Website with Content 
    (HTML, CSS, JS)"/]
    content & structure --> hugo
    hugo --> website
    ed1 --> content
ed1 --> structure
end
website==>|DEPLOYMENT|pages

subgraph cd["content delivery"]
subgraph Client["Client Side"]
re1((Reader))
re2((Reader))
  browser2
  browser3

end

subgraph Server["Server Side"]
  subgraph webserver["Webserver"]
    httpd["`
    **httpd**
    (nginx, apache)
    `"]
   httpd -..->pages
       pages[/"Complete Website with Content 
    (HTML, CSS, JS)"/]
  end

end

re1 --> browser2["Browser"]
re2 --> browser3["Browser"]
browser2 <-..->|http/HTML| httpd
browser3 <-..->|http/HTML| httpd

end





end
```


Own Deployment Diagram for a CMS like Wordpress, see also (WordPress 2024)

### References
(Fowler 2012): Fowler, Martin: Editing Publishing Separation. Blog Article, 24.4.2012, https://martinfowler.com/bliki/EditingPublishingSeparation.html, accessed 10.5.2024

(Parekh and Fowler 2014): Parekh, Sunit and Fowler, Martin: Two Stack CMS. Building a Two-stack CMS for a global product catalog. Slidedesk, 6.10.2014, https://martinfowler.com/articles/two-stack-cms/ , accessed 10.5.2024

(WordPress 2024): Advanced Administration Handbook. Technical Documentation 28.3.2023-21.2.2024, https://developer.wordpress.org/advanced-administration/ , accessed 10.5.2024

### Notes
###### Note 1: Web Sites vs. Web Apps
Fowler (2012) also points out that some web pages - for example those with user generated content - will
be edited by many users, as for instance Wikis. I use the following differentiation: A **Web Site** is a collection of Web Pages (single html files) that constitute a unit of published information, and are typically accessible under a specific (sub)domain. They are published by few people, sometimes only one person. **Web Apps** are Applications build with Web Tools, based on the Web Client-Server Model, but apart from this technological similarity, are closer to software (applications) in general. Thus, I would characterize Wikis, Shop Systems and the like as Web Apps, not Web Sites. As with most categorizations, the
boundaries are not clear cut, but careful differentiations are necessary nonetheless. This website is concerned with the creation of **Web Sites** with the described characteristic of being edited by few and read by many, and content that will be more often read (hopefully) than changed after once being published. 

###### Note 2: 

Martin Fowler (2012) proposes the separation of web page editing and publishing. 
He characterizes content management systems (CMS) as a "worryingly invasive tool",
pointing out that CMS often handle the two processes of editing and publishing in one single system, 
while most web pages have a small group of editors and a larger group of readers, with content that,
once it is published, will only rarely be changed again. (see also [Note 1](#note-1-web-sites-vs-web-apps)).

Parekh and Fowler (2024) use the terms "Content Creation Stack" and "Content Delivery Stack" for the
two systems that should be built to handle these two concerns. While this proposal clearly addresses
issues of large sites with significant traffic, I will use the terms here.

###### Note 3: Lamp Stack
```mermaid
flowchart LR
subgraph thecms["WebApp CMS"]
direction LR


subgraph Client
  browser
end

subgraph Server
direction TB
  subgraph webserver
    httpd["`**httpd**
    (e.g. nginx, apache)`"]
    CMS["CMS: php\n(executed within httpd)"]
    httpd -..->CMS
  end
CMS -..->|SQL|db
CMS -..->templates
db[("Database\n(Content)")]
templates[/HTML Templates/]
end

browser -..->|http| httpd
httpd -..->|HTML| browser

end
```

```mermaid

flowchart TD

subgraph theserver
subgraph webserver
httpd["httpd, like nginx, apache"] -..->CMS
end
CMS -..->db
db[(Database)]
end

subgraph theclient
browser <-..-> httpd
end

subgraph creation
end

subgraph gen ["site generation"]
  direction LR  
    content[/"Site Content (Markdown)"/]
    structure[/"Site Structure (HTML, CSS, JS)"/]
    hugo["`**HUGO**`"]
    website[/"Complete Website (HTML, CSS, JS)"/]
    content & structure --> hugo
    hugo --> website
end

subgraph delivery
  direction LR
  client -..-> server
end


```