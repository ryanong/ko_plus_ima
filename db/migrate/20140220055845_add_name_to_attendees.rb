class AddNameToAttendees < ActiveRecord::Migration
  def change
    add_column :attendees, :first_name, :string
    add_column :attendees, :last_name, :string
    add_column :attendees, :email, :string
    add_column :attendees, :guests, :integer
  end
end
