# frozen_string_literal: true
#
# sockets_rw_spec.rb -- Libvirt read/write socket InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>
#
control 'Libvirt read/write socket' do
  title 'should exist with proper permissions'

  describe libvirt_socket_rw do
    it { should exist }
    its('type') { should eq :socket }
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
    its('mode') { should cmp '0770' }
  end

end
