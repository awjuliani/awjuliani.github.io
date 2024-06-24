---
layout: page
title: talks
permalink: /talks/
description: A list of recorded talks and presentations.
nav: true
nav_order: 2
videos:
  - title: A dual-receptor model of serotonergic psychedelics
    link: https://www.youtube.com/watch?v=Mzlyc1AYGlo
  - title: Deep CANALs @ Active Inference Insitute 2023
    link: https://www.youtube.com/embed/aFwuucck7a8?si=ft53QF20nm4Zid87
  - title: On the link between conscious function and general intelligence in humans and machines @ Consciousness Club Tokyo 2022
    link: https://www.youtube.com/embed/6jJEbyWiLhc?si=JR3I70-rTOCr8lAE
  - title: The Perceiver Architecture is a Functional Global Workspace @ CogSci 2022
    link: https://www.youtube.com/embed/YOW2fqK3isQ?si=QaoJQ3cKpg3rZO2j
  - title: Varieties of human-like AI @ CCN 2022
    link: https://www.youtube.com/embed/oqO6Xm4wjxo?si=fy9vGj3sJvLzVDQs
  - title: Unity ML-Agents Presentation @ PAPIs.io 2017
    link: https://www.youtube.com/embed/rv224ozz7vo?si=_DOXvSSbzs5Q3may
---

{% for video in page.videos %}
## {{ video.title }}

<div class="video-container">
  <iframe src="{{ video.link }}" title="{{ video.title }}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>

{% endfor %}
