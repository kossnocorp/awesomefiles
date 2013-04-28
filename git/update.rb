module Git
  def self.update!
    erb = Erubis::Eruby.new( File.read('gitconfig.erb') )

    File.open( File.expand_path('~/.gitconfig'), 'w' ).write(
      erb.result( CONFIG['git'] )
    )
  end
end
