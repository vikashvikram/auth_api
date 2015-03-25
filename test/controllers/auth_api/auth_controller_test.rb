require 'test_helper'

module AuthApi
  class AuthControllerTest < ActionController::TestCase
    test "should get register" do
      get :register
      assert_response :success
    end

    test "should get authenticate" do
      get :authenticate
      assert_response :success
    end

  end
end
