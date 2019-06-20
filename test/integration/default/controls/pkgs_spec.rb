# coding: utf-8
#
# pkgs_spec.rb -- Libvirt packages InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright © 2019 Pôle de Compétences Logiciels Libres <eole@ac-dijon.fr>
#
packages = libvirt.packages

control 'Libvirt packages' do
  title 'verify installed packages'

  packages.each do | service, pkgs |
    pkgs.each do | pkg |
      describe package(pkg) do
        it { should be_installed }
      end
    end
  end

end
