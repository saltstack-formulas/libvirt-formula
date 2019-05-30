{%- set salt_version = salt['grains.get']('saltversioninfo', '') %}
include:
  - .python
  - .config

libvirt.keys:
# API changes with version 2016.3.0
{%- if salt_version[0]|int < 2016 or (salt_version[0]|int == 2016 and salt_version[1]|int <= 3) %}
  libvirt.keys:
{%- else %}
  virt.keys:
{%- endif %}
    - name: libvirt_keys
    - require:
      - pkg: libvirt.pkg
      - pkg: libvirt-python
