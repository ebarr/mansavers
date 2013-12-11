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
      t.string :small_gift_name
      t.string :small_gift_price
      t.string :small_gift_image
      t.string :medium_gift_name
      t.string :medium_gift_price
      t.string :medium_gift_image
      t.string :large_gift_name
      t.string :large_gift_price
      t.string :large_gift_image
    end
  end
end
