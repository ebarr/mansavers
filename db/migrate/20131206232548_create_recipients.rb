class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.date :anniversary
      t.string :other_holidays
      t.string :relationship
      t.boolean :children
    end
  end
end
