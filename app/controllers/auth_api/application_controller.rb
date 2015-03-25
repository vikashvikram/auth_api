module AuthApi
  class ApplicationController < ActionController::Base
    rescue_from Exception do |exception|
      render json: {message: exception.message, success: false}, status: :internal_server_error
    end
  end
end
