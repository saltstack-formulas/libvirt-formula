{%- from "libvirt/map.jinja" import libvirt_settings with context %}
{%- from "libvirt/python.jinja" import switch_python32 with context %}

{%- set package = switch_python32(libvirt_settings.python3_pkg, libvirt_settings.python2_pkg) %}

{#- Some OS do not have the python3 library #}
{%- if package %}
libvirt-python:
  pkg.installed:
    - name: {{ package }}
{%- endif %}
