class Result
  
  attr_reader :number, :title, :url, :description, :size
  
  def initialize(options)
    @number = options['N']
    @title = options['T']
    @url = options['U']
    @description = options['S']
    @size = options['HAS']['C']
  end
  
end