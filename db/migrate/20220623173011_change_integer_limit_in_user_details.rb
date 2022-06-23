class ChangeIntegerLimitInUserDetails < ActiveRecord::Migration[6.1]
  def change
    change_column :user_details, :phone_no, :integer, limit: 8
  end
end
