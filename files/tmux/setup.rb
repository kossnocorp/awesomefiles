class Tmux

  def initialize(options = {}); end

  def setup
    symlink_tmux_conf
  end

  def symlink_tmux_conf
    symlink('tmux.conf', '~/.tmux.conf')
  end

  private

  def symlink(source, target)
    source_path = File.expand_path(source)
    target_path = File.expand_path(target)
    File.delete(target_path) if File.symlink?(target_path)
    File.symlink(source_path, target_path)
  end
end
