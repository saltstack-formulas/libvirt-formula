# coding: utf-8
#
# sockets_rw_spec.rb -- Libvirt read/write socket InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright © 2019 Pôle de Compétences Logiciels Libres <eole@ac-dijon.fr>
#
control 'Libvirt read/write socket' do
  title 'must not exist'

  describe libvirt_socket_rw do
    it { should_not exist }
  end

end
