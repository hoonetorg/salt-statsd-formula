# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "statsd/map.jinja" import statsd with context %}

statsd_install__pkg:
  pkg.installed:
    - pkgs: {{ statsd.pkgs }}
