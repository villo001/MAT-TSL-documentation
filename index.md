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

{% comment %}
Raccogliamo tutti i file markdown con front matter
{% endcomment %}
{% assign docs = site.pages | where_exp:"p","p.content contains '---'" | sort:"path" %}

{% assign tree = {} %}

{% for page in docs %}
  {% assign parts = page.path | split:'/' %}
  {% assign folder = parts[0] %}

  {% if parts.size > 1 %}
    {% assign subfolder = parts[1] %}
  {% else %}
    {% assign subfolder = nil %}
  {% endif %}

  {% comment %} Inizializzo la cartella se non esiste {% endcomment %}
  {% if tree[folder] == nil %}
    {% assign tree = tree | merge: folder: {} %}
  {% endif %}

  {% if subfolder %}
    {% if tree[folder][subfolder] %}
      {% assign tree[folder][subfolder] = tree[folder][subfolder] | push: page %}
    {% else %}
      {% assign tree[folder] = tree[folder] | merge: subfolder: page | split:"" %}
    {% endif %}
  {% else %}
    {% if tree[folder]['__files'] %}
      {% assign tree[folder]['__files'] = tree[folder]['__files'] | push: page %}
    {% else %}
      {% assign tree[folder] = tree[folder] | merge: '__files': page | split:"" %}
    {% endif %}
  {% endif %}
{% endfor %}

<ul>
{% for folder in tree %}
  <li>{{ folder[0] }}
    <ul>
      {% for key in folder[1] %}
        {% if key[0] == '__files' %}
          {% for f in key[1] %}
            <li><a href="{{ f.url | relative_url }}">{{ f.title }}</a></li>
          {% endfor %}
        {% else %}
          <li>{{ key[0] }}
            <ul>
              {% for f in key[1] %}
                <li><a href="{{ f.url | relative_url }}">{{ f.title }}</a></li>
              {% endfor %}
            </ul>
          </li>
        {% endif %}
      {% endfor %}
    </ul>
  </li>
{% endfor %}
</ul>
