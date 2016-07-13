{% from "libvirt/map.jinja" import libvirt_settings with context %}

libvirt.pkg:
  pkg.installed:
    - name: {{ libvirt_settings.libvirt_pkg }}

qemu:
  pkg.installed:
    - pkg: {{ libvirt_settings.qemu_pkg }}

extra_pkgs:
  pkg.installed:
    - pkgs: {{ libvirt_settings.extra_pkgs|json }}
