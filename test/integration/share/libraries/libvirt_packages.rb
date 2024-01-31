# frozen_string_literal: true

# libvirt.rb -- Libvirt InSpec resources
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

class LibvirtPackagesResource < Inspec.resource(1)
  name 'libvirt_packages'

  supports platform_name: 'debian'
  supports platform_name: 'ubuntu'
  supports platform_name: 'centos'
  supports platform_name: 'fedora'
  supports platform_name: 'opensuse'
  supports platform_name: 'almalinux'
  supports platform_name: 'rocky'

  attr_reader :packages

  def initialize
    super
    @packages = build_packages
  end

  def build_packages
    # defaults.yaml
    packages = build_default_packages

    packages.merge!(build_os_family_packages)
  end

  def build_os_family_packages
    # osfamily.yaml / osmap.yaml
    case inspec.system.platform[:family]
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
      'extra' => ['libguestfs']
    }
  end

  def build_debian_packages
    {
      'libvirt' => ['libvirt-daemon-system'],
      'qemu' => ['qemu-system-x86'],
      'extra' => %w[libguestfs0 libguestfs-tools gnutls-bin]
    }
  end

  def build_suse_packages
    {
      'libvirt' => ['libvirt-daemon-qemu'],
      'extra' => ['libguestfs0']
    }
  end
end
