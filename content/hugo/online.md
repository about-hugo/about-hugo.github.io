---
title: "Online Editing"
date: 2024-05-12T11:51:59+02:00
draft: false
weight: 70
params:
  image:
---

Using the online editing function of GitHub, Hugo sites become
"real" CMS-Systems.

<!--more-->

GitHub allows you to edit the content repos you have write access to 
via their webpage. (look out for the pen symbol!)

For saving, GitHub generates a new commit directly in the GH repo. 

This can be used for online-editing of the hugo sites. To try this out, 
you need to fork one of the examples - as you will need to edit the repo!
Find the github repo url in the config and set it to your correct repo name.

With a pages build and deploy on each push in place, the site will
automatically updated after such a change.

The [Docsy](/themes/docsy) Theme makes good usage of this, it even allows to 
create new pages! See for example https://about-hugo.github.io/theme-tryout-docsy/blog/

The [Minimal-Site](/examples/minimal-site) example also has edit links for each part of the site structure.
