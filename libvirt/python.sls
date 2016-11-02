{% from "libvirt/map.jinja" import libvirt_settings with context %}

libvirt-python:
  pkg.installed:
    - name: {{ libvirt_settings.python_pkg }}
