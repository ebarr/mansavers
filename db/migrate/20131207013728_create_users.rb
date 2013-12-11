class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :recipient_first_name
      t.string :recipient_last_name
      t.string :username
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :gift_name
      t.integer :gift_price
      t.string :gift_image
    end
  end
end
