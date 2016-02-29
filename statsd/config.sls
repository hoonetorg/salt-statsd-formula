# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "statsd/map.jinja" import statsd with context %}

statsd_config__conffile:
  file.managed:
    - name: {{ statsd.conffile }}
    - source: salt://statsd/files/config.js.jinja
    - statsd: jinja
    - context:
      confdict: {{statsd|json}}
    - mode: 644
    - user: root
    - group: root
