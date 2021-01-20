# frozen_string_literal: true

# libvirt.rb -- Libvirt InSpec resources
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

class LibvirtResource < Inspec.resource(1)
  name 'libvirt'

  supports platform_name: 'debian'
  supports platform_name: 'ubuntu'
  supports platform_name: 'centos'
  supports platform_name: 'fedora'
  supports platform_name: 'opensuse'

  attr_reader :packages

  def initialize
    super
    @packages = inspec.libvirt_packages.packages
  end

  def daemon_config_dir
    case inspec.os[:family]
    when 'debian'
      '/etc/default/'
    when 'redhat', 'fedora', 'suse'
      '/etc/sysconfig'
    else
      raise Inspec::Exceptions::ResourceSkipped,
            "OS family #{inspec.os[:family]} not supported"
    end
  end

  def daemon_config_file
    inspec.file(File.join(daemon_config_dir, service_name))
  end

  def service_name
    case inspec.os[:name]
    when 'ubuntu'
      service_name_ubuntu

    else
      'libvirtd'
    end
  end

  def service_name_ubuntu
    case inspec.os[:release]
    when /^16/
      'libvirt-bin'

    else
      'libvirtd'
    end
  end
end
