# coding: utf-8
#
# libvirt.rb -- Libvirt InSpec resources
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright © 2019 Pôle de Compétences Logiciels Libres <eole@ac-dijon.fr>
#
class LibvirtResource < Inspec.resource(1)
  name 'libvirt'

  supports platform_name: 'debian'
  supports platform_name: 'centos'

  def daemon_config_dir
    return case inspec.os[:family]
           when 'debian'
             '/etc/default/'
           when 'redhat'
             '/etc/sysconfig'
           else
             raise Inspec::Exceptions::ResourceSkipped,
                   "OS family #{inspec.os[:family]} not supported"
           end
  end

  def daemon_config_file
    return inspec.file(File.join(daemon_config_dir, 'libvirtd'))
  end
end
