{% from "libvirt/map.jinja" import libvirt_settings with context %}
include:
  - .config

libvirt.service:
  service.running:
    - name: {{ libvirt_settings.libvirt_service }}
    - enable: True
    - watch:
      - pkg: libvirt.pkg
      - file: libvirt.config
