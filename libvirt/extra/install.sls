# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import libvirt_settings with context %}

extra_pkgs:
  pkg.installed:
    - pkgs: {{ libvirt_settings.extra_pkgs|json }}
