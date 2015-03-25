module AuthApi
  class User < ActiveRecord::Base
    ########################3VALIDATIONS###########################
    validates :email, presence:true, uniqueness: true
    validates :name, presence: true

    attr_accessor :password
    before_save :encrypt_password
    
    def encrypt_password
      self.password_salt = ::BCrypt::Engine.generate_salt
      self.password_hash = ::BCrypt::Engine.hash_secret(password, password_salt)
    end

    def self.authenticate(email, password)
      user = where(email: email).first
      user and user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt) ? user : nil
    end

  end
end
