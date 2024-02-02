# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as libvirt_settings with context %}

libvirt-python-install-pkg-installed:
  pip.installed:
    - name: {{ libvirt_settings.pip_pkg }}
    - require:
      - pkg: libvirt-extra-install-pkg-installed

