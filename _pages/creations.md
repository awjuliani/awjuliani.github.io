---
layout: page
permalink: /creations/
title: creations
description: Open source projects and websites I've built or contributed to.
nav: true
nav_order: 3
---

<div class="row creations-grid">
  {% for creation in site.data.creations.creations %}
    {% include creation_card.html creation=creation %}
  {% endfor %}
</div>
