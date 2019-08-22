# Changelog

## [2.3.1](https://github.com/saltstack-formulas/libvirt-formula/compare/v2.3.0...v2.3.1) (2019-08-22)


### Bug Fixes

* **packages:** centos does not have Python3 libvirt library ([b8b761c](https://github.com/saltstack-formulas/libvirt-formula/commit/b8b761c))

# [2.3.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v2.2.0...v2.3.0) (2019-08-21)


### Bug Fixes

* **config:** suse family does not have it's own configuration file ([a41f784](https://github.com/saltstack-formulas/libvirt-formula/commit/a41f784))


### Continuous Integration

* **travis:** enable “default-opensuse-leap-15-2019-2-py3” platform ([3c2f4fa](https://github.com/saltstack-formulas/libvirt-formula/commit/3c2f4fa))


### Features

* **suse:** add OS family packages and daemon configuration path ([72e6aea](https://github.com/saltstack-formulas/libvirt-formula/commit/72e6aea))


### Tests

* **inspec:** add openSUSE to supported platforms ([309e65a](https://github.com/saltstack-formulas/libvirt-formula/commit/309e65a))

# [2.2.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v2.1.0...v2.2.0) (2019-08-10)


### Features

* **yamllint:** include for this repo and apply rules throughout ([8030695](https://github.com/saltstack-formulas/libvirt-formula/commit/8030695))

# [2.1.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v2.0.1...v2.1.0) (2019-07-30)


### Continuous Integration

* **travis:** enable default-fedora-27-2017-7-py2 ([ef1f3de](https://github.com/saltstack-formulas/libvirt-formula/commit/ef1f3de))


### Features

* **packages:** set dedicated python package names for Fedora ([b02ff7b](https://github.com/saltstack-formulas/libvirt-formula/commit/b02ff7b))


### Tests

* **inspec:** support Fedora ([604a803](https://github.com/saltstack-formulas/libvirt-formula/commit/604a803))

## [2.0.1](https://github.com/saltstack-formulas/libvirt-formula/compare/v2.0.0...v2.0.1) (2019-07-30)


### Styles

* **ruby:** improve Ruby coding style ([845556f](https://github.com/saltstack-formulas/libvirt-formula/commit/845556f))

# [2.0.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v1.0.0...v2.0.0) (2019-07-29)


### Bug Fixes

* **packages:** python2 libvirt library is unusable by Python3 minion ([e16bfad](https://github.com/saltstack-formulas/libvirt-formula/commit/e16bfad))


### Continuous Integration

* **travis:** enable default-ubuntu-1804-2019-2-py3 ([6679340](https://github.com/saltstack-formulas/libvirt-formula/commit/6679340))


### Tests

* **inspec:** enable Ubuntu platform ([5ae997e](https://github.com/saltstack-formulas/libvirt-formula/commit/5ae997e))
* **inspec:** python package name depends on Salt environnment ([5322aee](https://github.com/saltstack-formulas/libvirt-formula/commit/5322aee))


### BREAKING CHANGES

* **packages:** the Python2 package is now “python2_pkg”.

* libvirt/python.sls: use “switch_python32” macro to select the python
  package and do nothing if it's not available.

* libvirt/keys.sls: ditoo.

* libvirt/python.jinja: new macro “switch_python32” to select one of
  the two arguments based on the environment of the SaltStack minion.

* libvirt/defaults.yaml: distinguish python2 and python3 packages.

* libvirt/osfamilymap.yaml (Debian): distinguish python2 and python3
  packages.

# [1.0.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v0.7.0...v1.0.0) (2019-07-21)


### Features

* **map.jinja:** update to template standards ([b822a87](https://github.com/saltstack-formulas/libvirt-formula/commit/b822a87))


### BREAKING CHANGES

* **map.jinja:** use “osfinger” instead of “oscodename” to override
configuration per distribution version.

* libvirt/map.jinja: update to “template-formula” standard.

* libvirt/osfamilymap.yaml: fix the name for the “os_family” settings.

* libvirt/osmap.yaml: empty per OS name settings for now.

* libvirt/osfingermap.yaml: replace “oscodename” overrides.
  Set some settings for older Debian and Ubuntu releases.

# [0.7.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v0.6.0...v0.7.0) (2019-07-15)


### Documentation

* **readme:** update headings and add for `inspec` as well ([df62ff2](https://github.com/saltstack-formulas/libvirt-formula/commit/df62ff2))


### Features

* **semantic-release:** implement an automated changelog ([7c81125](https://github.com/saltstack-formulas/libvirt-formula/commit/7c81125))


### Tests

* **kitchen+inspec:** comply with template-formula standards ([41ec6ce](https://github.com/saltstack-formulas/libvirt-formula/commit/41ec6ce))
