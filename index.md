---
title: Indice
layout: default
---

# Un gioco di ruolo post apocalittico ambientato in Italia

## La guerra sinoamericana del 2077

Tutti sappiamo cos'è successo nel 2077: l'apocalisse, con testate atomiche che cadevano un po' dappertutto alla fine della guerra sinoamericana.

## E in Europa? E in Italia?

Già, sappiamo del nord America, ma si conosce poco dell'Europa.

Cosa è successo?

E cosa è successo in Italia?

In genere sappiamo solo che l'Europa era già nel caos più completo dopo la _Guerra delle Risorse_ e che durante la _Notte Luminosa del 2077_ sono cadute solo poche testate nucleari visto che gli obiettivi militari erano ormai pochi. In Italia solo tre, a Milano, a Roma e a Napoli.

Ma Milano, Roma e Napoli non sono l'Italia, nel resto del belpaese cosa è successo?

Proprio per rispondere a questo nasce __Mediterranean Atomic Tales - The Sunkend Land__, un progetto nel quale puoi esplorare tutto quello che concerne l'Italia dalla _Guerra delle Risorse_ in poi.

# Indice dei documenti

{% assign docs = site.pages | where_exp:"p","p.path contains '.md'" | sort:"path" %}

{% comment %}
Creiamo un albero cartella -> sottocartella -> file
{% endcomment %}
{% assign tree = {} %}

{% for page in docs %}
  {% assign parts = page.path | split:'/' %}
  {% assign folder = parts[0] %}
  {% assign subfolder = parts.size > 2 ? parts[1] : nil %}

  {% if tree[folder] %}
    {% if subfolder %}
      {% assign sub = tree[folder][subfolder] %}
      {% if sub %}
        {% assign updated = sub | push: page %}
        {% assign tree[folder][subfolder] = updated %}
      {% else %}
        {% assign tree[folder] = tree[folder] | merge: subfolder: page | split: "" %}
      {% endif %}
    {% else %}
      {% assign files = tree[folder]['__files'] %}
      {% if files %}
        {% assign files = files | push: page %}
      {% else %}
        {% assign tree[folder] = tree[folder] | merge: '__files': page | split: "" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign tree = tree | merge: folder: {} %}
    {% if subfolder %}
      {% assign tree[folder] = tree[folder] | merge: subfolder: page | split:"" %}
    {% else %}
      {% assign tree[folder] = tree[folder] | merge: '__files': page | split:"" %}
    {% endif %}
  {% endif %}
{% endfor %}

{% comment %}
Funzione ricorsiva per stampare l'albero
{% endcomment %}
{% macro render_tree node %}
<ul>
{% for key in node %}
  {% if key[0] == '__files' %}
    {% for f in key[1] %}
      <li><a href="{{ f.url | relative_url }}">{{ f.title }}</a></li>
    {% endfor %}
  {% else %}
    <li>{{ key[0] }}
      {% assign child = key[1] %}
      {% if child %}
        {% call render_tree child %}
        {% endcall %}
      {% endif %}
    </li>
  {% endif %}
{% endfor %}
</ul>
{% endmacro %}

{% call render_tree tree %}
{% endcall %}
