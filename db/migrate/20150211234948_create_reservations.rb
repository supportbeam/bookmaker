class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :party_size
      t.date :date
      t.time :time
      t.belongs_to :user, index: true
      t.belongs_to :restaurant, index: true

      t.timestamps null: false
    end
    add_foreign_key :reservations, :users
    add_foreign_key :reservations, :restaurants
  end
end
