module Rawg
  class Request

    TOKEN = 'f30e1a16559646689d18a4ac521a215f'
    BASE_URL = 'https://api.rawg.io/api'

    def self.call(http_method, endpoint)
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}?key=#{TOKEN}",
        headers: {'Content-Type' => 'application/json'}
      )

      { code: result.code, status: 'Success', data: JSON.parse(result.body) }
      rescue RestClient::ExceptionWithResponse => error
      { code: error.http_code, status: error.message, data: Errors.map(error.http_code) }
    end
  end  
end