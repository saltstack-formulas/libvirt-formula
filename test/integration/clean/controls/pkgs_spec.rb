# frozen_string_literal: true

# pkgs_spec.rb -- Libvirt packages InSpec control
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

packages = libvirt.packages

control 'Libvirt packages' do
  title 'must be uninstalled'

  packages.values.flatten.each do |pkg|
    describe package(pkg) do
      it { should_not be_installed }
    end
  end
end
