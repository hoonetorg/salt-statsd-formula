# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "statsd/map.jinja" import statsd with context %}

statsd_service__service:
  service.{{ statsd.service.state }}:
    - name: {{ statsd.service.name }}
{% if statsd.service.state in [ 'running', 'dead' ] %}
    - enable: {{ statsd.service.enable }}
{% endif %}

