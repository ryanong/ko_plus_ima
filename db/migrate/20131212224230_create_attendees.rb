class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.boolean :dinner_attendee
      t.string :dinner
      t.string :welcome_drinks
      t.string :wedding
      t.string :transportation
      t.string :dietary_restrictions
      t.string :lodging
      t.string :favorite_drink
      t.string :sunday_breakfast

      t.timestamps
    end
  end
end
