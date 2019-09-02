# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_server_service_clean = tplroot ~ '.server.service.clean' %}
{%- from tplroot ~ "/map.jinja" import libvirt_settings with context %}

include:
  - {{ sls_server_service_clean }}

libvirt-server-config-libvirtd-clean-file-absent:
  file.absent:
    - name: {{ libvirt_settings.libvirtd_config }}
    - require:
      - sls: {{ sls_server_service_clean }}

libvirt-server-config-daemonconfig-clean-file-absent:
  file.absent:
    - name: {{ libvirt_settings.daemon_config_path }}/{{ libvirt_settings.libvirt_service }}
    - require:
      - sls: {{ sls_server_service_clean }}
