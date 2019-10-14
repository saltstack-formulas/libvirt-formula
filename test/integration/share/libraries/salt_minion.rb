# frozen_string_literal: true

# python_version.rb -- Python version InSpec resources
# Author: Daniel Dehennin <daniel.dehennin@ac-dijon.fr>
# Copyright (C) 2019 Pole de Competences Logiciels Libres <eole@ac-dijon.fr>

class SaltMinionResource < Inspec.resource(1)
  name 'salt_minion'

  supports platform_name: 'debian'
  supports platform_name: 'ubuntu'
  supports platform_name: 'centos'
  supports platform_name: 'fedora'
  supports platform_name: 'opensuse'

  def initialize
    @salt_python_version = try_python_import_salt
    @version_string = version_string
  end

  def version
    @version_string
  end

  def python3?
    @version_string >= '3'
  end

  def python2?
    @version_string >= '2' && @version_string < '3'
  end

  def version_string
    cmd = inspec.command("python#{@salt_python_version} --version")

    if cmd.exit_status != 0
      raise Inspec::Exceptions::ResourceSkipped,
            "Error running 'python#{@salt_python_version} --version': #{cmd.stderr}"
    end

    if !cmd.stdout.empty?
      cmd.stdout.split[1]
    else
      cmd.stderr.split[1]
    end
  end

  def try_python_import_salt
    return 3 if try_python3_import_salt.zero?
    return 2 if try_python2_import_salt.zero?

    raise Inspec::Exceptions::ResourceSkipped,
          'Unable to import salt from python2 or python3'
  end

  def try_python3_import_salt
    inspec.command('python3 -c "import salt"').exit_status
  end

  def try_python2_import_salt
    inspec.command('python2 -c "import salt"').exit_status
  end
end
