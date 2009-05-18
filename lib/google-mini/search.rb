class Search
  include HTTParty
  attr_reader :results, :suggestions, :synonyms, :keymatches
  
  # takes a response hash from a google mini query
  def initialize(url, options)
    @results = []
    @suggestions = []
    @synonyms = []
    @keymatches = []
    
    # ask the google mini for search results
    response = Search.get(url)
    
    # results
    if response['GSP'].has_key?('RES')
      if response['GSP']['RES']['R'].kind_of?(Array)
        response['GSP']['RES']['R'].map{ |res| @results << Result.new(res) }
      else
        @results << Result.new(response['GSP']['RES']['R'])
      end
    end
    
    # suggestions
    if response['GSP'].has_key?('Spelling')
      if response['GSP']['Spelling'].kind_of?(Array)
        response['GSP']['Spelling'].map{ |sp| sp.map{ |k, v| @suggestions << v } }
      else
        response['GSP']['Spelling'].map{ |k,v| @suggestions << v }
      end
    end
    
    # synonyms
    if response['GSP'].has_key?('Synonyms')
      if response['GSP']['Synonyms'].kind_of?(Array)
        response['GSP']['Synonyms'].map{ |syn| syn.map{ |k, v| @synonyms << v } }
      else
        response['GSP']['Synonyms'].map{ |k,v| @synonyms << v }
      end
    end
    
    # keymatches
    if response['GSP'].has_key?('GM')
      if response['GSP']['GM'].kind_of?(Array)
        response['GSP']['GM'].each do |gm|
          @keymatches << Keymatch.new(gm)
        end
      else
        @keymatches << Keymatch.new(response['GSP']['GM'])
      end
    end
    
  end
  
end