---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

{% assign separator = "" %}

## Reports

{% assign lastone = site.reports | last %}
<ul>
{% for project in site.reports %}
<li>{% include listreport.html %}</li>
{% endfor %}
</ul>
## Steering Committee

{% assign lastone = site.people | last %}
<ul>
{% for person in site.people %}
<li>{% include liststeeringcommittee.html %}</li>
{% endfor %}
</ul>

## Working Group

{% assign lastone = site.people | last %}
<ul>
{% for person in site.people %}
<li>{% include listworkinggroup.html %}</li>
{% endfor %}
</ul>

## Action Team

{% assign lastone = site.people | last %}
<ul>
{% for person in site.people %}
<li>{% include listactionteam.html %}</li>
{% endfor %}
</ul>

## Secretariat

{% assign lastone = site.people | last %}
{% for person in site.people %}
{% include listsecretariat.html %}
{% endfor %}


