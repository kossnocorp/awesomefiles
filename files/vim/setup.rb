require 'fileutils'

class Vim

  def initialize(options = {})
    @tmp_dir = options[:tmp_dir]
  end

  def setup
    ensure_source_dirs

    symlink_vimrc
    symlink_vim_dir
    symlink_bundle_dir
    symlink_config
    symlink_snippets
  end

  def ensure_source_dirs
    [base_dir_path, tmp_dir_expand('bundle')].each do |source_dir|
      unless Dir.exists?(source_dir)
        FileUtils::mkdir_p(source_dir) 
      end
    end
  end

  def symlink_vimrc
    symlink('vimrc.vim', '~/.vimrc')
  end

  def symlink_vim_dir
    symlink(base_dir_path, '~/.vim')
  end

  def symlink_bundle_dir
    symlink(tmp_dir_expand('bundle'), base_dir_expand('bundle'))
  end

  def symlink_config
    symlink_to_base('config')
  end

  def symlink_snippets
    symlink_to_base('ultisnips')
  end

  def after
  end

  private

  def symlink_to_base(path)
    symlink(path, base_dir_expand(path))
  end

  def symlink(source, target)
    source_path = File.expand_path(source)
    target_path = File.expand_path(target)
    File.delete(target_path) if File.symlink?(target_path)
    File.symlink(source_path, target_path)
  end

  def base_dir_expand(path)
    File.join(base_dir_path, path)
  end

  def base_dir_path
    tmp_dir_expand('base')
  end

  def tmp_dir_expand(path)
    File.join(tmp_dir_path, path)
  end

  def tmp_dir_path
    File.join(@tmp_dir, 'vim')
  end
end
