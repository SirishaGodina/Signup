class User < ApplicationRecord
    has_secure_password
    has_one :user_detail
    validates :email, :password, presence: true
    validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ 
    validates :password, length: { minimum: 6 }
end
