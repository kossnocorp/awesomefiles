module Dotjs
  def self.update!
    dotjs_dir = File.expand_path('~/.js')

    File.delete(dotjs_dir) if File.symlink?(dotjs_dir)
    File.symlink(File.expand_path('scripts'), dotjs_dir)
    File.chmod(0755, dotjs_dir)
  end
end
