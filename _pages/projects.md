---
layout: page
permalink: /projects/
title: projects
description: Open source projects and websites I've built or contributed to.
nav: true
nav_order: 3
---

<div class="row creations-grid">
  {% for project in site.data.projects.projects %}
    {% include creation_card.html creation=project %}
  {% endfor %}
</div>
