# frozen_string_literal: true

module Rawg
  class Request
    TOKEN = 'f30e1a16559646689d18a4ac521a215f1'
    BASE_URL = 'https://api.rawg.io/api'

    def self.call(http_method, endpoint)
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}?key=#{TOKEN}",
        headers: { 'Content-Type' => 'application/json' }
      )

      { code: result.code, status: 'Success', data: JSON.parse(result.body) }
    rescue RestClient::ExceptionWithResponse => e
      { code: e.http_code, status: e.message, data: Errors.map(e.http_code) }
    end
  end
end
