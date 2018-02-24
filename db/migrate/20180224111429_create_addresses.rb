class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :name
      t.text :line1
      t.text :lin2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip

      t.timestamps
    end
  end
end
