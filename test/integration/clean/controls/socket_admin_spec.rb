# coding: utf-8
#
# sockets_admin_spec.rb -- Libvirt sockets InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright © 2019 Pôle de Compétences Logiciels Libres <eole@ac-dijon.fr>
#
control 'Libvirt admin socket' do
  title 'must not exist'

  describe libvirt_socket_admin do
    it { should_not exist }
  end
end
