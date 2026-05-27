---
layout: page
permalink: /publications/
title: Publications
description:
nav: true
nav_order: 1
---

<div class="publications">

<h2 class="bibliography">Journals</h2>
{% bibliography -f papers -q @*[pubtype=journal]* %}

<h2 class="bibliography">International Conferences</h2>
{% bibliography -f papers -q @*[pubtype=international]* %}

<h2 class="bibliography">National Conferences</h2>
{% bibliography -f papers -q @*[pubtype=national]* %}

<h2 class="bibliography">Preprints</h2>
{% bibliography -f papers -q @*[pubtype=preprint]* %}

<h2 class="bibliography">Press Releases</h2>
{% bibliography -f papers -q @*[pubtype=press]* %}

</div>
