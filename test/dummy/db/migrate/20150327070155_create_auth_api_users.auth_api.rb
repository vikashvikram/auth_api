# This migration comes from auth_api (originally 20150325044811)
class CreateAuthApiUsers < ActiveRecord::Migration
  def change
    create_table :auth_api_users do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :password_salt

      t.timestamps null: false
    end
  end
end
