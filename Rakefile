require 'rubygems'
require 'bundler/setup'
require 'fileutils'
require 'yaml'
require 'erubis'

module GitHub
  def self.clone_or_update(git, dir)
    if File.exists?(dir)
      last_dir = Dir.pwd
      Dir.chdir dir
      system "git pull origin master"
      Dir.chdir last_dir
    else
      system "git clone #{git} #{dir}"
    end
  end

  def self.name(git)
    git.match(/\/([^\/]+)\.git$/).captures.first
  end
end

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

       Dir.chdir update_dir

       module_name = file_name.gsub!(/^[a-z]|_+[a-z]/) { |a| a.upcase }.gsub('_', '')
       updater = eval(module_name).new
       updater.perform
       #updater.after rescue
     end
   end

 end
end

# Create tmp dir
Dir.mkdir('tmp') unless File.exists?('tmp')

# `rake update` will update all
task :update => scripts do; end
