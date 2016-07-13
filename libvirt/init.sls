{% from "libvirt/map.jinja" import libvirt_settings with context %}
include:
  - .install
  - .config
  - .service
  - .keys
