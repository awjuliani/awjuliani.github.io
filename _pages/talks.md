---
layout: page
title: talks
permalink: /talks/
description: Recorded talks and presentations.
nav: true
nav_order: 2
videos:
  - title: A dual-receptor model of serotonergic psychedelics
    id: Mzlyc1AYGlo
  - title: Deep CANALs @ Active Inference Institute 2023
    id: aFwuucck7a8
  - title: On the link between conscious function and general intelligence in humans and machines @ Consciousness Club Tokyo 2022
    id: 6jJEbyWiLhc
  - title: The Perceiver Architecture is a Functional Global Workspace @ CogSci 2022
    id: YOW2fqK3isQ
  - title: Varieties of human-like AI @ CCN 2022
    id: oqO6Xm4wjxo
  - title: Unity ML-Agents Presentation @ PAPIs.io 2017
    id: rv224ozz7vo
---

<div class="talks-grid">
  {% for video in page.videos %}
  <a href="https://www.youtube.com/watch?v={{ video.id }}" class="talk-card" target="_blank" rel="noopener noreferrer">
    <div class="talk-thumbnail">
      <img src="https://img.youtube.com/vi/{{ video.id }}/hqdefault.jpg"
           alt="{{ video.title }}">
      <div class="talk-play-btn">
        <i class="fas fa-play"></i>
      </div>
    </div>
    <div class="talk-info">
      <h3 class="talk-title">{{ video.title }}</h3>
    </div>
  </a>
  {% endfor %}
</div>
