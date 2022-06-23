class User < ApplicationRecord
    has_secure_password
    has_one :user_detail
    validates :email, :password_confirmation, presence: true
    
end
