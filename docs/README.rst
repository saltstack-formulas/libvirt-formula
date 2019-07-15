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

Please see :ref:`How to contribute <CONTRIBUTING>` for more details.

Available states
----------------

.. contents::
   :local:

``libvirt``
^^^^^^^^^^^

Install libvirt; start the libvirtd service, and creates the certificates
for migration.

``libvirt.install``
^^^^^^^^^^^^^^^^^^^

Installs the libvirt packages and deps

``libvirt.config``
^^^^^^^^^^^^^^^^^^

Configures libvirtd.conf and /etc/sysconfig, /etc/default, /etc/conf.d daemon
files.

``libvirt.service``
^^^^^^^^^^^^^^^^^^^

Starts the libvirtd service

``libvirt.python``
^^^^^^^^^^^^^^^^^^

Installs the python bindings for libvirt

``libvirt.keys``
^^^^^^^^^^^^^^^^

Installs the libvirt certificates to allow virtual machine migration.

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

Creates the docker instance and runs the ``template`` main state, ready for testing.

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

