include:
  - .install

libvirt.keys:
# API changes with version 2016.3.0
{% if salt['grains.get']('saltversion', '') < '2016.3.0' %}
  libvirt.keys:
{% else %}
  virt.keys:
{% endif %}
    - name: libvirt_keys
    - require:
      - pkg: libvirt.install
