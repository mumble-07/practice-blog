module Rawg
  class Client
    def self.create_roles
      response = Request.call('get', '/creator-roles')
    end
  end
end