{% from "libvirt/map.jinja" import map with context %}

libvirt:
  pkg.installed:
    - pkgs: {{ map.pkgs|json }}
  libvirt.keys:
    - require:
      - pkg: libvirt
  service.running:
    - name: {{ map.service }}
    - enable: True
    - watch:
      - pkg: libvirt
