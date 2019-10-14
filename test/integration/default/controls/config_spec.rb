# frozen_string_literal: true

# config_spec.rb -- Libvirt configuration InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

params = {
  'listen_tls' => '0',
  'listen_tcp' => '0',
  'tls_port' => '16514',
  'tcp_port' => '16509',
  'listen_addr' => '0.0.0.0',
  'unix_sock_group' => 'root',
  'unix_sock_ro_perms' => '0777',
  'unix_sock_rw_perms' => '0770',
  'auth_unix_ro' => 'none',
  'auth_unix_rw' => 'none',
  'auth_tcp' => 'none'
}

control 'Libvirt configuration' do
  title 'verify applied configuration'

  describe libvirt.daemon_config_file do
    it { should exist }
    its('content') { should match(/This\sfile\sis\smanaged\sby\sSalt/) }
  end

  describe file('/etc/libvirt/libvirtd.conf') do
    it { should exist }
    its('content') { should match(/This\sfile\sis\smanaged\sby\sSalt/) }
  end

  parse_options = {
    # Value can be surrounded by quotes, or not
    assignment_regex: /^\s*([^=]*?)\s*=\s*['"]?(.*?)['"]?\s*$/
  }

  describe parse_config_file('/etc/libvirt/libvirtd.conf', parse_options) do
    params.each do |param, value|
      its(param) { should eq value }
    end
  end
end
