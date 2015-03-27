require 'test_helper'
require 'generators/auth_api/auth_api_generator'

module AuthApi
  class AuthApiGeneratorTest < Rails::Generators::TestCase
    tests AuthApiGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
