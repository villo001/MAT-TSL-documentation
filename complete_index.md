---
title: MAT:TSL Indice Completo
layout: default
---

# 📚 Indice Completo della Documentazione
Generato automaticamente tramite Jekyll + Liquid

---

{% comment %}
---------------------------------------------------------------------------------------
1) RACCOLTA FILE
---------------------------------------------------------------------------------------
Raccogliamo tutti i file markdown di Jekyll (site.pages) e costruiamo
una lista organizzata per directory.
---------------------------------------------------------------------------------------
{% endcomment %}

{% assign tree = {} %}

{% for page in site.pages %}
    {% assign path = page.path %}
    {% assign parts = path | split: "/" %}
    {% assign filename = parts | last %}

    {% if filename contains ".md" or filename contains ".html" %}
        {% assign dir_path = "" %}
        {% for part in parts %}
            {% unless forloop.last %}
                {% assign dir_path = dir_path | append: part | append: "/" %}
            {% endunless %}
        {% endfor %}

        {% if tree[dir_path] %}
            {% assign updated = tree[dir_path] | push: page %}
            {% assign tree = tree | merge: dir_path: updated %}
        {% else %}
            {% assign tree = tree | merge: dir_path: page | split: "." %}
        {% endif %}
    {% endif %}
{% endfor %}

---

# 🌳 Struttura della documentazione

{% assign dirs = site.pages | map: "path" | map: "split:'/'" | map: "first" | uniq | sort %}

{% for dir in dirs %}
  {% if dir == "" %}
    <details open>
      <summary>📁 /</summary>
      <ul>
      {% for page in site.pages %}
        {% assign parts = page.path | split:"/" %}
        {% if parts.size == 1 and page.title and page.url != "/" %}
          <li>📄 <a href="{{ page.url }}">{{ page.title }}</a></li>
        {% endif %}
      {% endfor %}
      </ul>
    </details>
  {% else %}
    <details>
      <summary>📁 {{ dir }}</summary>
      <ul>
      {% for page in site.pages %}
        {% assign parts = page.path | split:"/" %}
        {% if parts[0] == dir %}
          <li>📄 <a href="{{ page.url }}">{{ page.title }}</a></li>
        {% endif %}
      {% endfor %}
      </ul>
    </details>
  {% endif %}
{% endfor %}

