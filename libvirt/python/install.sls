# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import libvirt_settings with context %}
{%- from tplroot ~ "/python.jinja" import switch_python32 with context %}

{%- set package = switch_python32(libvirt_settings.python3_pkg, libvirt_settings.python2_pkg) %}

{#- Some OS do not have the python3 library #}
{%- if package %}
libvirt-python:
  pkg.installed:
    - name: {{ package }}
{%- endif %}
