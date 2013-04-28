module Zsh
  def self.update!
    zshrc = File.expand_path('~/.zshrc')

    File.delete(zshrc) if File.symlink?(zshrc)
    File.symlink(File.expand_path('zshrc.zsh'), zshrc)

    omz_custom = File.expand_path('~/.oh-my-zsh/custom')

    File.delete(omz_custom) if File.symlink?(omz_custom)
    File.symlink(File.expand_path('config'), omz_custom)
  end
end
