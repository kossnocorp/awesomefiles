#require 'digest/sha1'

#BUNDLE_DIR = File.join(TMP_DIR, 'vim', 'bundle')
#FileUtils.mkdir_p(BUNDLE_DIR) unless File.exists?(BUNDLE_DIR)

class Vim
  def perform
    #install_vimrc
    #create_vim_dir

    install_snippets
  end

  def install_vimrc
    vimrc = File.expand_path('~/.vimrc')

    File.delete(vimrc) if File.symlink?(vimrc)
    File.symlink(File.expand_path('vimrc.vim'), vimrc)
  end

  def create_vim_dir
    Dir.create
  end

  def install_snippets
    target_dir = File.expand_path('~/.vim/snippets')
    File.delete(target_dir) if File.symlink?(target_dir)

    File.symlink(File.expand_path('snippets'), target_dir)
  end

  def after
  end

private

  def base_dir
    vim_base = File.join(TMP_DIR, 'vim', 'base')
    FileUtils.rm_rf(vim_base) if File.exists?(vim_base)
    Dir.mkdir(vim_base)
  end
end
