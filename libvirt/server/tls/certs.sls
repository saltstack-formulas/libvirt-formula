# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_python = tplroot ~ '.python' %}
{%- set sls_server_config = tplroot ~ '.server.config' %}
{%- from tplroot ~ "/map.jinja" import mapdata as libvirt_settings with context %}

{%- set salt_version = salt['grains.get']('saltversioninfo', '') %}

include:
  - {{ sls_python }}
  - {{ sls_server_config }}

libvirt-server-tls-certs-virt-keys:
  virt.keys:
    - name: libvirt_keys
    - require:
      - pkg: libvirt-server-package-install-pkg-installed
      - pip: {{ libvirt_settings.pip_pkg }}
