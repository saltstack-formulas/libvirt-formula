# frozen_string_literal: true
#
# libvirt_socket_admin.rb -- Libvirt admin socket InSpec resources
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>
#
class LibvirtSocketAdminResource < Inspec.resource(1)
  name 'libvirt_socket_admin'

  supports platform_name: 'debian'
  supports platform_name: 'ubuntu'
  supports platform_name: 'centos'
  supports platform_name: 'fedora'
  supports platform_name: 'opensuse'

  def initialize
    @file = inspec.file('/var/run/libvirt/libvirt-admin-sock')
  end

  def exist?
    @file.exist?
  end

  def method_missing(name)
    @file.send(name)
  end

end
