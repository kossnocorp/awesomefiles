require 'rubygems'
require 'bundler/setup'
require 'fileutils'
require 'yaml'
require 'erubis'
require 'colorize'

scripts = []

BASE_DIR = File.expand_path('.')
TMP_DIR  = File.expand_path('tmp')
CONFIG   = YAML.load_file('config.yml')

Dir.foreach('.') do |file_name|
 if File.directory?(file_name) and not file_name =~ /^\./
   scripts << file_name

   update_dir    = File.join(BASE_DIR, file_name)
   update_script = File.join(update_dir, 'update.rb')

   if File.exist?(update_script)
     task file_name do
       require update_script

       Dir.chdir(update_dir)

       module_name = file_name.gsub!(/^[a-z]|_+[a-z]/) { |a| a.upcase }.gsub('_', '')

       puts "Running #{module_name}.setup...".green
       updater = eval(module_name).new
       updater.setup
       #updater.after rescue
       puts 'Done'.green
     end
   end

 end
end

# Create tmp dir
Dir.mkdir('tmp') unless File.exists?('tmp')

# `rake update` will update all
task :update => scripts do; end
