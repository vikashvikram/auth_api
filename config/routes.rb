AuthApi::Engine.routes.draw do
  post 'auth/register'

  post 'auth/authenticate'
end
