module GoogleMini
  
  
  class << self
    attr_accessor :search_url
    
    def search(query, options={})
      raise Exception.new("You must define a search url.") if @search_url.blank?
      url = @search_url + "&q=#{url_escape(query)}"
      Search.new(url, options)
    end
    
    def url_escape(string)
      string.gsub(/([^ a-zA-Z0-9_.-]+)/n) do
        '%' + $1.unpack('H2' * $1.size).join('%').upcase
      end.tr(' ', '+')
    end
  end
  
end