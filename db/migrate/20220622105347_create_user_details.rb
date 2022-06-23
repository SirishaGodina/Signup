class CreateUserDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :bank_account_no
      t.string :ifsc
      t.integer :swift_no
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
