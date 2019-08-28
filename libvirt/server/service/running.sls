# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_server_config = tplroot ~ '.server.config' %}
{%- from tplroot ~ "/map.jinja" import libvirt_settings with context %}

include:
  - {{ sls_server_config }}

libvirt.service:
  service.running:
    - name: {{ libvirt_settings.libvirt_service }}
    - enable: True
    - watch:
      - pkg: libvirt.pkg
      - file: libvirt.config
