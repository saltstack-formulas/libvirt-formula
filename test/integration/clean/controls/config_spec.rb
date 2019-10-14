#
# config_spec.rb -- Libvirt configuration InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright © 2019 Pôle de Compétences Logiciels Libres <eole@ac-dijon.fr>
#

control 'Libvirt configuration' do
  title 'the configuration files must not exist'

  describe libvirt.daemon_config_file do
    it { should_not exist }
  end

  describe file('/etc/libvirt/libvirtd.conf') do
    it { should_not exist }
  end

end
