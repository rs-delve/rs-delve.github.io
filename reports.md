---
title: Reports
layout: default
---

{% assign begintag = "<li>" %}
{% assign endtag = "</li>" %}
{% assign separator = "" %}


{% assign lastone = site.reports | last %}
<ul>
{% for report in site.reports %}
<li>{% include listreport.html %}</li>
{% endfor %}
</ul>
