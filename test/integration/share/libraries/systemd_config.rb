# frozen_string_literal: true

# systemd_config.rb -- InSpec resource for systemd service configuration
# Author: Daniel Dehennin <daniel.dehennin@baby-gnu.org>
# Copyright (C) 2020 Daniel Dehennin <daniel.dehennin@baby-gnu.org>

class SystemdConfigResource < Inspec.resource(1)
  name 'systemd_config'

  supports platform_name: 'debian'
  supports platform_name: 'ubuntu'
  supports platform_name: 'centos'
  supports platform_name: 'fedora'
  supports platform_name: 'opensuse'
  supports platform_name: 'almalinux'
  supports platform_name: 'rocky'

  def initialize(service_name)
    super()
    @service_name = service_name
    @service_config = read_systemd_show
  end

  def enabled?
    @service_config.send('UnitFileState') == 'enabled'
  end

  def active?
    @service_config.send('ActiveState') == 'active'
  end

  def test
    @service_config.methods
  end

  def config(param)
    @service_config.send(param)
  end

  def read_systemd_show
    cmd_string = "systemctl show #{@service_name}"
    cmd = inspec.command(cmd_string)

    unless cmd.exit_status.zero?
      raise Inspec::Exceptions::ResourceSkipped,
            "Error running '#{cmd_string}': #{cmd.stderr}"
    end

    parse_options = {
      assignment_regex: /^\s*([^=]*?)\s*=\s*(.*?)\s*$/
    }
    inspec.parse_config(cmd.stdout.strip, parse_options)
  end
end
