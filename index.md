---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

{% assign begintag = "<li>" %}
{% assign endtag = "</li>" %}
{% assign separator = "" %}

## Reports

{% assign lastone = site.reports | last %}
<ul>
{% for report in site.reports %}
<li>{% include listreport.html %}</li>
{% endfor %}
</ul>
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


