{% from "libvirt/map.jinja" import map with context %}

libvirt.install:
  pkg.installed:
    - pkgs: {{ map.pkgs|json }}
