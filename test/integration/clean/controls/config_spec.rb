# frozen_string_literal: true

# config_spec.rb -- Libvirt configuration InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

control 'Libvirt configuration' do
  title 'the configuration files must not exist'

  describe libvirt.daemon_config_file do
    it { should_not exist }
  end

  describe file('/etc/libvirt/libvirtd.conf') do
    it { should_not exist }
  end

end
