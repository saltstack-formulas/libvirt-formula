# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as libvirt_settings with context %}

libvirt-server-service-clean-service-dead:
  service.dead:
    - name: {{ libvirt_settings.libvirt_service }}
    - enable: False
