---
layout: default
---

{% assign begintag = "<li>" %}
{% assign endtag = "</li>" %}
{% assign separator = "" %}


## Steering Committee

{% assign lastone = site.people | last %}
<ul>
{% for person in site.people %}
{% include liststeeringcommittee.html %}
{% endfor %}
</ul>

## Working Group

{% assign lastone = site.people | last %}
<ul>
{% for person in site.people %}
{% include listworkinggroup.html %}
{% endfor %}
</ul>

## Action Team

{% assign lastone = site.people | last %}
<ul>
{% for person in site.people %}
{% include listactionteam.html %}
{% endfor %}
</ul>

## Secretariat

{% assign lastone = site.people | last %}
<ul>
{% for person in site.people %}
{% include listsecretariat.html %}
{% endfor %}
</ul>

