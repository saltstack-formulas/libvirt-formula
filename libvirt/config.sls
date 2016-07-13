{% from "libvirt/map.jinja" import libvirt_settings with context %}
{% set os_family = salt['grains.get']('os_family', None) %}

include:
  - .install
  - .service

libvirt.config:
  file.managed:
    - name: {{ libvirt_settings.libvirtd_config }}
    - template: jinja
    - source: salt://{{ slspath }}/templates/libvirtd.conf.jinja

libvirt.daemonconfig:
  file.managed:
    - name: {{ libvirt_settings.daemon_config_path }}/{{ libvirt_settings.libvirt_service }}
    - template: jinja
    - source: salt://{{ slspath }}/templates/{{ os_family }}/daemon_libvirtd.jinja
    - watch_in:
      - service: libvirt.service
