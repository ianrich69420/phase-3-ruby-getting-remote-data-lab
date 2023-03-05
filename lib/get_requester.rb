require 'open-uri'
require 'json'


# Write your code here
class GetRequester
    def initialize(url)
        @url = url unless url.class != String
    end

    def get_response_body
        URI.parse(@url).open.string
    end
    
    def parse_json
        JSON.parse(get_response_body)
    end
end
