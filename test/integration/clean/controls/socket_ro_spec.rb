# coding: utf-8
#
# sockets_ro_spec.rb -- Libvirt read only socket InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright © 2019 Pôle de Compétences Logiciels Libres <eole@ac-dijon.fr>
#
control 'Libvirt read only socket' do
  title 'must not exist'

  describe libvirt_socket_ro do
    it { should_not exist }
  end

end
