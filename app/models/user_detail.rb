class UserDetail < ApplicationRecord
    belongs_to :user
    validates :bank_account_no, presence: true
    validates_uniqueness_of :user_id
    
end
