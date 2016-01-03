{% from "libvirt/map.jinja" import map with context %}
include:
  - .install

libvirt.service:
  service.running:
    - name: {{ map.service }}
    - enable: True
    - watch:
      - pkg: libvirt.install
