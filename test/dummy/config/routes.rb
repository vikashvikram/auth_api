Rails.application.routes.draw do

  mount AuthApi::Engine => "/auth_api"
end
