.. _map.jinja:

``map.jinja``: gather formula configuration values
==================================================

The `documentation`_ gives a quick view of the use of a ``map.jinja`` to gather parameters values for a formula.

Current best practice is to let ``map.jinja`` handle parameters from all sources, to minimise the use of pillars, grains or configuration from ``sls`` files and templates directly.

The ``map.jinja`` file uses several sources where to lookup parameter values:

- Multiple YAML files organised in the `fileserver`_ under the formula ``parameters/`` directory
- Configuration collected by `salt['config.get']`_

As `pillars`_ are rendered on the Salt master for every minion, this increases the load on the master as the pillar values and the number of minions grows.

As a good practice, you should:

- store non-secret data in YAML files distributed by the `fileserver`_
- store secret data in:

  - `pillars`_ (and look for the use of something like `pillar.vault`_)
  - `SDB`_ (and look for the use of something like `sdb.vault`_)


.. contents:: **Table of Contents**

For formula users
-----------------

Quick start: configure per DNS domain name values
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We will see a quick setup to configure the ``TEMPLATE`` formula for different DNS domain name.

For this example, I'll define 2 kinds of `fileserver`_ sources:

1. formulas git repositories with hard-coded version reference to avoid breaking my setup randomly at upstream update. they are the last sources where files are looked up
2. parameters of the formulas in the file backend `roots`_


Configure the fileserver backends
`````````````````````````````````

I configure the `fileserver`_ backends to serve:

1. files from `roots`_ first
2. `gitfs`_ repositories last

Create the file ``/etc/salt/master.d/fileserver.conf`` and restart the ``master``:

.. code-block:: yaml

    ##
    ## file server
    ##
    fileserver_backend:
      # parameters values and override
      - roots
      # formulas
      - gitfs

    # List of formulas I'm using
    gitfs_remotes:
      - https://github.com/saltstack-formulas/template-formula.git:
        - base: v4.1.1
      - https://github.com/saltstack-formulas/openssh-formula.git:
        - base: v2.0.1


Create configuration for ``TEMPLATE`` formula
`````````````````````````````````````````````

Now, we can provides the per DNS domain name configuration files for the ``TEMPLATE`` formulas under ``/srv/salt/TEMPLATE/parameters/``.

We create the directory for ``dns:domain`` grain and we add a symlink for the ``domain`` grain which is extracted from the minion ``id``:

.. code-block::

    mkdir -p /srv/salt/TEMPLATE/parameters/dns:domain/
    ln -s dns:domain /srv/salt/TEMPLATE/parameters/domain

We create a configuration for the DNS domain ``example.net`` in ``/srv/salt/TEMPLATE/parameters/dns:domain/example.net.yaml``:

.. code-block:: yaml

    values:
      config: /etc/template-formula-example-net.conf

We create another configuration for the DNS domain ``example.com`` in ``/srv/salt/TEMPLATE/parameters/dns:domain/example.com.yaml``:

.. code-block:: yaml

    values:
      config: /etc/template-formula-{{ grains['os_family'] }}.conf


Enable the ``dns:domain`` and ``domain`` grains for ``map.jinja``
`````````````````````````````````````````````````````````````````

We need to redefine the sources for ``map.jinja`` to load values from our new configuration files, we provide a global pillar for all our minions.

First, we create the ``/srv/pillar/map_jinja.sls``:

.. code-block:: yaml

    map_jinja:
      sources:
        # default values
        - "osarch"
        - "os_family"
        - "os"
        - "osfinger"
        - "config_get_lookup"
        - "config_get"
    
        # DNS domain configured (DHCP or resolv.conf)
        - "dns:domain"
    
        # Based on minion ID
        - "domain"

        # default values
        - "id"

Then associate this pillar with all minions in ``/srv/pillar/top.sls``:

.. code-block:: yaml

    base:
      '*':
        - map_jinja


Format of configuration YAML files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When you write a new YAML file, note that it must conform to the following layout:

- a mandatory ``values`` key to store the configuration values
- two optional keys to configure the use of `salt.slsutil.merge`_

  - an optional ``strategy`` key to configure the merging strategy, for example ``strategy: 'recurse'``, the default is ``smart``
  - an optional ``merge_lists`` key to configure if lists should be merged or overridden for the ``recurse`` and ``overwrite`` strategy, for example ``merge_lists: 'true'``

Here is a valid example:

.. code-block:: yaml

    ---
    strategy: 'recurse'
    merge_lists: 'false'
    values:
      pkg:
        name: 'some-package'
      config: '/path/to/a/configuration/file'
    ...

You can use `Jinja`_ as with any SLS files:

.. code-block:: yaml

    ---
    strategy: 'overwrite'
    merge_lists: 'true'
    values:
      output_dir: /tmp/{{ grains['id'] }}
    ...


Sources of configuration values
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


Configuring ``map.jinja`` sources
`````````````````````````````````

At import time, ``map.jinja`` will configure itself the sources from where to import configuration values:

#. builtin default

   #. ``osarch``: grain of the CPU architecture of the minion
   #. ``os_family``: grain of the family of the operating system (e.g. ``Debian`` for an ``Ubuntu``)
   #. ``os``: grain of the name of the operating system (e.g. ``Ubuntu``)
   #. ``osfinger``: grain the concatenation of the operating system name and it's version string (e.g. ``Debian-10``)
   #. ``config_get_lookup`` formula `lookup` table retrived by `salt['config.get']`_
   #. ``config_get``: formula global configuration retrived by `salt['config.get']`_
   #. ``id``: grain of the ``ID`` of the minion

#. ``defaults.yaml``: optionally define a formula specific ``map_jinja:sources`` for the author of the formula
#. global configuration lookup ``map_jinja:sources``
#. formula specific ``<tplroot>:map_jinja:sources``

To configure ``map.jinja``, we need to set ``map_jinja:sources`` either globally or per formula.


Loading values from the configuration sources
`````````````````````````````````````````````

For each configuration source defined in ``map_jinja:sources``, ``map.jinja`` will 

#. load the values from:

   - ``salt['config.get'](tplroot ~ ':lookup')`` if the key is ``config_get_lookup``
   - ``salt['config.get'](tplroot)`` if the key is ``config_get``
   - ``parameters/<config>/<config value>.yaml`` for the configuration named ``<config>`` with value ``<config value>``
   - ``parameters/<key>.yaml`` if the configuration lookup fails, the key name is used as a literal string path of a custom path to a YAML file, for example: ``any/path/can/be/used/here.yaml`` will result in the loading of ``parameters/any/path/can/be/used/here.yaml``

#. merge the loaded values with the previous ones using `salt.slsutil.merge`_

There will be no error if a YAML file does not exists, they are all optional (except ``defaults.yaml``).


Configuration values from ``salt['config.get']``
````````````````````````````````````````````````

If at least one of ``config_get_lookup`` or ``config_get`` source is declared in ``map_jinja:sources``, then the corresponding configuration is looked up with `salt['config.get']`_ and merged with the previously aggregated values.

You can configure the ``merge`` option of `salt['config.get']`_ by defining per formula ``strategy`` configuration key with one of the following values:

- ``recurse`` merge recursively dictionaries. Non dictionary values replace already defined values
- ``overwrite`` new value completely replace old ones

By default, no merging is done, the first value found is returned.


Global view of the order of preferences
```````````````````````````````````````

To make resumé, here is a complete example of the load order of formula configuration values for an ``AMD64`` ``Ubuntu 18.04`` minion named ``minion1.example.net`` for the ``mysql`` formula:

#. ``parameters/defaults.yaml``
#. ``parameters/osarch/amd64.yaml``
#. ``parameters/os_family/Debian.yaml``
#. ``parameters/os/Ubunta.yaml``
#. ``parameters/osfinger/Ubunta-18.04.yaml``
#. ``salt['config.get']('mysql:lookup')``
#. ``salt['config.get']('mysql')``
#. ``parameters/id/minion1.example.net``

Remember that the order is important, for example, the value of ``key1:subkey1`` loaded from ``parameters/os_family/Debian.yaml`` is overridden by a value loaded from ``parameters/id/minion1.example.net``.

For formula authors and contributors
------------------------------------

Use formula configuration values in ``sls``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The ``map.jinja`` is located at the root of the formula named directory (e.g. ``mysql-formula/mysql/map.jinja``) and export a unique ``mapdata`` variable which could be renamed during import.

Here is the best way to use it in an ``sls`` file:

.. code-block:: sls

    {#- Get the `tplroot` from `tpldir` #}
    {%- set tplroot = tpldir.split("/")[0] %}
    {%- from tplroot ~ "/map.jinja" import mapdata as TEMPLATE with context %}

    test-does-nothing-but-display-TEMPLATE-as-json:
      test.nop:
        - name: {{ TEMPLATE | json }}



Use formula configuration values in templates
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When you need to process salt templates, you should avoid calling ``salt['config.get']`` (or ``salt['pillar.get']`` and ``salt['grains.get']``) directly from the template. All the needed values should be available within the variable exported by ``map.jinja``.

Here is an example based on ``template-formula/TEMPLATE/config/file.sls``

.. code-block:: sls

    # -*- coding: utf-8 -*-
    # vim: ft=sls

    {#- Get the `tplroot` from `tpldir` #}
    {%- set tplroot = tpldir.split('/')[0] %}
    {%- set sls_package_install = tplroot ~ '.package.install' %}
    {%- from tplroot ~ "/map.jinja" import mapdata TEMPLATE with context %}
    {%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}

    include:
      - {{ sls_package_install }}

    TEMPLATE-config-file-file-managed:
      file.managed:
        - name: {{ TEMPLATE.config }}
        - source: {{ files_switch(['example.tmpl'],
                                  lookup='TEMPLATE-config-file-file-managed'
                     )
                  }}
        - mode: 644
        - user: root
        - group: {{ TEMPLATE.rootgroup }}
        - makedirs: True
        - template: jinja
        - require:
          - sls: {{ sls_package_install }}
        - context:
            TEMPLATE: {{ TEMPLATE | json }}

This ``sls`` file expose a ``TEMPLATE`` context variable to the jinja template which could be used like this:

.. code-block:: jinja

    ########################################################################
    # File managed by Salt at <{{ source }}>.
    # Your changes will be overwritten.
    ########################################################################

    This is another example file from SaltStack template-formula.

    # This is here for testing purposes
    {{ TEMPLATE | json }}

    winner of the merge: {{ TEMPLATE['winner'] }}


.. _documentation: https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#writing-formulas
.. _fileserver: https://docs.saltstack.com/en/latest/ref/file_server
.. _salt['config.get']: https://docs.saltstack.com/en/latest/ref/modules/all/salt.modules.config.html#salt.modules.config.get
.. _pillar.vault: https://docs.saltstack.com/en/latest/ref/pillar/all/salt.pillar.vault.html
.. _pillars: https://docs.saltstack.com/en/latest/topics/pillar/
.. _SDB: https://docs.saltstack.com/en/latest/topics/sdb/index.html
.. _sdb.vault: https://docs.saltstack.com/en/latest/ref/sdb/all/salt.sdb.vault.html
.. _roots: https://docs.saltstack.com/en/latest/ref/file_server/all/salt.fileserver.roots.html
.. _gitfs: https://docs.saltstack.com/en/latest/topics/tutorials/gitfs.html
.. _salt.slsutil.merge: https://docs.saltstack.com/en/latest/ref/modules/all/salt.modules.slsutil.html
.. _Jinja: https://docs.saltstack.com/en/latest/topics/jinja
