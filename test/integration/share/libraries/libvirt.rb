# frozen_string_literal: true
#
# libvirt.rb -- Libvirt InSpec resources
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright © 2019 Pôle de Compétences Logiciels Libres <eole@ac-dijon.fr>
#
class LibvirtResource < Inspec.resource(1)
  name 'libvirt'

  supports platform_name: 'debian'
  supports platform_name: 'ubuntu'
  supports platform_name: 'centos'
  supports platform_name: 'fedora'
  supports platform_name: 'opensuse'

  attr_reader :packages

  def initialize
    @packages = get_packages
  end

  def daemon_config_dir
    case inspec.os[:family]
    when 'debian'
      '/etc/default/'
    when 'redhat', 'fedora', 'suse'
      '/etc/sysconfig'
    else
      raise Inspec::Exceptions::ResourceSkipped, "OS family #{inspec.os[:family]} not supported"
    end
  end

  def daemon_config_file
    inspec.file(File.join(daemon_config_dir, 'libvirtd'))
  end


  def get_packages
    # defaults.yaml
    packages = {
      'libvirt' => ['libvirt'],
      'qemu'    => ['qemu-kvm'],
      'extra'   => ['libguestfs'],
      'python'  => ['libvirt-python'],
    }

    if inspec.salt_minion.is_python3?
      packages['python'] = ['libvirt-python3']
    end

    # osfamily.yaml / osmap.yaml
    case inspec.os[:family]
    when 'debian'
      packages['libvirt'] = ['libvirt-daemon-system']
      packages['extra']   = ['libguestfs0', 'libguestfs-tools', 'gnutls-bin', 'virt-top']
      packages['python']  = ['python-libvirt']

      if inspec.salt_minion.is_python3?
        packages['python'] = ['python3-libvirt']
      end
    when 'fedora'
      packages['python']  = ['python2-libvirt']

      if inspec.salt_minion.is_python3?
        packages['python'] = ['python3-libvirt']
      end
    when 'suse'
      packages['libvirt'] = ['libvirt-daemon-qemu']
      packages['extra']   = ['libguestfs0']

      if inspec.salt_minion.is_python3?
        packages['python'] = ['python3-libvirt-python']
      else
        packages['python'] = ['python2-libvirt-python']
      end
    end

    packages
  end
end
