class AddMultipleBookingOptionToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :multiple_bookings_allowed, :boolean, default: false
  end
end
