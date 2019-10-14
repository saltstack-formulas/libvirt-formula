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
    @packages = build_packages
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
    inspec.file(File.join(daemon_config_dir, 'libvirtd'))
  end

  def build_packages
    # defaults.yaml
    packages = build_default_packages

    packages.merge!(build_overwrite_packages)
  end

  def build_overwrite_packages
    # osfamily.yaml / osmap.yaml
    case inspec.os[:family]
    when 'debian'
      build_debian_packages

    when 'fedora'
      build_fedora_packages

    when 'suse'
      build_suse_packages

    else
      {}
    end
  end

  def build_default_packages
    {
      'libvirt' => ['libvirt'],
      'qemu' => ['qemu-kvm'],
      'extra' => ['libguestfs'],
      'python' => if inspec.salt_minion.python3?
                    ['libvirt-python3']
                  else
                    ['libvirt-python']
                  end
    }
  end

  def build_debian_packages
    {
      'libvirt' => ['libvirt-daemon-system'],
      'extra' => %w[libguestfs0 libguestfs-tools gnutls-bin virt-top],
      'python' => if inspec.salt_minion.python3?
                    ['python3-libvirt']
                  else
                    ['python-libvirt']
                  end
    }
  end

  def build_fedora_packages
    {
      'python' => if inspec.salt_minion.python3?
                    ['python3-libvirt']
                  else
                    ['python2-libvirt']
                  end
    }
  end

  def build_suse_packages
    {
      'libvirt' => ['libvirt-daemon-qemu'],
      'extra' => ['libguestfs0'],
      'python' => if inspec.salt_minion.python3?
                    ['python3-libvirt-python']
                  else
                    ['python2-libvirt-python']
                  end
    }
  end
end
