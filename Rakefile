require 'rubygems'
require 'bundler/setup'
require 'fileutils'
require 'colorize'

class Setup

  def initialize
    ensure_tmp_dir
  end

  private

  def ensure_tmp_dir
    Dir.mkdir('tmp') unless File.exists?('tmp')
  end
end

setup = Setup.new

scripts = []

TMP_DIR = File.expand_path('tmp')
FILES_DIR = File.expand_path('files')

Dir.foreach('files') do |file_name|
  setup_dir = File.join(FILES_DIR, file_name)

  if File.directory?(setup_dir) and not file_name =~ /^\./
    scripts << file_name

    setup_script = File.join(setup_dir, 'setup.rb')

    if File.exist?(setup_script)
      task file_name do
        require setup_script

        Dir.chdir(setup_dir)

        module_name = file_name.gsub!(/^[a-z]|_+[a-z]/) { |a| a.upcase }.gsub('_', '')

        puts "Running setup script for #{file_name}...".green
        updater = eval(module_name).new(tmp_dir: TMP_DIR)
        updater.setup
        #updater.after rescue
        puts '... done'.green
      end
    else
      puts "Setup script for #{file_name} is not found".yellow
    end
  end
end

# `rake update` will update all
task default: scripts do; end
