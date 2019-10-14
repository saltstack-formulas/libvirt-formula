# frozen_string_literal: true

# libvirt_socket_ro.rb -- Libvirt read only socket InSpec resources
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

class LibvirtSocketRoResource < Inspec.resource(1)
  name 'libvirt_socket_ro'

  supports platform_name: 'debian'
  supports platform_name: 'ubuntu'
  supports platform_name: 'centos'
  supports platform_name: 'fedora'
  supports platform_name: 'opensuse'

  def initialize
    @file = inspec.file('/var/run/libvirt/libvirt-sock-ro')
  end

  # We could not inherit from Inspec::Resources::FileResource
  # https://github.com/inspec/inspec/issues/4328
  def exist?
    @file.exist?
  end

  # Proxy all method unknown method calls to
  # Inspec::Resources::FileResource
  def method_missing(name)
    if name
      @file.send(name)
    else
      super
    end
  end

  def respond_to_missing?(name, include_private)
    name == 'exist?'
  end

end
