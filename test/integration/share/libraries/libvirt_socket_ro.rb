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
  supports platform_name: 'almalinux'
  supports platform_name: 'rocky'

  def initialize
    super
    @file = inspec.file('/var/run/libvirt/libvirt-sock-ro')
    @systemd_status = inspec.systemd_config('libvirtd-ro.socket')
  end

  def config_owner
    if @systemd_status.active?
      @systemd_status.config('SocketUser') || 'root'
    else
      'root'
    end
  end

  def config_group
    if @systemd_status.active?
      @systemd_status.config('SocketGroup') || 'root'
    else
      'root'
    end
  end

  def config_mode
    if @systemd_status.active?
      @systemd_status.config('SocketMode') || '0666'
    else
      '0777'
    end
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

  def respond_to_missing?(name, _include_private)
    name == 'exist?'
  end
end
