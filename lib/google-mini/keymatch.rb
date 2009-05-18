class Keymatch
  attr_reader :title, :url
  
  def initialize(options)
    @title = options['GD']
    @url = options['GL']
  end
end