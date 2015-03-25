require 'bcrypt'
module AuthApi
  class Engine < ::Rails::Engine
    isolate_namespace AuthApi
  end
end
