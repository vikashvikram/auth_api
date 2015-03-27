class AuthApiGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def add_routes
    route "mount AuthApi::Engine => '/auth_api'"
  end

  def copy_migrations
    rake "auth_api:install:migrations"
  end
end
