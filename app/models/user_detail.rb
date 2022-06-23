class UserDetail < ApplicationRecord
    belongs_to :user
    validates :bank_account_no, presence: true    
    validates_uniqueness_of :user_id
    validates :first_name, :last_name, bank_account_no, presence: true
    validates :phone_no, swift_no, numericality: true
end
