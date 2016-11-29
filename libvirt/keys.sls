{%- set salt_version = salt['grains.get']('saltversion', '') %}
include:
  - .config

libvirt.keys:
# API changes with version 2016.3.0
{%- if salt_version[0]|int < 2016 %}
  libvirt.keys:
{%- elif salt_version[1]|int <= 3 %}
  libvirt.keys:
{%- else %}
  virt.keys:
{%- endif %}
    - name: libvirt_keys
    - require:
      - pkg: libvirt.pkg
