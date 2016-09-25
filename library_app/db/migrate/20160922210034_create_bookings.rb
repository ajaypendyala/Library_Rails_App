class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :User, foreign_key: true
      t.references :Room, foreign_key: true
      t.datetime :start_time

      t.timestamps
    end
  end
end
