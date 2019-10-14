# frozen_string_literal: true

# sockets_ro_spec.rb -- Libvirt read only socket InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

control 'Libvirt read only socket' do
  title 'must not exist'

  describe libvirt_socket_ro do
    it { should_not exist }
  end

end
