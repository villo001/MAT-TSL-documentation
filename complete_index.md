---
title: Indice Completo
layout: default
---

# 🌳 Indice Completo della Documentazione (Struttura ad Albero)

Questo indice è generato automaticamente tramite Jekyll + Liquid.

---

{% comment %}
1) Filtra solo file Markdown con front matter
2) Estrae il loro "directory path"
3) Costruisce un albero logico
{% endcomment %}

{% assign docs = site.pages | where_exp:"p","p.path contains '.md'" | sort: "path" %}

{% comment %}
Costruzione dell'albero:  
Esempio:  
"lore/history/timeline.md" → ["lore", "history", "timeline.md"]
{% endcomment %}

{% assign tree = {} %}

{% for page in docs %}
  {% assign parts = page.path | split:"/" %}
  {% assign current = tree %}

  {% for part in parts %}
    {% if forloop.last %}
      {% comment %} Foglia: il file {% endcomment %}
      {% if current[part] == nil %}
        {% assign current = current | merge: part: page %}
      {% endif %}
    {% else %}
      {% comment %} Nodo directory {% endcomment %}
      {% if current[part] == nil %}
        {% assign current = current | merge: part: {} %}
      {% endif %}
      {% assign current = current[part] %}
    {% endif %}
  {% endfor %}
{% endfor %}

---

{% comment %}
Funzione ricorsiva per stampare l’albero delle directory
{% endcomment %}

{% macro render_tree node depth %}
  <ul style="margin-left: {{ depth | times: 20 }}px;">
  {% for key in node %}
    {% assign val = node[key] %}
    {% if val.path %}
      <li>📄 <a href="{{ val.url | relative_url }}">{{ val.title | default: key }}</a></li>
    {% else %}
      <li>📁 <strong>{{ key }}</strong>
        {{ render_tree(val, depth | plus: 1) }}
      </li>
    {% endif %}
  {% endfor %}
  </ul>
{% endmacro %}

---

# 📁 Struttura dei file

{{ render_tree(tree, 0) }}

