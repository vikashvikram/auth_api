$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "auth_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "auth_api"
  s.version     = AuthApi::VERSION
  s.authors     = ["Vikash Vikram"]
  s.email       = ["vikashvikram@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AuthApi."
  s.description = "TODO: Description of AuthApi."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency "bcrypt", "~> 3.1.7"

  s.add_development_dependency "sqlite3"
end
