# Changelog

# [3.7.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.6.0...v3.7.0) (2020-03-24)


### Bug Fixes

* **libtofs:** “files_switch” mess up the variable exported by “map.jinja” [skip ci] ([fd277ec](https://github.com/saltstack-formulas/libvirt-formula/commit/fd277ec6546655f0c0082fb773b6f62f77e4adf4))


### Continuous Integration

* workaround issues with newly introduced `amazonlinux-1` [skip ci] ([9299b03](https://github.com/saltstack-formulas/libvirt-formula/commit/9299b035a511edea637b508f7c83b79a83ecfaf1))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([58709f6](https://github.com/saltstack-formulas/libvirt-formula/commit/58709f6a9b01fc0ba53a8aa84128a63db2a1cb95))
* **travis:** update matrix after recent platform fixes ([a6dd1d3](https://github.com/saltstack-formulas/libvirt-formula/commit/a6dd1d31e2bc1f4b4fc3fd28d6d293a2bedae62b)), closes [#64](https://github.com/saltstack-formulas/libvirt-formula/issues/64) [#66](https://github.com/saltstack-formulas/libvirt-formula/issues/66) [#67](https://github.com/saltstack-formulas/libvirt-formula/issues/67) [#68](https://github.com/saltstack-formulas/libvirt-formula/issues/68)


### Features

* **map.jinja:** `defaults.yaml` must be under `parameters/` ([3ca19bc](https://github.com/saltstack-formulas/libvirt-formula/commit/3ca19bc63b9a631690515df46e07ca4bc7d92807))
* **map.jinja:** load a configurable list of YAML files ([ce1782c](https://github.com/saltstack-formulas/libvirt-formula/commit/ce1782cab01e271993fb45df3e98928ae58e7b35))
* **map.jinja:** split `osfamilymap.yaml` under `parameters/os_family/` ([e82d184](https://github.com/saltstack-formulas/libvirt-formula/commit/e82d184a77d03725c5afcf0d5f73ba95a87875df))
* **map.jinja:** split `osfingermap.yaml` under `parameters/osfinger/` ([365f711](https://github.com/saltstack-formulas/libvirt-formula/commit/365f71176a231d992426b79705d6c0ee5ede8c68))
* **map.jinja:** split `osmap.yaml` under `parameters/os/` ([4255397](https://github.com/saltstack-formulas/libvirt-formula/commit/4255397e40466ef4782911989ab671bed160fcfa))

# [3.6.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.5.0...v3.6.0) (2020-01-07)


### Features

* **debian:** remove support for very old versions ([7a9dc90](https://github.com/saltstack-formulas/libvirt-formula/commit/7a9dc909742bd7cd6c9b0621777892d341e27333))
* **inspec:** older Ubuntu use “libvirt-bin” as package name ([d1f57fd](https://github.com/saltstack-formulas/libvirt-formula/commit/d1f57fd07f9890354108bcab72ceb72fcee802e6))
* **inspec:** older Ubuntu use “libvirt-bin” as service name ([c2885e3](https://github.com/saltstack-formulas/libvirt-formula/commit/c2885e3ac789d869984d8f2825dd57e238624ca9))
* **inspec:** skip admin socket on unsupported platforms ([4fb5725](https://github.com/saltstack-formulas/libvirt-formula/commit/4fb572574d849a245a11d5480c53ef3a9a06f0be))
* **ubuntu:** remove support for very old versions ([d37597e](https://github.com/saltstack-formulas/libvirt-formula/commit/d37597ef2d2b602e4ad8a39622bb7e076e60cd12))

# [3.5.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.4.0...v3.5.0) (2020-01-07)


### Features

* **centos:** centos 8 is full python3 ([54c82bb](https://github.com/saltstack-formulas/libvirt-formula/commit/54c82bb66f9c9556767d501d7ac425e8e516ba6d))


### Tests

* **inspec:** libvirt resource library is too big ([91c0a44](https://github.com/saltstack-formulas/libvirt-formula/commit/91c0a44fa0b9df5bacd722fd416764bae5bd5076))
* **inspec:** support different packages between CentOS 8 and 7 ([ec3b938](https://github.com/saltstack-formulas/libvirt-formula/commit/ec3b9385d7903544f95847ee0d8aa0248b57fbce))

# [3.4.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.3.0...v3.4.0) (2020-01-06)


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([161d389](https://github.com/saltstack-formulas/libvirt-formula/commit/161d389476cd36b0158c7cc3628ec43786dc0757))
* **travis:** apply changes from build config validation [skip ci] ([ad5156d](https://github.com/saltstack-formulas/libvirt-formula/commit/ad5156d8ee001dc904ca750cde0c60d585e2a94e))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([0935dbe](https://github.com/saltstack-formulas/libvirt-formula/commit/0935dbe90524de39d31a371a25b96c86ba22e747))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([8c8ff8e](https://github.com/saltstack-formulas/libvirt-formula/commit/8c8ff8ee28be27d81eb76e3247f3de8c69ef4d46))
* **travis:** run `shellcheck` during lint job [skip ci] ([b02ff9d](https://github.com/saltstack-formulas/libvirt-formula/commit/b02ff9dd06c8b81afd40b0e15d58c672b6c6d7b5))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([946fa1f](https://github.com/saltstack-formulas/libvirt-formula/commit/946fa1fab41647ed92404da7bbca1e21df4b41b3))
* **travis:** use build config validation (beta) [skip ci] ([1190505](https://github.com/saltstack-formulas/libvirt-formula/commit/1190505b8859789a431d7e09e50ef0dbedd2b6f1))


### Features

* **systemd:** check sockets created by systemd ([60a4177](https://github.com/saltstack-formulas/libvirt-formula/commit/60a417722d4eb0ac94588c0d22d8feeea671f86a))

# [3.3.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.2.2...v3.3.0) (2019-11-04)


### Bug Fixes

* **release.config.js:** use full commit hash in commit link [skip ci] ([c179349](https://github.com/saltstack-formulas/libvirt-formula/commit/c17934967c410cf7114dc48ade88968286edb6db))


### Continuous Integration

* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([d9e6736](https://github.com/saltstack-formulas/libvirt-formula/commit/d9e673659c3e79f219c2c6042494c9a1ae2f85f6))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([1450f7a](https://github.com/saltstack-formulas/libvirt-formula/commit/1450f7a2f6270722ec2d264dd646033bb8994c60))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([6828e08](https://github.com/saltstack-formulas/libvirt-formula/commit/6828e087750c031a190ffc946eda843b5af86ba5))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([4b3c687](https://github.com/saltstack-formulas/libvirt-formula/commit/4b3c687495dccf14d4aecaf8301a48503d20cc0c))


### Features

* **config:** update libvirtd.conf jinja template to version 5.8.0 ([0c30455](https://github.com/saltstack-formulas/libvirt-formula/commit/0c304553d4df4d5c85f83982cbec153326d8b43c))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([061b269](https://github.com/saltstack-formulas/libvirt-formula/commit/061b2695313cc6f03e9851e13abc1f084a254fb2))

## [3.2.2](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.2.1...v3.2.2) (2019-10-14)


### Bug Fixes

* **rubocop:** resolve `Lint/AmbiguousRegexpLiteral` ([](https://github.com/saltstack-formulas/libvirt-formula/commit/e13085d))

## [3.2.1](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.2.0...v3.2.1) (2019-10-14)


### Bug Fixes

* **rubocop:** add an empty line after magic comments ([](https://github.com/saltstack-formulas/libvirt-formula/commit/ca963fe))
* **rubocop:** add empty line after guard clause ([](https://github.com/saltstack-formulas/libvirt-formula/commit/1978566))
* **rubocop:** avoid comma after the last item of a hash ([](https://github.com/saltstack-formulas/libvirt-formula/commit/a8c5d31))
* **rubocop:** do not prefix reader method names with get_ ([](https://github.com/saltstack-formulas/libvirt-formula/commit/e7ced7b))
* **rubocop:** extra empty line detected at block body end ([](https://github.com/saltstack-formulas/libvirt-formula/commit/f4dcb5a))
* **rubocop:** extra empty line detected at class body end ([](https://github.com/saltstack-formulas/libvirt-formula/commit/fc0af73))
* **rubocop:** favor modifier if usage when having a single-line body ([](https://github.com/saltstack-formulas/libvirt-formula/commit/e3a9716))
* **rubocop:** missing magic comment “frozen_string_literal: true” ([](https://github.com/saltstack-formulas/libvirt-formula/commit/a07dbfb))
* **rubocop:** prefer single-quoted strings and split too long line ([](https://github.com/saltstack-formulas/libvirt-formula/commit/7944e24))
* **rubocop:** remove “is_” prefix from predicate name ([](https://github.com/saltstack-formulas/libvirt-formula/commit/c3d20bb))
* **rubocop:** simplify complex methods ([](https://github.com/saltstack-formulas/libvirt-formula/commit/2f6bb0e))
* **rubocop:** the name of source file should use snake_case ([](https://github.com/saltstack-formulas/libvirt-formula/commit/fde048a))
* **rubocop:** unnecessary utf-8 encoding comment ([](https://github.com/saltstack-formulas/libvirt-formula/commit/d605400))
* **rubocop:** unused block argument ([](https://github.com/saltstack-formulas/libvirt-formula/commit/7a0054c))
* **rubocop:** unused method argument ([](https://github.com/saltstack-formulas/libvirt-formula/commit/da0853a))
* **rubocop:** use “.zero?” instead of “== 0” ([](https://github.com/saltstack-formulas/libvirt-formula/commit/9108afb))
* **rubocop:** use // around regular expression ([](https://github.com/saltstack-formulas/libvirt-formula/commit/36f7d3d))
* **rubocop:** use only ascii symbols in comments ([](https://github.com/saltstack-formulas/libvirt-formula/commit/3edb35c))
* **rubocop:** use the return of the conditional for variable assignment ([](https://github.com/saltstack-formulas/libvirt-formula/commit/f57d9fb))
* **rubocop:** when using method_missing, define respond_to_missing? ([](https://github.com/saltstack-formulas/libvirt-formula/commit/b0227e2))
* **rubocop:** when using method_missing, fall back on super ([](https://github.com/saltstack-formulas/libvirt-formula/commit/db3d181))


### Continuous Integration

* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/libvirt-formula/commit/18cef25))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/libvirt-formula/commit/2b3acd6))
* **travis:** enforce rubocop ([](https://github.com/saltstack-formulas/libvirt-formula/commit/c7c5e57))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([](https://github.com/saltstack-formulas/libvirt-formula/commit/a22c209))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([](https://github.com/saltstack-formulas/libvirt-formula/commit/09d9a0c))

# [3.2.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.1.1...v3.2.0) (2019-10-03)


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([198fe0b](https://github.com/saltstack-formulas/libvirt-formula/commit/198fe0b))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([adb9004](https://github.com/saltstack-formulas/libvirt-formula/commit/adb9004))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([8bc62c7](https://github.com/saltstack-formulas/libvirt-formula/commit/8bc62c7))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([4ba9be5](https://github.com/saltstack-formulas/libvirt-formula/commit/4ba9be5))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([3e522e8](https://github.com/saltstack-formulas/libvirt-formula/commit/3e522e8))


### Features

* **tofs:** use TOFS to distribute configuration templates to minion ([8cd04f9](https://github.com/saltstack-formulas/libvirt-formula/commit/8cd04f9))

## [3.1.1](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.1.0...v3.1.1) (2019-09-09)


### Bug Fixes

* **config:** libvirtd configuration changes must restart the service ([4d6f38e](https://github.com/saltstack-formulas/libvirt-formula/commit/4d6f38e))


### Code Refactoring

* **config:** explicit package requisite ([8afec46](https://github.com/saltstack-formulas/libvirt-formula/commit/8afec46))


### Continuous Integration

* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([400d686](https://github.com/saltstack-formulas/libvirt-formula/commit/400d686))

# [3.1.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.0.1...v3.1.0) (2019-09-04)


### Continuous Integration

* **kitchen+travis:** check the clean states on develop salt ([0e735c0](https://github.com/saltstack-formulas/libvirt-formula/commit/0e735c0))


### Documentation

* **readme:** explain the new “clean” states ([cceb4d3](https://github.com/saltstack-formulas/libvirt-formula/commit/cceb4d3))


### Features

* **clean:** add cleaning states ([dd53de0](https://github.com/saltstack-formulas/libvirt-formula/commit/dd53de0))


### Tests

* **clean:** check for clean states ([0978ab0](https://github.com/saltstack-formulas/libvirt-formula/commit/0978ab0))
* **inspec:** share libraries between profiles ([6f816e0](https://github.com/saltstack-formulas/libvirt-formula/commit/6f816e0))

## [3.0.1](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.0.0...v3.0.1) (2019-09-02)


### Documentation

* **readme:** update for the new layout ([b9fabd3](https://github.com/saltstack-formulas/libvirt-formula/commit/b9fabd3))

# [3.0.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v2.3.1...v3.0.0) (2019-09-02)


### Code Refactoring

* **states:** ids must conform to “template-formula” standard ([8adfe9e](https://github.com/saltstack-formulas/libvirt-formula/commit/8adfe9e))


### Continuous Integration

* **kitchen+travis:** replace EOL pre-salted images ([262c063](https://github.com/saltstack-formulas/libvirt-formula/commit/262c063))


### Features

* **cert:** key and certificate generation is a server sub component ([616b585](https://github.com/saltstack-formulas/libvirt-formula/commit/616b585))
* **config:** the configuration is a server sub component ([6dc318d](https://github.com/saltstack-formulas/libvirt-formula/commit/6dc318d))
* **layout:** initialize the new top level layout ([886198b](https://github.com/saltstack-formulas/libvirt-formula/commit/886198b))
* **packages:** dispatch package installation per component ([f9e587d](https://github.com/saltstack-formulas/libvirt-formula/commit/f9e587d))
* **packages:** the python library is a dedicated component ([d07a3ec](https://github.com/saltstack-formulas/libvirt-formula/commit/d07a3ec))
* **service:** service is a subcomponent of “libvirt.server” ([c51d2d2](https://github.com/saltstack-formulas/libvirt-formula/commit/c51d2d2))


### BREAKING CHANGES

* **states:** “libvirt.pkg” become “libvirt-server-package-install-pkg-installed”
* **layout:** the layout is completly modified for single state.apply
* **states:** “libvirt.daemonconfig” become “libvirt-server-config-files-daemonconfig-file-managed”
* **states:** “libvirt.service” become “libvirt-server-service-running-service-running”
* **states:** “libvirt.keys” become “libvirt-server-tls-certs-virt-keys”
* **states:** “libvirt-python” become “libvirt-python-install-pkg-install”
* **states:** “qemu” become “libvirt-qemu-install-pkg-installed”
* **states:** “libvirt.config” become “libvirt-server-config-files-libvirtd-file-managed”
* **cert:** the key is now libvirt.server.tls.certs
* **service:** the service is now libvirt.server.service.running
* **config:** the configuration is now libvirt.server.config.files
* **packages:** libvirt package is installed by libvirt.server.package.install
* **packages:** qemu package is installed by libvirt.qemu.install
* **packages:** extra packages are installed by libvirt.extra.install
* **states:** “extra_pkgs” become “libvirt-extra-install-pkg-installed”

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
