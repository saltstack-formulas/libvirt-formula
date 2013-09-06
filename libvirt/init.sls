{% from "libvirt/map.jinja" import map with context %}

libvirt:
  pkg:
    - installed
    - pkgs: {{ map.pkgs|json }}
  service:
    - running
    - name: {{ map.service }}
    - enable: True
    - watch:
      - pkg: libvirt
