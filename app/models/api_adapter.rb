class ApiAdapter

  include HTTParty

  base_uri 'https://api.edamam.com'

  def initialize
    @api_ID = ENV["EDAMAM_API_ID"] 
    @api_Key = ENV["EDAMAM_API_KEY"] 
  end

  def search(search_string)
    response = self.class.get("/search?", 
                   { query: 
                     { 
                       q: search_string, 
                       api_id: @api_ID,
                       api_key: @api_Key
                     }
                   })
    
    response['hits'].map { |result| result['recipe'] }
  end

end

