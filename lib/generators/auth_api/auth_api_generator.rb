class AuthApiGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  route "mount AuthApi::Engine => '/auth_api'"

  rake "auth_api:install:migrations"
end
