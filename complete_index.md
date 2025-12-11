---
title: MAT:TSL Indice Completo
layout: default
---

# 📚 Indice Completo della Documentazione
Generato automaticamente tramite Jekyll + Liquid, con struttura ad albero ricorsiva.

---

{% comment %}
---------------------------------------------------------------------------------------
1) RACCOLTA FILE
---------------------------------------------------------------------------------------
Raccogliamo tutti i file markdown di Jekyll (site.pages) e costruiamo
una mappa directory -> file, che poi useremo per generare l’albero ricorsivo.
---------------------------------------------------------------------------------------
{% endcomment %}

{% assign tree = {} %}

{% for page in site.pages %}
    {% assign path = page.path %}
    {% assign parts = path | split: "/" %}
    {% assign filename = parts | last %}

    {% if filename contains ".md" or filename contains ".html" %}
        {% comment %} Directory del file (senza il nome) {% endcomment %}
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



{% comment %}
---------------------------------------------------------------------------------------
2) FUNZIONE RICORSIVA
---------------------------------------------------------------------------------------
Questa funzione stampa directory e sottodirectory infinite finché esistono.
È il cuore del sistema.
---------------------------------------------------------------------------------------
{% endcomment %}

{% macro render_directory dir depth %}

{% assign indent = "" %}
{% for i in (1..depth) %}
    {% assign indent = indent | append: "&nbsp;&nbsp;&nbsp;&nbsp;" %}
{% endfor %}

{% assign all_dirs = tree | keys | sort %}
{% assign child_dirs = "" | split: "" %}

{% for d in all_dirs %}
    {% if d != dir and d != "" %}
        {% if d contains dir %}
            {% assign remainder = d | replace: dir, "" %}
            {% if remainder contains "/" %}
                {% assign parts = remainder | split: "/" %}
                {% if parts[0] != "" and parts.size > 0 %}
                    {% assign child_dirs = child_dirs | push: parts[0] %}
                {% endif %}
            {% endif %}
        {% endif %}
    {% endif %}
{% endfor %}

{% assign child_dirs = child_dirs | uniq | sort %}

{{ indent }}<details open>
<summary><strong>📁 {{ dir }}</strong></summary>

<ul>

{% if tree[dir] %}
    {% assign files = tree[dir] | sort: "path" %}
    {% for file in files %}
        <li>{{ indent }}📄 <a href="{{ file.url }}">{{ file.title }}</a></li>
    {% endfor %}
{% endif %}

{% for cd in child_dirs %}
    {% assign full = dir | append: cd | append: "/" %}
    <li>
        {% call render_directory full depth=depth | plus:1 %}
        {% endcall %}
    </li>
{% endfor %}

</ul>
</details>

{% endmacro %}


{% comment %}
---------------------------------------------------------------------------------------
3) OTTENERE LE DIRECTORY RADICE (top level)
---------------------------------------------------------------------------------------
Le directory che non sono figlie di nessun’altra directory.
---------------------------------------------------------------------------------------
{% endcomment %}

{% assign all_dirs = tree | keys | sort %}
{% assign top = "" | split: "" %}

{% for d in all_dirs %}
    {% assign parent = d | split:"/" | first %}
    {% unless top contains parent %}
        {% assign top = top | push: parent %}
    {% endunless %}
{% endfor %}

---

# 🌳 Struttura della documentazione

{% for t in top %}
    {% if t != "" %}
        {% call render_directory dir=t | append: "/" depth=0 %}
        {% endcall %}
    {% endif %}
{% endfor %}

