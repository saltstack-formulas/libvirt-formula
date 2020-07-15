# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as libvirt_settings with context %}

libvirt-extra-clean-pkg-removed:
  pkg.removed:
    - pkgs: {{ libvirt_settings.extra_pkgs|json }}
