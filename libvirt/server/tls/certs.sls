# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_python = tplroot ~ '.python' %}
{%- set sls_server_config = tplroot ~ '.server.config' %}
{%- from tplroot ~ "/map.jinja" import libvirt_settings with context %}
{%- from tplroot ~ "/python.jinja" import switch_python32 with context %}

{%- set package = switch_python32(libvirt_settings.python3_pkg, libvirt_settings.python2_pkg) %}
{%- set salt_version = salt['grains.get']('saltversioninfo', '') %}

{#- Some OS do not have the python3 library #}
{%- if package %}
include:
  - {{ sls_python }}
  - {{ sls_server_config }}

libvirt-server-tls-certs-virt-keys:
# API changes with version 2016.3.0
{%- if salt_version[0]|int < 2016 or (salt_version[0]|int == 2016 and salt_version[1]|int <= 3) %}
  libvirt.keys:
{%- else %}
  virt.keys:
{%- endif %}
    - name: libvirt_keys
    - require:
      - pkg: libvirt-server-package-install-pkg-installed
      - pkg: libvirt-python-install-pkg-installed
{%- endif %}
