# frozen_string_literal: true

# sockets_admin_spec.rb -- Libvirt sockets InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

control 'Libvirt admin socket' do
  title 'must not exist'

  describe libvirt_socket_admin do
    it { should_not exist }
  end
end
