=======
libvirt
=======

Install and configure libvirt and start the service.  
More information `SALT AS A CLOUD CONTROLLER
<https://docs.saltstack.com/en/latest/topics/tutorials/cloud_controller.html>`_.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``libvirt``
-------------

Install libvirt; start the libvirtd service, and creates the certificates
for migration.

``libvirt.install``
------------------

Installs the libvirt packages and deps

``libvirt.config``
------------------

Configures libvirtd.conf and /etc/sysconfig, /etc/default, /etc/conf.d daemon
files.

``libvirt.service``
------------------

Starts the libvirtd service

``libvirt.python``
------------------

Installs the python bindings for libvirt

``libvirt.keys``
----------------

Installs the libvirt certificates to allow virtual machine migration.
