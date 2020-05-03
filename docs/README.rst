.. _readme:

libvirt
=======

|img_travis| |img_sr|

.. |img_travis| image:: https://travis-ci.com/saltstack-formulas/libvirt-formula.svg?branch=master
   :alt: Travis CI Build Status
   :scale: 100%
   :target: https://travis-ci.com/saltstack-formulas/libvirt-formula
.. |img_sr| image:: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
   :alt: Semantic Release
   :scale: 100%
   :target: https://github.com/semantic-release/semantic-release

Formula to setup and configure ``libvirt``.

.. contents:: **Table of Contents**
   :depth: 1

General notes
-------------

See the full `SaltStack Formulas installation and usage instructions
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

If you are interested in writing or contributing to formulas, please pay attention to the `Writing Formula Section
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#writing-formulas>`_.

If you want to use this formula, please pay attention to the ``FORMULA`` file and/or ``git tag``,
which contains the currently released version. This formula is versioned according to `Semantic Versioning <http://semver.org/>`_.

See `Formula Versioning Section <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#versioning>`_ for more details.

More information `SALT AS A CLOUD CONTROLLER
<https://docs.saltstack.com/en/latest/topics/tutorials/cloud_controller.html>`_.

Contributing to this repo
-------------------------

**Commit message formatting is significant!!**

Please see `How to contribute <https://github.com/saltstack-formulas/.github/blob/master/CONTRIBUTING.rst>`_ for more details.

Available states
----------------

.. contents::
   :local:

``libvirt``
^^^^^^^^^^^

*Meta-state (This is a state that includes other states)*.

Install libvirt, qemu and extra packages; configure and start the
libvirtd service, and creates the certificates for migration.

``libvirt.clean``
^^^^^^^^^^^^^^^^^

*Meta-state (This is a state that includes other states)*.

Clean the extra and qemu packages, the server and the python package.

``libvirt.server``
^^^^^^^^^^^^^^^^^^

*Meta-state (This is a state that includes other states)*.

Install libvirt packages; configure and start the libvirtd service,
and creates the certificates for migration.

``libvirt.server.clean``
^^^^^^^^^^^^^^^^^^^^^^^^

*Meta-state (This is a state that includes other states)*.

Clean the service, the configuration files and the packages. Any
generated certificates is not handled.

``libvirt.server.package``
^^^^^^^^^^^^^^^^^^^^^^^^^^

This state install the libvirt package only.

``libvirt.server.package.clean``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This state remove the libvirt package only and depends on
``libvirt.server.config.clean``.

``libvirt.server.config``
^^^^^^^^^^^^^^^^^^^^^^^^^

Configures libvirtd.conf and /etc/sysconfig, /etc/default, /etc/conf.d daemon
files.

``libvirt.server.config.clean``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Delete libvirtd.conf and /etc/sysconfig, /etc/default, /etc/conf.d daemon
files and depends on ``libvirt.server.service.clean``.

``libvirt.server.service``
^^^^^^^^^^^^^^^^^^^^^^^^^^

Starts the libvirtd service

``libvirt.server.service.clean``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Disable and stop the libvirtd service.

``libvirt.server.tls``
^^^^^^^^^^^^^^^^^^^^^^

Installs the libvirt certificates to allow virtual machine migration.

``libvirt.qemu``
^^^^^^^^^^^^^^^^

This state install the qemu package only.

``libvirt.qemu.clean``
^^^^^^^^^^^^^^^^^^^^^^

This state remove the qemu package only.

``libvirt.extra``
^^^^^^^^^^^^^^^^^

This state install the extra packages only.

``libvirt.extra.clean``
^^^^^^^^^^^^^^^^^^^^^^^

This state remove the extra packages only.

``libvirt.python``
^^^^^^^^^^^^^^^^^^

Installs the python bindings for libvirt

``libvirt.python.clean``
^^^^^^^^^^^^^^^^^^^^^^^^

This state remove the python bindings package for libvirt only.

Testing
-------

Linux testing is done with ``kitchen-salt``.

Requirements
^^^^^^^^^^^^

* Ruby
* Docker

.. code-block:: bash

   $ gem install bundler
   $ bundle install
   $ bin/kitchen test [platform]

Where ``[platform]`` is the platform name defined in ``kitchen.yml``,
e.g. ``debian-9-2019-2-py3``.

``bin/kitchen converge``
^^^^^^^^^^^^^^^^^^^^^^^^

Creates the docker instance and runs the ``libvirt`` main state, ready for testing.

``bin/kitchen verify``
^^^^^^^^^^^^^^^^^^^^^^

Runs the ``inspec`` tests on the actual instance.

``bin/kitchen destroy``
^^^^^^^^^^^^^^^^^^^^^^^

Removes the docker instance.

``bin/kitchen test``
^^^^^^^^^^^^^^^^^^^^

Runs all of the stages above in one go: i.e. ``destroy`` + ``converge`` + ``verify`` + ``destroy``.

``bin/kitchen login``
^^^^^^^^^^^^^^^^^^^^^

Gives you SSH access to the instance for manual testing.

