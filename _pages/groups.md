---
layout: page
permalink: /groups/
title: groups
description: Online reading groups I've co-organized and conducted with friends around the world since 2020. Covering a wide range of topics from philosophy to literature to poetry.

nav: true
nav_order: 5
---

<div class="groups-grid">
  {% for group in site.data.groups.groups %}
    {% include group_card.html group=group %}
  {% endfor %}
</div>
