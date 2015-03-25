  require_dependency "auth_api/application_controller"

module AuthApi
  class AuthController < ApplicationController
    # POST /register
    # params: name, email, password
    def register
      @user = User.new(require_params)
      if @user.save
        render json: {message: @user, success: true}, status: 201
      else
        render json: {message: @user.errors.full_messages, success: false}, status: :ok
      end
    end

    # POST /authenticate
    # params: email, password
    def authenticate
      if @user = User.authenticate(params[:email], params[:password])
        render json: {message: @user, success: true}, status: 200
      else
        render json: {message: "Authentication failed", success: false}, status: :ok
      end
    end

    private
    def require_params
      params.permit(:name, :password, :email)
    end
  end
end
