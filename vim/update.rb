require 'digest/sha1'

BUNDLE_DIR = File.join(TMP_DIR, 'vim', 'bundle')
FileUtils.mkdir_p(BUNDLE_DIR) unless File.exists?(BUNDLE_DIR)

module Vim
  def self.update!
    # Symlink ~/.vimrc
    vimrc = File.expand_path('~/.vimrc')

    File.delete(vimrc) if File.symlink?(vimrc)
    File.symlink(File.expand_path('vimrc.vim'), vimrc)

    # Synlink ~/.vim dir
    vim_dir = File.expand_path('~/.vim')
    File.delete(vim_dir) if File.symlink?(vim_dir)

    vim_base = File.join(TMP_DIR, 'vim', 'base')
    FileUtils.rm_rf(vim_base) if File.exists?(vim_base)
    Dir.mkdir(vim_base)

    File.symlink(vim_base, vim_dir)

    # Symlink Pathogen

    pathogen_git = 'https://github.com/tpope/vim-pathogen.git'

    Vim.clone_or_update pathogen_git

    File.symlink( File.join(Vim.bundle_path(pathogen_git), 'autoload'), File.expand_path('~/.vim/autoload') )

    # Update all plugins

    bundle_dir = File.join(vim_base, 'bundle')
    Dir.mkdir bundle_dir

    YAML.load_file('plugins.yml').each do |plugin|
      Vim.clone_or_update plugin
      File.symlink( Vim.bundle_path(plugin), File.join( bundle_dir, GitHub.name(plugin) ) )
    end

    # Symlink snippets

    File.symlink( File.expand_path('snippets'), File.join(vim_base, 'snippets') )

    Vim.after
  end

  def self.clone_or_update(git)
    GitHub.clone_or_update( git, Vim.bundle_path(git) )
  end

  def self.bundle_path(git)
    File.join( BUNDLE_DIR, GitHub.name(git) )
  end

  def self.after
    `mkdir -p ~/.vim/bundle/coffeetags/ftplugin/coffee/`
    `bundle exec coffeetags --include-vars --vim-conf > ~/.vim/bundle/coffeetags/ftplugin/coffee/tagbar-coffee.vim`
    `bundle exec coffeetags --vim-conf > ~/.vim/bundle/coffeetags/ftplugin/coffee/tagbar-coffee.vim`
  end
end
