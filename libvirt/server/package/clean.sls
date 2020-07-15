# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_config_clean = tplroot ~ '.server.config.clean' %}
{%- from tplroot ~ "/map.jinja" import mapdata as libvirt_settings with context %}

include:
  - {{ sls_config_clean }}

libvirt-server-package-clean-pkg-removed:
  pkg.removed:
    - name: {{ libvirt_settings.libvirt_pkg }}
    - require:
      - sls: {{ sls_config_clean }}
