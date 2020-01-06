# frozen_string_literal: true

# sockets_admin_spec.rb -- Libvirt sockets InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

control 'Libvirt admin socket' do
  title 'should exist with proper permissions'

  describe libvirt_socket_admin do
    it { should exist }
    its('type') { should eq :socket }
    its('owner') { should eq libvirt_socket_admin.config_owner }
    its('group') { should eq libvirt_socket_admin.config_group }
    its('mode') { should cmp libvirt_socket_admin.config_mode }
  end
end
