include:
  - .install

libvirt.keys:
  libvirt.keys:
    - name: libvirt_keys
    - require:
      - pkg: libvirt.install
