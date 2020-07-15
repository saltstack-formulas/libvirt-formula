# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as libvirt_settings with context %}

libvirt-qemu-install-pkg-installed:
  pkg.installed:
    - name: {{ libvirt_settings.qemu_pkg }}
