# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - statsd.install
  - statsd.config
  - statsd.service

extend:
  statsd_config__conffile:
    file:
      - require:
        - pkg: statsd_install__pkg
  statsd_service__service:
    service:
      - watch:
        - file: statsd_config__conffile
      - require:
        - pkg: statsd_install__pkg

