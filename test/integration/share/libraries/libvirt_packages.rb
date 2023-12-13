# frozen_string_literal: true

# libvirt.rb -- Libvirt InSpec resources
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

# rubocop:disable Metrics/ClassLength
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
    packages.merge!(build_os_name_packages)
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

  def build_os_name_packages
    # osfamily.yaml / osmap.yaml
    case inspec.system.platform[:name]
    when 'centos', 'almalinux', 'rockylinux'
      build_centos_packages

    when 'ubuntu'
      build_ubuntu_packages

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
      'qemu' => ['qemu-system-x86'],
      'extra' => %w[libguestfs0 libguestfs-tools gnutls-bin],
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
      'python' => build_suse_python_package
    }
  end

  def build_suse_python_package
    case inspec.system.platform[:release]
    when 'tumbleweed'
      ['python38-libvirt-python']
    else
      if inspec.salt_minion.python3?
        ['python3-libvirt-python']
      else
        ['python2-libvirt-python']
      end
    end
  end

  def build_centos_packages
    case inspec.system.platform[:release]
    when /^7/
      if inspec.salt_minion.python3?
        { 'python' => [] }
      else
        { 'python' => ['libvirt-python'] }
      end
    else
      # Only python3 since CentOS 8
      { 'python' => ['python3-libvirt'] }
    end
  end

  def build_ubuntu_packages
    case inspec.system.platform[:release]
    when /^16/
      { 'libvirt' => ['libvirt-bin'] }
    else
      {}
    end
  end
end
# rubocop:enable Metrics/ClassLength
