#
# service_spec.rb -- Libvirt service InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright © 2019 Pôle de Compétences Logiciels Libres <eole@ac-dijon.fr>
#
control 'Libvirt service' do
  title 'must be stopped and disabled'

  describe service('libvirtd') do
    it { should_not be_enabled }
    it { should_not be_running }
  end
end
