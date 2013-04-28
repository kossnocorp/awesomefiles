module Tmux
  def self.update!
    conf = File.expand_path('~/.tmux.conf')

    File.delete(conf) if File.symlink?(conf)
    File.symlink(File.expand_path('tmux.conf'), conf)
  end
end
