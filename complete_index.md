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

# 🌳 Struttura della documentazione (fino a 3 livelli)

{% assign all_dirs = tree | keys | sort %}

{% assign top_dirs = "" | split: "" %}
{% for d in all_dirs %}
  {% assign parent = d | split:"/" | first %}
  {% unless top_dirs contains parent %}
    {% assign top_dirs = top_dirs | push: parent %}
  {% endunless %}
{% endfor %}

{% for dir1 in top_dirs %}
  <details>
    <summary>📁 {{ dir1 }}</summary>
    <ul>
    {% for page in site.pages %}
      {% assign parts = page.path | split:"/" %}
      {% if parts[0] == dir1 %}
        {% if parts.size == 1 %}
          <li>📄 <a href="{{ page.url }}">{{ page.title }}</a></li>
        {% elsif parts.size == 2 %}
          <details>
            <summary>📁 {{ parts[1] }}</summary>
            <ul>
              <li>📄 <a href="{{ page.url }}">{{ page.title }}</a></li>
            </ul>
          </details>
        {% elsif parts.size == 3 %}
          <details>
            <summary>📁 {{ parts[1] }}/{{ parts[2] }}</summary>
            <ul>
              <li>📄 <a href="{{ page.url }}">{{ page.title }}</a></li>
            </ul>
          </details>
        {% endif %}
      {% endif %}
    {% endfor %}
    </ul>
  </details>
{% endfor %}

