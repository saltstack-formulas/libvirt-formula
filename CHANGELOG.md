# Changelog

# [3.10.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.9.0...v3.10.0) (2023-12-13)


### Bug Fixes

* correct package names for debian 11, drop support for debian 9 ([a9cd134](https://github.com/saltstack-formulas/libvirt-formula/commit/a9cd134c9e43ae2b828206b1d8e069d579862075))
* **config:** ensure daemon dir is created ([4a64329](https://github.com/saltstack-formulas/libvirt-formula/commit/4a64329226c61f7716de36425bd0904f478e677a))
* **libsaltcli+libmatchers:** ensure Salt client API detection [skip ci] ([36db358](https://github.com/saltstack-formulas/libvirt-formula/commit/36db358c48f01b07a4c987e1ef845e1da8d85190))
* **parameters:** correct parameters for Arch ([cc19cd3](https://github.com/saltstack-formulas/libvirt-formula/commit/cc19cd3fa7d84f908532806dfb92144c6f7b5b8a))


### Continuous Integration

* update `pre-commit` configuration inc. for pre-commit.ci [skip ci] ([edd2c3f](https://github.com/saltstack-formulas/libvirt-formula/commit/edd2c3f7f69f30eab9b396992b5c7b0cd6fd765b))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([f61c088](https://github.com/saltstack-formulas/libvirt-formula/commit/f61c0883324de7e35d633718bcd4ce9337671270))
* update linters to latest versions [skip ci] ([e912656](https://github.com/saltstack-formulas/libvirt-formula/commit/e912656e0157aca2f4a32dcd24fad2688cb8c9e3))
* **3003.1:** update inc. AlmaLinux, Rocky & `rst-lint` [skip ci] ([a8f8e24](https://github.com/saltstack-formulas/libvirt-formula/commit/a8f8e2404b771fbc3d7d75caa9610c1d7e804fa4))
* **gemfile:** allow rubygems proxy to be provided as an env var [skip ci] ([d8c8d7a](https://github.com/saltstack-formulas/libvirt-formula/commit/d8c8d7a14ba9f07b53b95ae469f72940eda38eed))
* **gemfile+lock:** use `ssf` customised `inspec` repo [skip ci] ([72cc84b](https://github.com/saltstack-formulas/libvirt-formula/commit/72cc84b2eea1c807a4841602a3e4ea9a5a3241d0))
* **gemfile+lock:** use `ssf` customised `kitchen-docker` repo [skip ci] ([f5f6ba0](https://github.com/saltstack-formulas/libvirt-formula/commit/f5f6ba0389d264c03452260bd0327d3e4d75cf45))
* **kitchen:** move `provisioner` block & update `run_command` [skip ci] ([0db92c0](https://github.com/saltstack-formulas/libvirt-formula/commit/0db92c0d9b194c6a0aac7075a7095455760b67d6))
* **kitchen:** remove Fedora legacy `crypto-policies` workaround [skip ci] ([cf93fb1](https://github.com/saltstack-formulas/libvirt-formula/commit/cf93fb14c0d864fd81b9a82635c210a2e2e66477))
* **kitchen+ci:** update with `3004` pre-salted images/boxes [skip ci] ([9aab7f4](https://github.com/saltstack-formulas/libvirt-formula/commit/9aab7f4ae0dccadf0f7ed0cc36fd08add1c521e5))
* **kitchen+ci:** update with latest `3003.2` pre-salted images [skip ci] ([de4ce37](https://github.com/saltstack-formulas/libvirt-formula/commit/de4ce376f49ff7a62f4c08c30bdad821a14bb1d1))
* **kitchen+ci:** update with latest CVE pre-salted images [skip ci] ([096f752](https://github.com/saltstack-formulas/libvirt-formula/commit/096f752b0eae3ac9b6534bf2d9e0950f35645d28))
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] ([6e6c0d9](https://github.com/saltstack-formulas/libvirt-formula/commit/6e6c0d933de90028dc2bd3eabcefa1775aabd7da))
* **kitchen+gitlab:** adjust matrix to add `3003` [skip ci] ([ec00e3e](https://github.com/saltstack-formulas/libvirt-formula/commit/ec00e3eb34bc263566ce92bcd647ed45050e14af))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([a079cdc](https://github.com/saltstack-formulas/libvirt-formula/commit/a079cdc2a0f03d68e1732656378e5a2ac6cfb0ed))
* add Debian 11 Bullseye & update `yamllint` configuration [skip ci] ([5c8976c](https://github.com/saltstack-formulas/libvirt-formula/commit/5c8976cb758d33321efd5edbcc29de15392b2002))
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] ([37c667a](https://github.com/saltstack-formulas/libvirt-formula/commit/37c667aa71143bafbdb0c7b6a80707ba4fdfd211))
* add `arch-master` to matrix and update `.travis.yml` [skip ci] ([2322349](https://github.com/saltstack-formulas/libvirt-formula/commit/232234979f888992b73516458def557466a8175d))
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] ([af8ebe1](https://github.com/saltstack-formulas/libvirt-formula/commit/af8ebe119ae0ea44453b5f4069df505b03ae2ca8))
* **pre-commit:** update hook for `rubocop` [skip ci] ([7624e07](https://github.com/saltstack-formulas/libvirt-formula/commit/7624e07e12a109d092043c5e6f77f089df4b4a9c))


### Documentation

* **changelog:** use quoting to avoid `rst` violations [skip ci] ([a3df474](https://github.com/saltstack-formulas/libvirt-formula/commit/a3df474339fa993abc62185d719dd22f063ddf9c))


### Features

* **alma+rocky:** add platforms (based on CentOS 8) [skip ci] ([d14c080](https://github.com/saltstack-formulas/libvirt-formula/commit/d14c08055d38c17a0f62753d6b0b0289da4e95c6))
* **ubuntu-22.04:** use updated `qemu` package name [skip ci] ([9a4abe6](https://github.com/saltstack-formulas/libvirt-formula/commit/9a4abe66829c5b9391e3b68ebbe94333fd2faba7))


### Styles

* **libsaltcli:** fix comments to jinja comments [skip ci] ([deb2513](https://github.com/saltstack-formulas/libvirt-formula/commit/deb2513b3f7d1e8e1db6db91b5db18159d0c2317))


### Tests

* **system:** add `build_platform_codename` [skip ci] ([88db281](https://github.com/saltstack-formulas/libvirt-formula/commit/88db281821b21a6f6b1f510b5c8af395b3bfe37c))
* **system.rb:** add support for `mac_os_x` [skip ci] ([94ee554](https://github.com/saltstack-formulas/libvirt-formula/commit/94ee554f6ded9c58ee122d40cc251a68e75c0e6b))
* standardise use of `share` suite & `_mapdata` state [skip ci] ([c1ab958](https://github.com/saltstack-formulas/libvirt-formula/commit/c1ab958c2edfac346de7a095d674a61ac1831a47))

# [3.9.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.8.3...v3.9.0) (2021-01-31)


### Features

* **python:** define python3 package for OpenSuse Tumbleweed ([b6cc44c](https://github.com/saltstack-formulas/libvirt-formula/commit/b6cc44cf6622cad392d92fcf21609c61d15b1081))


### Tests

* **inspec:** tumbleweed OpenSUSE use “python38-libvirt-python” ([94b245f](https://github.com/saltstack-formulas/libvirt-formula/commit/94b245f4ca925f67c1aa534ebc2917a054213833))

## [3.8.3](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.8.2...v3.8.3) (2021-01-30)


### Code Refactoring

* **inspec:** prefer shared system library to “inspec.os” ([9adfeb2](https://github.com/saltstack-formulas/libvirt-formula/commit/9adfeb2883411b58e8505e7fcb5b671d73e7c1ae))

## [3.8.2](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.8.1...v3.8.2) (2021-01-29)


### Bug Fixes

* **inspec:** `initialize` requires a call to parent class ([d00e845](https://github.com/saltstack-formulas/libvirt-formula/commit/d00e8459ec72d137f505a97a8b264884363d1c5a))
* **inspec:** don't check line count of LibvirtPackagesResource ([d6fe66d](https://github.com/saltstack-formulas/libvirt-formula/commit/d6fe66d91f786690094f61748c77de72ab80b44b))


### Continuous Integration

* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([1e93759](https://github.com/saltstack-formulas/libvirt-formula/commit/1e937595cf8d7b336d2fabe303dd3c71d1a2ca54))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([5b6e511](https://github.com/saltstack-formulas/libvirt-formula/commit/5b6e51124e6ac28f2138db20a35ef0484c6041d7))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([9a0210e](https://github.com/saltstack-formulas/libvirt-formula/commit/9a0210edc9d2eda70c7fe0e119c5e1ccb291e340))
* **kitchen+gitlab:** update for new pre-salted images ([7622020](https://github.com/saltstack-formulas/libvirt-formula/commit/762202019f44913809436eb577304341a0744c91))
* **pre-commit:** add to formula [skip ci] ([c0dd2e6](https://github.com/saltstack-formulas/libvirt-formula/commit/c0dd2e6273f93c3c0c84853693d5c461e5c322bd))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([42dd701](https://github.com/saltstack-formulas/libvirt-formula/commit/42dd701cc4ad275a1966b7cbb7a8f71045c9f7bb))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([6d9ea29](https://github.com/saltstack-formulas/libvirt-formula/commit/6d9ea296f374d49fa599ca0f6d41248418939518))

## [3.8.1](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.8.0...v3.8.1) (2020-07-24)


### Bug Fixes

* **map:** `path_join` can't be used on windows ([c2b3465](https://github.com/saltstack-formulas/libvirt-formula/commit/c2b34655a9339ff1b453a47ab1ed7e43f91ece39))

# [3.8.0](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.7.6...v3.8.0) (2020-07-15)


### Features

* **map:** the “map.jinja” file is now generic ([d2d35ac](https://github.com/saltstack-formulas/libvirt-formula/commit/d2d35acddbbc9c9653587464462e213da71b3437))

## [3.7.6](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.7.5...v3.7.6) (2020-07-10)


### Bug Fixes

* **libtofs:** remove trailing coma on macro parameters list ([36589e4](https://github.com/saltstack-formulas/libvirt-formula/commit/36589e466d48ba28eb96627a88d0c5a53c7f6351))


### Continuous Integration

* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([086ea4c](https://github.com/saltstack-formulas/libvirt-formula/commit/086ea4c404280cbb0124253f775e786ae95b2d66))
* **kitchen+travis:** add new platforms [skip ci] ([f2ccc51](https://github.com/saltstack-formulas/libvirt-formula/commit/f2ccc5136a543003719831f38574b9d43ab95da3))
* **kitchen+travis:** adjust matrix to add `3000.3` [skip ci] ([95562e3](https://github.com/saltstack-formulas/libvirt-formula/commit/95562e3258c03a61a0ef77704d2b93ab1fc5b4b0))
* **travis:** add notifications => zulip [skip ci] ([88b4bee](https://github.com/saltstack-formulas/libvirt-formula/commit/88b4beef40438d875d12ef69d69c4833908e6887))
* **workflows/commitlint:** add to repo [skip ci] ([7a19e61](https://github.com/saltstack-formulas/libvirt-formula/commit/7a19e61bcced035520b14ef5c9a7445f9d026048))


### Styles

* **libtofs:** it's prettier with the Jinja open mark not indented ([7411517](https://github.com/saltstack-formulas/libvirt-formula/commit/741151734dbc77fdff9fc20cab3c5fdbeac7e28c))
* **libtofs:** use Black-inspired Jinja formatting ([5f27ff8](https://github.com/saltstack-formulas/libvirt-formula/commit/5f27ff87a057acc8bad579ee89947e1604db5a6f)), closes [/github.com/saltstack-formulas/libvirt-formula/pull/77#issuecomment-637838178](https://github.com//github.com/saltstack-formulas/libvirt-formula/pull/77/issues/issuecomment-637838178)
* **map:** use Black-inspired Jinja formatting ([d05e403](https://github.com/saltstack-formulas/libvirt-formula/commit/d05e4039091b7e021c29cc201296ac57f5f10515)), closes [/github.com/saltstack-formulas/libvirt-formula/pull/77#issuecomment-652476823](https://github.com//github.com/saltstack-formulas/libvirt-formula/pull/77/issues/issuecomment-652476823)
* **map.jinja:** it's prettier with the Jinja open mark not indented ([c81943b](https://github.com/saltstack-formulas/libvirt-formula/commit/c81943bb0c5c4f419923c360954acfb94c653194))

## [3.7.5](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.7.4...v3.7.5) (2020-05-03)


### Continuous Integration

* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([5bf3cd7](https://github.com/saltstack-formulas/libvirt-formula/commit/5bf3cd76a315d0a8c22d34d29e2c1afae0c78c59))
* **kitchen+travis:** adjust matrix to add `3000.2` & remove `2018.3` ([8fb7839](https://github.com/saltstack-formulas/libvirt-formula/commit/8fb7839c16f6fdda0302ea5b00d19d9e1d4f638e))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([c70f16c](https://github.com/saltstack-formulas/libvirt-formula/commit/c70f16cd13d3613e3e58b903b23db5fc3199e20f))


### Documentation

* **readme:** fix `template` to `libvirt` under `bin/kitchen converge` [skip ci] ([cfde6d9](https://github.com/saltstack-formulas/libvirt-formula/commit/cfde6d91ce79b158bcb701afcddaaa14188a0827))

## [3.7.4](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.7.3...v3.7.4) (2020-04-19)


### Bug Fixes

* **libsaltcli:** update `salt-ssh` detection for `enable_ssh_minions` ([7bfe4b4](https://github.com/saltstack-formulas/libvirt-formula/commit/7bfe4b46df44082580bcc3cb676e9a33f6d99f4d))

## [3.7.3](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.7.2...v3.7.3) (2020-03-27)


### Code Refactoring

* **libsaltcli:** use the `opts` dict throughout ([94e1bde](https://github.com/saltstack-formulas/libvirt-formula/commit/94e1bde4038373efd1c3bb5db1bb5717b1a8d067))

## [3.7.2](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.7.1...v3.7.2) (2020-03-26)


### Code Refactoring

* **libsaltcli:** use `ssh` matching improvement (`__master_opts__`) ([c800fd1](https://github.com/saltstack-formulas/libvirt-formula/commit/c800fd117f2f5c1dc97cfc1566f4d6270d16801c)), closes [/github.com/saltstack-formulas/libvirt-formula/pull/71#issuecomment-604427395](https://github.com//github.com/saltstack-formulas/libvirt-formula/pull/71/issues/issuecomment-604427395)

## [3.7.1](https://github.com/saltstack-formulas/libvirt-formula/compare/v3.7.0...v3.7.1) (2020-03-25)


### Code Refactoring

* **libsaltcli:** use `libsaltcli` library to improve readability ([ad923ee](https://github.com/saltstack-formulas/libvirt-formula/commit/ad923eefebec10a64f9943e230dda28cc3241c7d))

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
* **rubocop:** do not prefix reader method names with `get_` ([](https://github.com/saltstack-formulas/libvirt-formula/commit/e7ced7b))
* **rubocop:** extra empty line detected at block body end ([](https://github.com/saltstack-formulas/libvirt-formula/commit/f4dcb5a))
* **rubocop:** extra empty line detected at class body end ([](https://github.com/saltstack-formulas/libvirt-formula/commit/fc0af73))
* **rubocop:** favor modifier if usage when having a single-line body ([](https://github.com/saltstack-formulas/libvirt-formula/commit/e3a9716))
* **rubocop:** missing magic comment “frozen_string_literal: true” ([](https://github.com/saltstack-formulas/libvirt-formula/commit/a07dbfb))
* **rubocop:** prefer single-quoted strings and split too long line ([](https://github.com/saltstack-formulas/libvirt-formula/commit/7944e24))
* **rubocop:** remove `is_` prefix from predicate name ([](https://github.com/saltstack-formulas/libvirt-formula/commit/c3d20bb))
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
