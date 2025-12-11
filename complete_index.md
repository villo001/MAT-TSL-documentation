---
title: Indice Completo
layout: default
---

# Indice completo ad albero della documentazione

Generato automaticamente tramite Jekyll + Liquid.

---

{% comment %}
1) Raccogli tutti i .md processati da Jekyll e ordina per path
2) Costruisci la lista unica delle directory (stringhe tipo "","docs/","docs/api/")
3) Per ogni directory stampo una sezione <details> con i file che appartengono a quella directory
{% endcomment %}

{% assign docs = site.pages | where_exp:"p","p.path contains '.md'" | sort: "path" %}

{%- comment -%} Costruisco la lista dei percorsi directory unici {%- endcomment -%}
{% assign dirs = "" | split: "" %}

{% for page in docs %}
  {% assign parts = page.path | split:"/" %}
  {% assign filename = parts | last %}

  {% comment %} costruiamo il percorso della directory (senza il filename) {% endcomment %}
  {% assign dir = "" %}
  {% for part in parts %}
    {% unless forloop.last %}
      {% assign dir = dir | append: part | append: "/" %}
    {% endunless %}
  {% endfor %}

  {% unless dirs contains dir %}
    {% assign dirs = dirs | push: dir %}
  {% endunless %}
{% endfor %}

{% assign dirs = dirs | sort %}

{%- comment -%} Ora stampo ogni directory con i suoi file {% endcomment -%}

{% for dir in dirs %}
  <details{% if forloop.first %} open{% endif %}>
    <summary>📁 {{ dir | replace: "/", "" | default: "/" }}</summary>
    <ul>
      {% for page in docs %}
        {% assign parts2 = page.path | split:"/" %}
        {% assign filename2 = parts2 | last %}

        {% assign dir2 = "" %}
        {% for part2 in parts2 %}
          {% unless forloop.last %}
            {% assign dir2 = dir2 | append: part2 | append: "/" %}
          {% endunless %}
        {% endfor %}

        {% if dir2 == dir %}
          {% unless page.url == "/" %}
            <li>📄 <a href="{{ page.url | relative_url }}">{{ page.title | default: page.path }}</a>
              <small style="opacity:0.6">({{ page.path }})</small>
            </li>
          {% endunless %}
        {% endif %}
      {% endfor %}
    </ul>
  </details>
{% endfor %}

