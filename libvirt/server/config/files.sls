# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_server_package = tplroot ~ '.server.package' %}
{%- set sls_server_service = tplroot ~ '.server.service' %}
{%- from tplroot ~ "/map.jinja" import libvirt_settings with context %}

{% set os_family = salt['grains.get']('os_family', None) %}

include:
  - {{ sls_server_package }}
  - {{ sls_server_service }}

libvirt-server-config-files-libvirtd-file-managed:
  file.managed:
    - name: {{ libvirt_settings.libvirtd_config }}
    - template: jinja
    - source: salt://{{ slspath }}/templates/libvirtd.conf.jinja
    - require:
      - pkg: libvirt-server-package-install-pkg-installed
    - watch_in:
      - service: libvirt-server-service-running-service-running

libvirt-server-config-files-daemonconfig-file-managed:
  file.managed:
    - name: {{ libvirt_settings.daemon_config_path }}/{{ libvirt_settings.libvirt_service }}
    - template: jinja
    - source: salt://{{ slspath }}/templates/{{ os_family }}/daemon_libvirtd.jinja
    - require:
      - pkg: libvirt-server-package-install-pkg-installed
    - watch_in:
      - service: libvirt-server-service-running-service-running
