# coding: utf-8
#
# config_spec.rb -- Libvirt configuration InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright © 2019 Pôle de Compétences Logiciels Libres <eole@ac-dijon.fr>
#
control 'Libvirt configuration' do
  title 'verify applied configuration'

  describe file('/etc/sysconfig/libvirtd') do
    it { should exist }
    its('content') { should match %r{This\sfile\sis\smanaged\sby\sSalt} }
  end

  describe file('/etc/libvirt/libvirtd.conf') do
    it { should exist }
    its('content') { should match %r{This\sfile\sis\smanaged\sby\sSalt} }
  end

end
