class UserDetail < ApplicationRecord
    belongs_to :user 
    validates_uniqueness_of :user_id
    validates :first_name, :last_name, :bank_account_no, presence: true
    validates :swift_no, :phone_no, numericality: true
end
