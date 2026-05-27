---
layout: page
title: Projects
permalink: /projects/
description:
nav: true
nav_order: 2
horizontal: false
---

<!-- pages/projects.md -->
<div class="projects">
  {%- assign sorted_projects = site.projects | sort: "importance" -%}
  {%- assign project_groups = "Research Areas|Principal Investigator / Lead|Collaborative Projects" | split: "|" -%}

  {%- for group in project_groups -%}
    {%- assign group_projects = sorted_projects | where: "project_group", group -%}
    {%- if group_projects.size > 0 -%}
      <section class="project-section">
        <h3 class="project-section-title">{{ group }}</h3>
        <div class="project-list">
          {%- for project in group_projects -%}
            {% include projects.html %}
          {%- endfor -%}
        </div>
      </section>
    {%- endif -%}
  {%- endfor -%}
</div>
