class AddCommentsToAttendees < ActiveRecord::Migration
  def change
    add_column :attendees, :comments, :text
  end
end
